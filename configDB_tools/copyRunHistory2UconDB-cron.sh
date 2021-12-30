#!/bin/bash
#Instructionshttps://sbnsoftware.github.io/sbn_online_wiki/CopyRunHistory2UconDB_cron

printf '\033]2;Copying run records from ArtdaqDB to UconDB\a'

unset PRODUCTS
export PRODUCTS_DIR=/daq/software/products

source ${PRODUCTS_DIR}/setup

export ARTDAQ_DATABASE_TOOLS_ENV=${ARTDAQ_DATABASE_TOOLS_ENV:-"${HOME}/.artdaq_database_tools.env"}
[[ -f ${ARTDAQ_DATABASE_TOOLS_ENV} ]] || { [[ -L ${ARTDAQ_DATABASE_TOOLS_ENV} ]] || echo "Error: ${ARTDAQ_DATABASE_TOOLS_ENV} is missing."; exit 2; }
set -o allexport; source ${ARTDAQ_DATABASE_TOOLS_ENV}; source ${ARTDAQ_DATABASE_TOOLS_ENV}; set +o allexport
export ARTDAQ_DATABASE_SETUP_COMMAND=${ARTDAQ_DATABASE_SETUP_COMMAND:-"setup artdaq_database v1_05_08 -q ${SBNDAQ_QUALS}"}
eval "$ARTDAQ_DATABASE_SETUP_COMMAND"
(( $? == 0 )) || { echo "Error: Failed running \"${ARTDAQ_DATABASE_SETUP_COMMAND}\""; exit 2; }
pqxx_quals="$(ups active |grep artdaq_database |grep -Eo '\-q [[:alnum:]|:]*' |cut -d ' ' -f2 |tr -s ':' '\n'|grep -vE '^s[[:digit:]]+'|tr '\n' ':')$(ups active |grep python |grep -Eo 'v[[:alnum:]|_]*' |sed 's/v/p/g;s/_//g')"
pqxx_version=$(ups list -aK+ pqxx  -q ${pqxx_quals} |grep -Eo 'v[[:alnum:]|_]*' |sort -u |tail -1)
#echo "pqxx_version=${pqxx_version}, pqxx_quals=${pqxx_quals}"
export PQXX_SETUP_COMMAND="setup pqxx ${pqxx_version} -q ${pqxx_quals}"
eval "$PQXX_SETUP_COMMAND"
(( $? == 0 )) || { echo "Error: Failed running \"${PQXX_SETUP_COMMAND}\""; exit 2; }
set -o allexport; source ${ARTDAQ_DATABASE_TOOLS_ENV}; source ${ARTDAQ_DATABASE_TOOLS_ENV}; set +o allexport
export ARTDAQ_DATABASE_WORKDIR=${ARTDAQ_DATABASE_WORKDIR:-"${HOME}/work-db-v4-dir"}
[[ -d ${ARTDAQ_DATABASE_WORKDIR} ]] ||  mkdir -p ${ARTDAQ_DATABASE_WORKDIR}
export ARTDAQ_DATABASE_URI=${ARTDAQ_DATABASE_URI:-"filesystemdb://${ARTDAQ_DATABASE_WORKDIR}/filesystemdb/test_db"}
export ARTDAQ_DATABASE_CONFDIR=${ARTDAQ_DATABASE_CONFDIR:-"/daq/software/database/config"}


export BATCH_SIZE=${BATCH_SIZE:-50}
export DAQ_RUN_RECORDS_DIR=${DAQ_RUN_RECORDS_DIR:-"/daq/run_records"}
export DBTOOLS_LOG_DIR=${DBTOOLS_LOG_DIR:-"/daq/log/dbtools"}
export ARTDAQ_DATABASE_CONFDIR=${ARTDAQ_DATABASE_CONFDIR:-"/daq/software/database/config"}
export ONLINE_UCONDB_CLIENT_SOFTWARE=${ONLINE_UCONDB_CLIENT_SOFTWARE:-"https://host/path-to-ucondb-client.tar"}
export ONLINE_UCONDB_URI=${ONLINE_UCONDB_URI:-"https://host1:port1/test_on_ucon_prod/app/data/run_records/configuration/key="}

my_xferarea="${ARTDAQ_DATABASE_WORKDIR}/xfers"
[[ "$ONLINE_UCONDB_URI" =~ "run_records_pending" ]] &&  my_xferarea="${my_xferarea}_pending"

my_xferdir=$(date +"xfer_%b%Y")

#rm -rf $my_xferarea/$my_xferdir

[[ ! -d $my_xferarea/$my_xferdir ]] && mkdir -p $my_xferarea/$my_xferdir
cd $my_xferarea/$my_xferdir


my_pythonvenv=python_virtualenv
my_pythonvenvdir=$my_xferarea/$my_xferdir/$my_pythonvenv
my_pythonbin=$(dirname $(which python3))
my_pythonpath=$PYTHONPATH
unset PYTHONPATH


if [[ ! -d $my_pythonvenvdir ]]; then
  $my_pythonbin/python3 -m venv $my_pythonvenv
  source $my_pythonvenvdir/bin/activate
  my_pythonbin=$(dirname $(which python3))
  $my_pythonbin/python3 -m pip install --upgrade pip --prefix=$my_pythonvenvdir

  cat > ${my_xferarea}/requirements.txt <<REQ_EOF
requests>=2.26.0
psycopg2
REQ_EOF

  $my_pythonbin/python3 -m pip install -r ${my_xferarea}/requirements.txt --prefix=$my_pythonvenvdir
  git clone https://github.com/ivmfnal/ucondb && cd ucondb && echo "PWD=$(pwd)"
  $my_pythonbin/python3  setup.py install --prefix=$my_pythonvenvdir
  $my_pythonbin/python3 -m pip freeze
else
  source $my_pythonvenvdir/bin/activate
fi

cat > ${my_xferarea}/myblobify.py <<BLOB_EOF
#!/bin/env python3

import os, sys, time, subprocess
import urllib3
from ucondb.webapi import UConDBClient

def blobify(run_number):

    # Blob file name
    # TODO: Add directory to beginning of this string if you want blob placed somewhere else.
    # Directory must exist if you do not add code to make it.
    blob_str = 'blob_' + run_number + '.txt'

    # Run conftool and get config name
    config_names = []
    try:
        print ('Getting a list of archived run configurations...')
        output = subprocess.check_output(['conftool.py','getListOfArchivedRunConfigurations',run_number+'/','|','more'])
    except:
        print ('Error caught from conftool.py. Did you setup conftool.py?')
        exit(1)

    for o in output.decode("ascii").split('\n'):
        if run_number + '/' in o:
            config_names.append(o)

    # Check if run configuration(s) found
    if not config_names:
        print ('No configurations found for run ' +  run_number + '.' )
        exit(1)

    # Make the run directory
    # TODO: Add directory to beginning of this string if you want run directory placed somewhere
    # else.
    print ('Creating the run directory...')
    run_dir = run_number
    if not os.path.exists(run_dir):
        os.makedirs(run_dir)
    else:
        print (run_dir + ' directory already exists.')
        exit(1)

    # Check if blob file already exists
    if os.path.isfile(blob_str):
        print (blob_str + ' already exists.')
        exit(1)

    # Get run config files from database
    print ('Exporting run configuration files from database...')
    for config in config_names:
        subprocess.call(['conftool.py','exportArchivedRunConfiguration',config],cwd=run_dir)

    # Fill list of file names
    files = []
    for root, dirs, files in os.walk(run_dir):
        files = [os.path.abspath(os.path.join(root,name)) for name in files]

    # If boot and component files are in file list, move to 1st and 2nd position
    for name in files:
        if 'boot.fcl' in name:
            files.remove(name)
            files.insert(0,name)

    # If there are files, open blob file for writing
    if files:
        print ('Writing blob file...')
        with open(blob_str, 'w') as blob:

            # Write header
            blob.write('Start of Record\nRun Number: ' + run_number + '\nPacked on ' + time.strftime('%b %d %H:%M',time.gmtime()) + ' UTC\n')

            # Add file name with pound signs to see where files begin and find split points for unpacker
            for name in files:
                blob.write('\n#####\n' + name[name.rfind('/')+1:] + ':\n#####\n')
                with open(name, 'r') as f:
                    blob.write(f.read())

            # Write footer
            blob.write('\nEnd of Record\nRun Number: ' + run_number + '\nPacked on ' + time.strftime('%b %d %H:%M',time.gmtime()) + ' UTC\n')

    else:
        print ('Run ' + run_number + ' files were not exported from ArtdaqDB.')
        exit(1)

    # Copy the blob file to UconDB
    # TODO: Change 'test' (and maybe 'configuration') to proper name for production
    print ('Copying blob file to UconDB...')
    client = UConDBClient(server_url="${ONLINE_UCONDB_URI%/data*}",timeout=3,
       username="${ONLINE_UCONDB_WRITER_AUTH%:*}",password="${ONLINE_UCONDB_WRITER_AUTH#*:}")
    print("Server version:", client.version())

    with open(blob_str,'r') as blob:
      try:
        ret_version=client.put(folder_name="$(echo ${ONLINE_UCONDB_URI##*data}|cut -d'/' -f2)",
                               object_name="$(echo ${ONLINE_UCONDB_URI##*data}|cut -d'/' -f3)",
                               data=blob.read(), key=run_number,tags=run_number)
        if ret_version is None:
          print ('UConDBClient returned with error code ' + str(ret_version) + '.')
          exit(1)
        else:
          print ('Success loading ' + str(run_number) + ' to UconDB; version='+ str(ret_version))
          exit(0)
      except Exception as e:
        print(e)
        exit(1)

if __name__ == '__main__':
    urllib3.disable_warnings()
    blobify(sys.argv[1])


BLOB_EOF

export PYTHONPATH=$(dirname $(which conftool.py)):$(echo ${my_pythonpath} | awk -v RS=: -v ORS=: '/site-packages/ {next} {print}'| sed 's/:*$//' )
# "${ONLINE_UCONDB_URI%%app*}app/versions?folder=ucon_prd.$(echo "${ONLINE_UCONDB_URI#*data/}" |cut -d"/" -f1)&object=configuration"

first_run=0
last_run=0

# "${ONLINE_UCONDB_URI%%app*}app/versions?folder=ucon_prd.$(echo "${ONLINE_UCONDB_URI#*data/}" |cut -d"/" -f1)&object=configuration"

while read -r line ; do
  [[ $line =~ ^first_run=.* ]] && first_run=${line#*=}
  [[ $line =~ ^last_run=.* ]] && last_run=${line#*=}
  #echo $line
done < <(
python3 <<PYQEOF
import re
import conftool
import urllib3
from ucondb.webapi import UConDBClient

urllib3.disable_warnings()
ucondb_runs = set()
client = UConDBClient(server_url="${ONLINE_UCONDB_URI%/data*}",timeout=3)
print("Server version:", client.version())
first_run=1
try:
  ucondb_results=client.lookup_versions(folder_name="$(echo ${ONLINE_UCONDB_URI##*data}|cut -d'/' -f2)",object_name="$(echo ${ONLINE_UCONDB_URI##*data}|cut -d'/' -f3)")
  first_run=max(int(o['key']) for o in ucondb_results)+1
except Exception as e:
   print(e)
print('first_run=%d' % first_run)
artdaqdb_results=conftool.getListOfArchivedRunConfigurations()
last_run=max(int(o.split('/')[0]) for o in artdaqdb_results if o[0].isdigit())-1
if re.search(r'run_records_pending', "${ONLINE_UCONDB_URI}") is not None:
  last_run+=1
print('last_run=%d' % last_run)
PYQEOF
)

echo "first_run=$(($first_run - 1))"
echo "last_run=$last_run"

(( last_run == 0 )) && ( echo "Error: Failed querying artdaq_database."; exit 1;)
(( first_run == 0 )) && { echo "Error: Failed querying UconDB." ; exit 1;}
(( last_run < first_run )) && { echo "Info: UconDB is up to date.";  exit 0;}
(( $((last_run - first_run)) > batch_size )) && last_run=$((first_run + batch_size))

xfer_log=${my_xferarea}/failed_runs.txt


touch ${xfer_log}

for r in $(seq $first_run $last_run); do
  rm -rf $r  blob_$r.txt exported_blob_$r.txt > /dev/null 2>&1
  python3 ${my_xferarea}/myblobify.py $r
  curl -o exported_blob_${r}.txt  "${ONLINE_UCONDB_URI%%app*}app/data/$(echo "${ONLINE_UCONDB_URI#*data/}" |cut -d"/" -f1)/configuration/key=$r"
  diff -q {exported_,}blob_${r}.txt
  (( $? != 0 )) && { echo "Error: Failed copying $r."; echo $r >> ${xfer_log};continue;}
  rm -rf {exported_,}blob_${r}.txt ${r}
done


if (( $( stat -c %s ${xfer_log} ) > 0 )); then
echo "Info: Sending email notification to ${EMAIL_LOADING_ERRORS_TO}."
/bin/cat - ${xfer_log}  << EMEOF | /usr/sbin/sendmail -t
To: ${EMAIL_LOADING_ERRORS_TO}
Subject: UconDB copying errors on $(hostname -s) $(date)
From: artdaq@$(hostname -s).fnal.gov

EMEOF
fi

cat ${xfer_log} >> ${my_xferarea}/failed_xfers.log
rm ${xfer_log}



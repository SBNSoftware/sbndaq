#!/bin/bash
#Instructionshttps://sbnsoftware.github.io/sbn_online_wiki/CopyRunHistory2UconDB_cron

printf '\033]2;Copying run records from ArtdaqDB to UconDB\a'

unset PRODUCTS
export PRODUCTS_DIR=/daq/software/products

source ${PRODUCTS_DIR}/setup

export ARTDAQ_DATABASE_TOOLS_ENV=${ARTDAQ_DATABASE_TOOLS_ENV:-"${HOME}/.artdaq_database_tools.env"}
echo "Info: ARTDAQ_DATABASE_TOOLS_ENV=${ARTDAQ_DATABASE_TOOLS_ENV}"
[[ -f ${ARTDAQ_DATABASE_TOOLS_ENV} ]] || { [[ -L ${ARTDAQ_DATABASE_TOOLS_ENV} ]] || echo "Error: ${ARTDAQ_DATABASE_TOOLS_ENV} is missing."; exit 2; }
set -o allexport; source ${ARTDAQ_DATABASE_TOOLS_ENV}; source ${ARTDAQ_DATABASE_TOOLS_ENV}; set +o allexport
export ARTDAQ_DATABASE_SETUP_COMMAND=${ARTDAQ_DATABASE_SETUP_COMMAND:-"setup artdaq_database v1_05_08 -q ${SBNDAQ_QUALS}"}
eval "$ARTDAQ_DATABASE_SETUP_COMMAND"
(( $? == 0 )) || { echo "Error: Failed running \"${ARTDAQ_DATABASE_SETUP_COMMAND}\""; exit 2; }
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


my_pythonbin=$(dirname $(which python))
my_pythonpath=$PYTHONPATH
unset PYTHONPATH


if [[ ! -d $my_xferarea/$my_xferdir/python_virtualenv ]]; then
  $my_pythonbin/python3 -m venv python_virtualenv
  $my_pythonbin/python3 -m pip install --upgrade pip
  source $my_xferarea/$my_xferdir/python_virtualenv/bin/activate

  cat > ${my_xferarea}/requirements.txt <<REQ_EOF
requests>=2.25.0
REQ_EOF

  pip install -r ${my_xferarea}/requirements.txt
  pip list -v
  curl -o client.tar $ONLINE_UCONDB_CLIENT_SOFTWARE
  tar -C $my_xferarea/$my_xferdir/python_virtualenv -xf  client.tar
else
  source $my_xferarea/$my_xferdir/python_virtualenv/bin/activate
fi

cat > ${my_xferarea}/myblobify.py <<BLOB_EOF
#!/bin/env python3

import os, sys, time, subprocess

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
    print ('Copying blob file to ucondb...')
    url = '${ONLINE_UCONDB_URI}' + run_number
    ret_code = subprocess.call(['curl','-T',blob_str,'--digest','-u','${ONLINE_UCONDB_WRITER_AUTH}','-X','PUT',url])
    if ret_code != 0 and ret_code != 60:
        print ('curl command returned with error code ' + str(ret_code) + '.')
        exit(1)
    else:
        print ('Success loading ' + str(run_number) + ' to ucondb.')
        exit(0)

if __name__ == '__main__':
    blobify(sys.argv[1])


BLOB_EOF

export PYTHONPATH=$(dirname $(which conftool.py)):$(echo ${my_pythonpath} | awk -v RS=: -v ORS=: '/site-packages/ {next} {print}'| sed 's/:*$//' )

first_run=0
last_run=0

# "${ONLINE_UCONDB_URI%%app*}app/versions?folder=ucon_prd.$(echo "${ONLINE_UCONDB_URI#*data/}" |cut -d"/" -f1)&object=configuration"

while read -r line ; do
  [[ $line =~ ^first_run=.* ]] && first_run=${line#*=}
  [[ $line =~ ^last_run=.* ]] && last_run=${line#*=}
  #echo $line
done < <(
python3 <<PYQEOF
import requests
import json
import re
import conftool
url = '${ONLINE_UCONDB_URI%%app*}app/versions?folder=ucon_prd.$(echo ${ONLINE_UCONDB_URI#*data/} |cut -d"/" -f1)&object=configuration'
ucondb_results = requests.get(url)
first_run=1
try:
  first_run=max(int(o['key']) for o in ucondb_results.json())+1
except:
  pass
print('first_run=%d' % first_run)
artdaqdb_results=conftool.getListOfArchivedRunConfigurations()
last_run=max(int(o.split('/')[0]) for o in artdaqdb_results if o[0].isdigit())-1
if re.search(r'run_records_pending', url) is not None:
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
  python ${my_xferarea}/myblobify.py $r
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



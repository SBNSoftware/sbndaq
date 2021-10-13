#!/bin/bash
echo "Info: Running $(basename $0)"
printf "Info: \033[1;31mInstructions https://sbnsoftware.github.io/sbn_online_wiki/sbndaq_Wiki/MigrateConfigs\033[0m";echo

#load environemnt variables from  artdaq_database.env
my_artdaq_database_env=${ARTDAQ_DATABASE_ENV:-${HOME}/.artdaq_database.env}
[[ -f ${my_artdaq_database_env} ]] || { [[ -L ${my_artdaq_database_env} ]] || echo "Error: ${my_artdaq_database_env} is missing."; exit 2; }
set -o allexport; source ${my_artdaq_database_env}; source ${my_artdaq_database_env}; set +o allexport

#defaults
my_artdaq_database_setup_command=${ARTDAQ_DATABASE_SETUP_COMMAND:-"setup artdaq_database v1_05_08 -q e20:prof:s112"}
my_workarea=${ARTDAQ_DATABASE_WORKDIR:-"${HOME}/CONFIG_MigrationArea"}
my_artdaqdb_uri=${ARTDAQ_DATABASE_URI:-"filesystemdb://${my_workarea}/filesystemdb/test_db"}
my_script_dir=$(unset CDPATH && cd "$(dirname "$0")" && echo $PWD)/config-migration-scripts
my_configs=${my_script_dir}/configs-example.list
my_script=${my_script_dir}/migrate-example.script
my_tmpdir=$(date +"migrateconfigs_%d%b%Y")
my_projname=migrateconfigs

function show_usage(){
  echo
  echo  "Usage:"
  echo  "  $(basename $0) -c configs.list -s migrate.script [-d tmpdir]"
  echo  "Options:"
  echo  "  -c, --configs  file containing a list of configurations to migrate,"
  echo  "                   default=${my_configs}"
  echo  "  -s, --script   migration script,"
  echo  "                   default=${my_script}"
  echo  "  -d, --tmpdir   temporary working directory name,"
  echo  "                   default=${my_tmpdir}"
  echo "Examples:"
  echo  "  $(basename $0) \\"
  echo  "    -c ${my_configs} \\"
  echo  "    -s ${my_script}";echo
  echo  "  $(basename $0) \\"
  echo  "    -c ${my_configs} \\"
  echo  "    -s ${my_script}  \\"
  echo  "    -d ${my_tmpdir}";echo
}

#process command-line arguments
while [[ "$#" -gt 0 ]]; do case $1 in
  -h|--help) show_usage; exit 0;;
  -d|--tmpdir) my_tmpdir="$2"; shift;;
  -c|--configs) my_configs="$(realpath $2)"; shift;;
  -s|--script) my_script="$(realpath $2)"; shift;;
  *) echo "Unknown parameter passed: $1"; exit 1;;
esac; shift; done

[[ -f ${my_configs} ]] || { echo "Error: ${my_configs} is missing."; exit 2; }
[[ -f ${my_script} ]] || { echo "Error: ${my_script} is missing."; exit 2; }

export ARTDAQ_DATABASE_CONFDIR=$(dirname  ${my_script_dir})/config

#main
unset PRODUCTS
my_workdir=${my_workarea}/${my_tmpdir}

#rm -rf ${my_workdir}

echo -e -n "Info: Running $(basename $0) with options:\n\tconfigs=${my_configs}\n\tscript=${my_script}\n\ttmpdir=${my_tmpdir}\n\n"
echo "Info: The default schema.fcl is located in ${ARTDAQ_DATABASE_CONFDIR}."


my_swdir=/daq/software
source ${my_swdir}/products/setup
[[ -f ${my_swdir}/products_dev/setup ]] && source ${my_swdir}/products_dev/setup

[[ ! -d ${my_workdir} ]] && mkdir -p ${my_workdir}
cd ${my_workdir}

eval "$my_artdaq_database_setup_command"
(( $? == 0 )) || { echo "Error: Failed running \"setup artdaq_database ${my_version} -q ${my_quals} \""; exit 2; }

my_pythonbin=$(dirname $(which python))
my_pythonpath=$PYTHONPATH
unset PYTHONPATH

echo "Info: Working directory is $(pwd)."

if [[ ! -d ${my_workdir}/python_virtualenv ]]; then
  ${my_pythonbin}/python -m venv python_virtualenv
  source ${my_workdir}/python_virtualenv/bin/activate
  python -m pip install --upgrade pip

  cat > ${my_workdir}/requirements.txt <<EOF
requests>=2.25.0
EOF

  python -m  pip install -r ${my_workdir}/requirements.txt
  python -m  pip freeze
else
  source ${my_workdir}/python_virtualenv/bin/activate
fi

my_conftool_dir=$(dirname $(which conftool.py))

export ARTDAQ_DATABASE_URI="${my_artdaqdb_uri}"
export PYTHONPATH=${my_conftool_dir}:$(echo ${my_pythonpath} | awk -v RS=: -v ORS=: '/site-packages/ {next} {print}'| sed 's/:*$//' )


migrateconfigs_log=${my_workdir}/migrateconfigs.log
[[ -f ${migrateconfigs_log} ]] && rm ${migrateconfigs_log}
touch ${migrateconfigs_log}

error_counter=0

while read -r config_name ; do
if [[ $config_name =~ [0-9]{5}$ ]]; then
  echo "Info: Migrating ${config_name}." | tee -a ${migrateconfigs_log}
  date >> ${migrateconfigs_log}
  my_workconfig_dir=${my_workdir}/configs/export${config_name}
  [[ -d ${my_workconfig_dir} ]] && rm -rf ${my_workconfig_dir}
  mkdir -p ${my_workconfig_dir} || continue

  cd ${my_workconfig_dir}
  python ${my_conftool_dir}/conftool.py exportConfiguration ${config_name} 2>&1 | tee -a ${migrateconfigs_log}; ( exit ${PIPESTATUS[0]} )
  (( $? == 0 )) || { ((error_counter++)); echo "Error: conftool.py exportConfiguration failed, ${config_name} will not be migrated."; continue; }
  cd ${config_name%-*}- || { ((error_counter++)); echo "Error: Configuration directory is missing, ${config_name} will not be migrated."; continue; }
  echo "**************************************************************************************"
  echo "Info: Running ${my_script}."
  echo "Info: Current working directory is $(pwd)."
  sh ${my_script} 2>&1 | tee -a ${migrateconfigs_log};( exit ${PIPESTATUS[0]} )
  (( $? == 0 )) || { ((error_counter++)); echo "Error: ${my_script} failed; ${config_name} will not be migrated."; continue; }
  echo "**************************************************************************************"
  cd ${my_workconfig_dir}
  python ${my_conftool_dir}/conftool.py importConfiguration ${config_name} 2>&1 | tee -a ${migrateconfigs_log}; ( exit ${PIPESTATUS[0]} )
  (( $? == 0 )) || { ((error_counter++)); echo "Error: conftool.py importConfiguration failed; ${config_name} was not migrated."; continue; }
  date >> ${migrateconfigs_log}
  echo "Info: Migrated ${config_name}." | tee -a ${migrateconfigs_log}
fi
done < <(cat ${my_configs})


cat ${migrateconfigs_log} >> ${my_workarea}/migrateconfigs.log

(( error_counter == 0 )) && exit 0

[[ -z ${EMAIL_ERRORS_TO+x} ]] &&  exit 3

echo "Info: Sending email notification to ${EMAIL_ERRORS_TO}."
/bin/cat - ${migrateconfigs_log}  << EMEOF | /usr/sbin/sendmail -t
To: ${EMAIL_ERRORS_TO}
Subject: migrate_configs.sh finished with ${error_counter} errors on $(hostname -s) $(date)
From: migrateconfigs@$(hostname -s).fnal.gov

EMEOF

exit 3

#!/bin/bash
#Instructions https://sbnsoftware.github.io/sbn_online_wiki/ImportRunHistory2ArtdaqDB_cron

unset PRODUCTS
export PRODUCTS_DIR=/daq/software/products

source ${PRODUCTS_DIR}/setup

export ARTDAQ_DATABASE_TOOLS_ENV=${ARTDAQ_DATABASE_TOOLS_ENV:-"${HOME}/.artdaq_database_tools.env"}
[[ -f ${ARTDAQ_DATABASE_TOOLS_ENV} ]] || { [[ -L ${ARTDAQ_DATABASE_TOOLS_ENV} ]] || echo "Error: ${ARTDAQ_DATABASE_TOOLS_ENV} is missing."; exit 2; }
set -o allexport; source ${ARTDAQ_DATABASE_TOOLS_ENV}; source ${ARTDAQ_DATABASE_TOOLS_ENV}; set +o allexport
export ARTDAQ_DATABASE_SETUP_COMMAND=${ARTDAQ_DATABASE_SETUP_COMMAND:-"setup artdaq_database v1_10_00 -q ${SBNDAQ_QUALS}"}
eval "$ARTDAQ_DATABASE_SETUP_COMMAND"
(( $? == 0 )) || { echo "Error: Failed running \"${ARTDAQ_DATABASE_SETUP_COMMAND}\""; exit 2; }
set -o allexport; source ${ARTDAQ_DATABASE_TOOLS_ENV}; source ${ARTDAQ_DATABASE_TOOLS_ENV}; set +o allexport
export ARTDAQ_DATABASE_WORKDIR=${ARTDAQ_DATABASE_WORKDIR:-"${HOME}/work-db-v4-dir"}
[[ -d ${ARTDAQ_DATABASE_WORKDIR} ]] ||  mkdir -p ${ARTDAQ_DATABASE_WORKDIR}
export ARTDAQ_DATABASE_URI=${ARTDAQ_DATABASE_URI:-"filesystemdb://${ARTDAQ_DATABASE_WORKDIR}/filesystemdb/test_db"}
export ARTDAQ_DATABASE_CONFDIR=${ARTDAQ_DATABASE_CONFDIR:-"/daq/software/database/config"}

export DAQINTERFACE_SETUP_COMMAND=${DAQINTERFACE_SETUP_COMMAND:-"setup artdaq_daqinterface v3_13_00"}
eval "$DAQINTERFACE_SETUP_COMMAND"
(( $? == 0 )) || { echo "Error: Failed running \"${DAQINTERFACE_SETUP_COMMAND}\""; exit 2; }

export BATCH_SIZE=${BATCH_SIZE:-50}
export DAQ_RUN_RECORDS_DIR=${DAQ_RUN_RECORDS_DIR:-"/daq/run_records"}
export DBTOOLS_LOG_DIR=${DBTOOLS_LOG_DIR:-"/daq/log/dbtools"}
export ARTDAQ_DATABASE_CONFDIR=${ARTDAQ_DATABASE_CONFDIR:-"/daq/software/database/config"}

export PYTHONPATH=${ARTDAQ_DATABASE_FQ_DIR}/python:${ARTDAQ_DAQINTERFACE_DIR}
#export LD_LIBRARY_PATH=$MONGODB_FQ_DIR/lib64:$LD_LIBRARY_PATH

run_number_first=$(conftool.py getListOfArchivedRunConfigurations | cut -d "/" -f 1 |grep -v Info |sort -u -g -r|head -1)
(( run_number_first++ ))

#run_number_first=1
run_number_last=$(ls -d ${DAQ_RUN_RECORDS_DIR}/* |grep -o '[^/]*$' |sort -u -g |tail -1)
(( run_number_last-- ))

if (( $((run_number_last - run_number_first)) > BATCH_SIZE )); then run_number_last=$((run_number_first + BATCH_SIZE)); fi

export DAQINTERFACE_PROCESS_MANAGEMENT_METHOD=direct
export DAQINTERFACE_FHICL_DIRECTORY=IGNORED
export DAQINTERFACE_TTY=$( tty | sed -r 's!/dev/!!' )
export DAQINTERFACE_LOGFILE=${DBTOOLS_LOG_DIR}/MockDAQInterface.log

export DAQINTERFACE_SETTINGS=/tmp/user_settings.dummy
cat > ${DAQINTERFACE_SETTINGS} << EOF
log_directory: ${DBTOOLS_LOG_DIR}
record_directory: ${DAQ_RUN_RECORDS_DIR}
package_hashes_to_save: [ ]
productsdir_for_bash_scripts: ${PRODUCTS_DIR}
max_configurations_to_list: 20
boardreader_timeout: 90
eventbuilder timeout: 15
aggregator timeout: 15
dispatcher timeout: 10
use_messageviewer: false
#max_fragment_size_bytes: 10000000
advanced_memory_usage: true
all_events_to_all_dispatchers: true
disable_unique_rootfile_labels: true
EOF


failed_runs_file=$(mktemp ${DBTOOLS_LOG_DIR}/failed_runs-${run_number_first}-${run_number_last}.XXXXXXXX)
runs_file=${DBTOOLS_LOG_DIR}/runs-${run_number_first}-${run_number_last}.txt

echo runs_file:"${runs_file}"
echo failed_runs_file:"${failed_runs_file}"

seq ${run_number_first} ${run_number_last} > ${runs_file}

#export ARTDAQ_DATABASE_URI="filesystemdb:///scratch_local/databases011/filesystemdb/test_db"

python3 << PYEOF
import os
import re
from rc.control.daqinterface import DAQInterface

from rc.control.config_functions_database_v2 import put_config_info_base
from rc.control.config_functions_database_v2 import put_config_info_on_stop_base

def resolve_configs(mock):
  metadata_filename = "%s/%s/metadata.txt" % (mock.record_directory, str(mock.run_number))
  if os.path.exists(metadata_filename):
    with open(metadata_filename) as metadata_file:
      for line in metadata_file:
        res = re.search(r"^Config name:\s+(.*)",line)
        if res:
          mock.subconfigs_for_run.append(res.group(1))
          break

def main():
  class MockDAQInterface(DAQInterface):
    debug_level = 3
    run_number = 4
    record_directory = "${DAQ_RUN_RECORDS_DIR}"
    subconfigs_for_run = []

  mock=MockDAQInterface()

  with open('${runs_file}') as f:
    new_runs = list( f.read().splitlines())

  with open('${failed_runs_file}', "a") as outf:
    for run_dir in new_runs:  # list([os.path.basename(x[0]) for x in os.walk(mock.record_directory)]):
      if run_dir == "run_records":
        continue

      try:
        run_number = int (run_dir)

        mock.print_log("i", "Run %i" % run_number)

        mock.run_number=run_number
        mock.subconfigs_for_run = []

        resolve_configs(mock)

        if len(mock.subconfigs_for_run) == 0:
          mock.subconfigs_for_run.append("standard")

        put_config_info_base( mock )
        put_config_info_on_stop_base(mock)

      except:
        outf.write("%s\n" % run_dir)
        mock.print_log("e", "Failed processing Run %s:" % run_number )

if __name__ == "__main__":
  main()
PYEOF


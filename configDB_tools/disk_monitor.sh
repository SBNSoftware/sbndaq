#!/bin/bash
echo "Info: Running $(basename $0)"
printf "Info: Instructions \033[1;31mhttps://sbnsoftware.github.io/sbn_online_wiki/DiskMonitor\033[0m";echo

[[ "${BASH_SOURCE[0]}" != "${0}" ]] && { echo "script ${BASH_SOURCE[0]} should be ran and not sourced."; exit 1; }

#load environemnt variables from  artdaq_grafana.env
my_artdaq_grafana_env=${ARTDAQ_GRAFANA_ENV:-${HOME}/.artdaq_grafana.env}
[[ -f ${my_artdaq_grafana_env} ]] || { [[ -L ${my_artdaq_grafana_env} ]] || echo "Error: ${my_artdaq_grafana_env} is missing."; exit 2; }
set -o allexport; source ${my_artdaq_grafana_env}; source ${my_artdaq_grafana_env}; set +o allexport
SBNDAQ_DBTOOLS_PATH=$(cd $(dirname "$0") && pwd)

#defaults
export EXPERIMENT_NAME=${EXPERIMENT_NAME:-$(hostname -s|cut -d"-" -f1)}
export GRAFANA_SERVER_HOSTNAME=${GRAFANA_SERVER_HOSTNAME:-"$(hostname -s)-daq"}
export GRAFANA_SERVER_PORT=${GRAFANA_SERVER_PORT:-2003}
export MONITOR_DISK_ON_HOSTS=${MONITOR_DISK_ON_HOSTS:-"${EXPERIMENT_NAME}-tpc ${EXPERIMENT_NAME}-pmt ${EXPERIMENT_NAME}-crt ${EXPERIMENT_NAME}-evb"}

for t in ${MONITOR_DISK_ON_HOSTS};
do
  for h in ${t}{01..10}-daq;
  do
     ping -c 1 -W 1 $h > /dev/null && \
       [[ $? == 0 ]] && echo "Monitoring disks on $h" && \
         ssh $h -o ConnectTimeout=1 -t \
              "export EXPERIMENT_NAME=${EXPERIMENT_NAME} GRAFANA_SERVER_HOSTNAME=${GRAFANA_SERVER_HOSTNAME} GRAFANA_SERVER_PORT=${GRAFANA_SERVER_PORT} && \
                python3 ${SBNDAQ_DBTOOLS_PATH}/disk_monitor.py";
   done 2> /dev/null;
done

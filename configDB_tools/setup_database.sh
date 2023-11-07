#!/bin/bash
source /daq/software/products/setup

export ARTDAQ_DATABASE_ENV=${ARTDAQ_DATABASE_ENV:-"${HOME}/.artdaq_database.env"}
[[ -f ${ARTDAQ_DATABASE_ENV} ]] || { [[ -L ${ARTDAQ_DATABASE_ENV} ]] || echo "Error: ${ARTDAQ_DATABASE_ENV} is missing."; exit 2; }
set -o allexport; source ${ARTDAQ_DATABASE_ENV}; source ${ARTDAQ_DATABASE_ENV}; set +o allexport
export ARTDAQ_DATABASE_SETUP_COMMAND=${ARTDAQ_DATABASE_SETUP_COMMAND:-"setup artdaq_database v1_08_00 -q ${SBNDAQ_QUALS}"}
eval "$ARTDAQ_DATABASE_SETUP_COMMAND"
(( $? == 0 )) || { echo "Error: Failed running \"${ARTDAQ_DATABASE_SETUP_COMMAND}\""; exit 2; }
set -o allexport; source ${ARTDAQ_DATABASE_ENV}; source ${ARTDAQ_DATABASE_ENV}; set +o allexport
export ARTDAQ_DATABASE_WORKDIR=${ARTDAQ_DATABASE_WORKDIR:-"${HOME}/work-db-v4-dir"}
[[ -d ${ARTDAQ_DATABASE_WORKDIR} ]] ||  mkdir -p ${ARTDAQ_DATABASE_WORKDIR}
export ARTDAQ_DATABASE_URI=${ARTDAQ_DATABASE_URI:-"filesystemdb://${ARTDAQ_DATABASE_WORKDIR}/filesystemdb/test_db"}
export ARTDAQ_DATABASE_CONFDIR=${ARTDAQ_DATABASE_CONFDIR:-"/daq/software/database/config"}
conftool.py

_complete_conftool(){
    local current_string=${COMP_WORDS[COMP_CWORD]}
    local complete_list=$(conftool.py |grep -v Usage |grep conftool |cut -d ' ' -f 3)
    if [  ${COMP_WORDS[COMP_CWORD-1]} = "exportConfiguration" ];then
       complete_list=$(conftool.py getListOfAvailableRunConfigurations)
    elif [  ${COMP_WORDS[COMP_CWORD-1]} = "getListOfAvailableRunConfigurations" ];then
       complete_list=$(conftool.py getListOfAvailableRunConfigurationPrefixes)
    elif [  ${COMP_WORDS[COMP_CWORD-1]} = "importConfiguration" ];then
       complete_list=$(conftool.py getListOfAvailableRunConfigurationPrefixes)
    fi

    COMPREPLY=($(compgen -W '${complete_list[@]}' -- "$current_string"))
    return 0
}

complete -F _complete_conftool conftool.py
echo
echo
echo
echo
echo "Instructions: https://cdcvs.fnal.gov/redmine/projects/artdaq-utilities/wiki/Artdaq-config-conftool"
echo
echo

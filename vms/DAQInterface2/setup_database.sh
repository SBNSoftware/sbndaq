#/usr/bin/env bash
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }

export ARTDAQ_DATABASE_WORKDIR=${ARTDAQ_DATABASE_WORKDIR:-"${HOME}/work-db-v4-dir"}
[[ -d ${ARTDAQ_DATABASE_WORKDIR} ]] ||  mkdir -p ${ARTDAQ_DATABASE_WORKDIR}
export ARTDAQ_DATABASE_URI=${ARTDAQ_DATABASE_URI:-"filesystemdb://${ARTDAQ_DATABASE_WORKDIR}/filesystemdb/test_db"}
export ARTDAQ_DATABASE_CONFDIR=${ARTDAQ_DATABASE_CONFDIR:-"/daq/software/database/config"}
export PYTHONPATH=$(dirname $(dirname $(which conftool.py)))/python/:$PYTHONPATH

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

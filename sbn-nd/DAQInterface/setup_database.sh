#!/bin/bash

database_work_dir=${HOME}/work-db-v4-dir

source /daq/software/products/setup

setup artdaq_database v1_04_96 -q e19:prof:s106
#export LD_LIBRARY_PATH=$(echo $LD_LIBRARY_PATH |sed 's/:/\n/g'|grep -v "/lib64"|tr '\n' ':'|| sed 's/:$//')

export ARTDAQ_DATABASE_URI="mongodb://127.0.0.1:28047/sbndaq_db"

if [ ! -d ${database_work_dir} ]; then 
  mkdir -p ${database_work_dir}
fi

#cd ${database_work_dir}

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
export ARTDAQ_DATABASE_CONFDIR=/daq/software/database/config
#cd $database_work_dir
echo
echo
echo "Listing RunConfigurations available in artdaq_database:"
conftool.py getListOfAvailableRunConfigurations
echo 
echo 
echo "Instructions: https://cdcvs.fnal.gov/redmine/projects/artdaq-utilities/wiki/Artdaq-config-conftool"
echo 
echo 

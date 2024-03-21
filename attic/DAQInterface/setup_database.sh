#!/bin/bash

artdaq_sw_dir=${HOME}/icarus_artdaq

database_work_dir=${artdaq_sw_dir}/database/work-db-dir


[ -f  /grid/fermiapp/products/artdaq/setup ] source /grid/fermiapp/products/artdaq/setup
[ -f  ${HOME}/icarus_artdaq/products/setup ] source ${HOME}/icarus_artdaq/products/setup

setup artdaq_database v1_10_00 -q e20:prof:s120a

export ARTDAQ_DATABASE_URI="mongodb://127.0.0.1:27037/fnal_icarus_db"


if [ ! -d ${database_work_dir} ]; then 
  mkdir -p ${database_work_dir}
fi

cd ${database_work_dir}

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

alias setup_database='source ${HOME}/DAQInterface/setup_database.sh'

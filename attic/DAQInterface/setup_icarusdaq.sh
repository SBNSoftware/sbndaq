#!/usr/bin/env bash

function setup_online {
#configure defaults
local icarusdaq_version="${icarusdaq_version:-v0_06_03}"
local daqinterface_version="${daqinterface_version:-v3_03_01}"
local artdaqmpich_version="${artdaqmpich_version:-v1_00_04}"
local artdaqdatabase_version="${artdaqdatabase_version:-v1_04_67}"
local artdaqdemo_version="${artdaqdemo_version:-v3_03_01}"
local icarusdaq_quals="${icarusdaq_quals:-e15:prof:s64}"

local products_path=""

unset FHICL_FILE_PATH

if [ -f /grid/fermiapp/products/artdaq/setup ]; then 
 source /grid/fermiapp/products/artdaq/setup
 products_path="/grid/fermiapp/products/artdaq"
fi

if [ -f $HOME/icarus_artdaq/products/setup ]; then 
 source $HOME/icarus_artdaq/products/setup 
 if [ -z ${products_path} ]; then
   products_path="$HOME/icarus_artdaq/products"
 else
   products_path="$HOME/icarus_artdaq/products:${products_path}" 
 fi
fi 

unsetup_all >/dev/null 2>&1

local local_products_path=$(dirname $(find $HOME/icarus_artdaq/work_dirs/icarus-artdaq_artdaq_${artdaqdemo_version}/local*/ -name setup |head -1 ) )

local local_products_path="${MYLOCAL_PRODUCTS:-${local_products_path}}"

export PRODUCTS=${local_products_path}:${products_path}
local user_krb5=$(klist |grep "Default principal" |cut -d":" -f2)  >/dev/null 2>&1
printf "\nLogged as: ${USER}@$(hostname)"
[ ! -z ${user_krb5} ] &&  printf "\nKerberos ticket:${user_krb5}"
printf "\nOS: $(uname -a)"
printf "\nICARUS DAQ Release: ${icarusdaq_version}"
printf "\nUPS Repositories:\n$(echo ${PRODUCTS}| tr ":" "\n")\n\n"

#setup all required products
#setup artdaq_demo ${artdaqdemo_version} -q "eth:${icarusdaq_quals}"
setup icarus_artdaq ${icarusdaq_version} -q "${icarusdaq_quals}"
setup artdaq_daqinterface ${daqinterface_version}
setup artdaq_mpich_plugin ${artdaqmpich_version} -q "${icarusdaq_quals}:eth"
setup artdaq_database ${artdaqdatabase_version} -q "${icarusdaq_quals}"

export ARTDAQ_DATABASE_URI="mongodb://127.0.0.1:27037/fnal_icarus_db"

setup git
setup gitflow

export FHICL_FILE_PATH=${ICARUS_ARTDAQ_DIR}/fhicl:${FHICL_FILE_PATH}

local self_fullpath=""

if [[ "$0" == "$BASH_SOURCE" ]];then
   self_fullpath=$(readlink --canonicalize-existing $0)
else
   self_fullpath=$BASH_SOURCE
fi

#echo self_fullpath=$self_fullpath
local self_dir=$(dirname ${self_fullpath})

export ARTDAQ_DAQINTERFACE_USER_DIR=${self_dir}

source ${self_dir}/helper_functions

export DAQINTERFACE_USER_SOURCEFILE="${DAQINTERFACE_USER_SOURCEFILE:-${self_dir}/user_sourcefile}"
export FHICL_FILE_PATH=${self_dir}/icarus_configs_dab:${ICARUS_ARTDAQ_DIR}/fhicl:${FHICL_FILE_PATH}

printf "\nARTDAQ_DAQINTERFACE_DIR=${ARTDAQ_DAQINTERFACE_DIR}"
printf "\nARTDAQ_DAQINTERFACE_USER_DIR=${ARTDAQ_DAQINTERFACE_USER_DIR}"
printf "\nDAQINTERFACE_USER_SOURCEFILE=${DAQINTERFACE_USER_SOURCEFILE}"
printf "\nFHICL_FILE_PATH=${FHICL_FILE_PATH}"

printf "\nArtdaq products:\n"

ups active |egrep -e '^(icarus|artdaq)'

export LOGDIR=${HOME}/icarus_artdaq/log
export DAQDIR=${HOME}/icarus_artdaq/DAQInterface
export RUNRECORDS=${HOME}/icarus_artdaq/run_records

export DAQINTERFACE_LOGDIR=${LOGDIR}
export ARTDAQDEMO_LOG_DIR=${LOGDIR}
export ARTDAQDEMO_DATA_DIR=${HOME}/icarus_artdaq/data

source $ARTDAQ_DAQINTERFACE_DIR/source_me
}

function setup_offline {
echo "Not implemented."
}

setup_online
#setup_offline

unset -f setup_online
unset -f setup_offline
#load_trace

if [[ "$0" != "$BASH_SOURCE" ]];then
   return 0
fi

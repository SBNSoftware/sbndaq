#!/usr/bin/env bash

SBNDAQ_VERSION="v0_09_00"
SBNDAQ_QUALS="e20:prof:s110"
DAQINTERFACE_VERSION="v3_11_00"

source /daq/software/products/setup
[[ -f /daq/software/products_dev/setup ]] && source /daq/software/products_dev/setup

setup mrb v5_12_00

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

# your own local products directory:
LOCAL_MRB_PRODUCTS=$(ls -d ${THIS_SBN_DAQ_DAQINTERFACE_DIR%srcs*}localProducts* |head -1)
LOCAL_INSTALLED_PRODUCTS=${THIS_SBN_DAQ_DAQINTERFACE_DIR%srcs*}products

if   [ -f $LOCAL_INSTALLED_PRODUCTS/setup ]; then
   source $LOCAL_INSTALLED_PRODUCTS/setup
elif [ -f $LOCAL_MRB_PRODUCTS/setup ]; then
   source $LOCAL_MRB_PRODUCTS/setup
else
   echo "Warning: localProducts/products not found."
fi

setup artdaq_demo v3_09_06 -q ${SBNDAQ_QUALS}
setup sbndaq $SBNDAQ_VERSION -q ${SBNDAQ_QUALS}

export ARTDAQ_DATABASE_CONFDIR=/daq/software/database/config
unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED
setup artdaq_daqinterface $DAQINTERFACE_VERSION

#setup artdaq_runcontrol_gui v1_02_00_01 -q e20:prof
#alias rc='artdaqRunControl'

#Trace setup for debugging:
export TRACE_FILE=/tmp/trace_`whoami`
echo "TRACE_FILE=$TRACE_FILE"

#suppress debug messages
toffSg 8-63
tonSg 0-7
tonMg 0-7
tmodeS 1
tmodeM 1


#toffM 23 -n SharedMemoryManager
#export TRACE_LIMIT_MS="5,1000,2000"
# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator 



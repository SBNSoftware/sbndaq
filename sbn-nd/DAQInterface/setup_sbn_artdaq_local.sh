#!/usr/bin/env bash

SBNDAQ_VERSION="v0_07_06"
SBNDAQ_QUALS="e19:prof:s106"
DAQINTERFACE_VERSION="v3_09_08"

unset PRODUCTS
unset DAQINTERFACE_TRACE_SCRIPT

source /daq/software/products/setup
#[[ -f /daq/software/products_dev/setup ]] && source /daq/software/products_dev/setup
#[[ -f /daq/software/products_experimental/setup ]] && source /daq/software/products_experimental/setup

setup mrb

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

# your own local products directory:
LOCAL_MRB_PRODUCTS=$(/bin/ls -d ${THIS_SBN_DAQ_DAQINTERFACE_DIR%srcs*}localProducts*${SBNDAQ_VERSION}* |head -1)
LOCAL_INSTALLED_PRODUCTS=${THIS_SBN_DAQ_DAQINTERFACE_DIR%srcs*}products

if   [ -f $LOCAL_INSTALLED_PRODUCTS/setup ]; then
   source $LOCAL_INSTALLED_PRODUCTS/setup
elif [ -f $LOCAL_MRB_PRODUCTS/setup ]; then
   source $LOCAL_MRB_PRODUCTS/setup
else
   echo "Warning: localProducts/products not found."
fi

setup sbndaq $SBNDAQ_VERSION -q ${SBNDAQ_QUALS}

export ARTDAQ_DATABASE_CONFDIR=/daq/software/database/config
unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED
setup artdaq_daqinterface $DAQINTERFACE_VERSION

#setup artdaq_runcontrol_gui v1_02_00_01 -q e19:prof
setup artdaq_mfextensions  v1_05_05 -q $SBNDAQ_QUALS

alias rc='artdaqRunControl'

#Trace setup for debugging:
export TRACE_FILE=/tmp/trace_$(whoami)_p1

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

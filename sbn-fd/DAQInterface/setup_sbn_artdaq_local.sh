#!/usr/bin/env bash

SBNDAQ_VERSION="v0_05_00"
SBNDAQ_QUALS="e19:prof:s87"

source /software/products/setup
[[ -f /software/products_dev/setup ]] && source /software/products_dev/setup

setup mrb

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

# your own local products directory:
LOCAL_MRB_PRODUCTS=$(ls -d ${THIS_SBN_DAQ_DAQINTERFACE_DIR%srcs*}localProducts*${SBNDAQ_VERSION}* |head -1)
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
setup artdaq_daqinterface v3_07_02

#Trace setup for debugging:
export TRACE_FILE=/tmp/trace_`whoami`
echo "TRACE_FILE=$TRACE_FILE"

#suppress debug messages
toffSg 3-63 
tonSg 0-2
tonMg 0-3
tmodeS 1
tmodeM 1

#export TRACE_LIMIT_MS="5,1000,2000"
# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator 



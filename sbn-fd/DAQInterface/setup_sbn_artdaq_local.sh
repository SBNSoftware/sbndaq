#!/usr/bin/env bash

SBNDAQ_VERSION="v1_00_00"
SBNDAQ_QUALS="e20:prof:s112"
DAQINTERFACE_VERSION="v3_11_01"

unset PRODUCTS
unset DAQINTERFACE_TRACE_SCRIPT

source /daq/software/products/setup
[[ -f /daq/software/products_dev/setup ]] && source /daq/software/products_dev/setup
#[[ -f /daq/software/products_experimental/setup ]] && source /daq/software/products_experimental/setup

setup mrb v5_18_01

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

# your own local products directory:
LOCAL_MRB_PRODUCTS=$(/bin/ls -d ${THIS_SBN_DAQ_DAQINTERFACE_DIR%srcs*}localProducts* |head -1)
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

setup artdaq_mfextensions  v1_07_00 -q $SBNDAQ_QUALS

alias rc='artdaqRunControl'

#Trace setup for debugging:
export TRACE_FILE=/tmp/trace_$(whoami)_p1

echo "TRACE_FILE=$TRACE_FILE"

toffSg 8-63   # suppress debug messages to Slow path
tonSg 0-7
tonMg 0-7
#toffM 1-63 -n PhysCrateData
#toffS 1-63 -n PhysCrateData

#for event numbering checks
#tonM 1-63 -n PhysCrate_GeneratorBase
#tonM 9-15 -n CAENV1730Readout

#turning everything in PMT on
#tonM 0-63 -n CAENV1730Readout


#tonS 0-debug -n ICARUSTriggerUDP
tmodeS 1
tmodeM 1


#toffM 23 -n SharedMemoryManager
#export TRACE_LIMIT_MS="5,1000,2000"
# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator



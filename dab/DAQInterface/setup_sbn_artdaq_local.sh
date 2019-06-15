#!/bin/bash
source /daq/software/products/setup
setup mrb

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(dirname "${BASH_SOURCE[0]}")
THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath "${THIS_SBN_DAQ_DAQINTERFACE_DIR}")
SBNDAQ_VERSION="v0_02_02"
SBNDAQ_QUAL1="e17"
SBNDAQ_QUAL2="prof"
SBNDAQ_QUAL3="s82"

# your own local products directory:
export LOCAL_PRODUCTS_TRY="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/../../../../localProducts_sbndaq_${SBNDAQ_VERSION}_${SBNDAQ_QUAL1}_${SBNDAQ_QUAL2}_${SBNDAQ_QUAL3}"
export LOCAL_PRODUCTS_TRY2="${HOME}/work/localProducts_sbndaq_${SBNDAQ_VERSION}_${SBNDAQ_QUAL1}_${SBNDAQ_QUAL2}_${SBNDAQ_QUAL3}"

if   [ -e $LOCAL_PRODUCTS_TRY/ ]; then
    LOCAL_PRODUCTS=$LOCAL_PRODUCTS_TRY
elif [ -e $LOCAL_PRODUCTS_TRY2/ ]; then
    LOCAL_PRODUCTS="$LOCAL_PRODUCTS_TRY2"
else
    echo "localProducts not found"
    exit 0
fi

source $LOCAL_PRODUCTS/setup
#unsetup -j artdaq_daqinterface
setup sbndaq $SBNDAQ_VERSION -q ${SBNDAQ_QUAL1}:${SBNDAQ_QUAL2}:${SBNDAQ_QUAL3}

setup artdaq_daqinterface v3_05_00


#Trace setup for debugging:
export TRACE_FILE=/tmp/trace_`whoami`
echo "TRACE_FILE=$TRACE_FILE"
# export TRACE_LIMIT_MS="5,1000,2000" 

# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator 

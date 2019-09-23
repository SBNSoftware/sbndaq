#!/usr/bin/env bash
source /software/products/setup
[[ -f /software/products_dev/setup ]] && source /software/products_dev/setup

setup mrb

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(dirname "${BASH_SOURCE[0]}")
THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath "${THIS_SBN_DAQ_DAQINTERFACE_DIR}")
SBNDAQ_VERSION="v0_02_06"
SBNDAQ_QUAL1="e17"
SBNDAQ_QUAL3="s82"
SBNDAQ_QUAL2="prof"

# your own local products directory:
LOCAL_PRODUCTS_TRY="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/../../../../localProducts_sbndaq_${SBNDAQ_VERSION}_${SBNDAQ_QUAL1}_${SBNDAQ_QUAL2}_${SBNDAQ_QUAL3}"
LOCAL_PRODUCTS_TRY2="${HOME}/work/sbndaq*/localProducts_sbndaq_${SBNDAQ_VERSION}_${SBNDAQ_QUAL1}_${SBNDAQ_QUAL2}"

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

setup artdaq_daqinterface v3_06_00_FB23224


#Trace setup for debugging:
export TRACE_FILE=/tmp/trace_`whoami`
echo "TRACE_FILE=$TRACE_FILE"
# export TRACE_LIMIT_MS="5,1000,2000" 

# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator 

#!/usr/bin/env bash
source /daq/software/products/setup
setup mrb

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(dirname "${BASH_SOURCE[0]}")
THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath "${THIS_SBN_DAQ_DAQINTERFACE_DIR}")

#your own local products directory:
LOCAL_PRODUCTS_TRY="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/../../../../localProducts_sbndaq*/"
LOCAL_PRODUCTS_TRY2="${HOME}/work/sbndaq*/localProducts_sbndaq*"
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
setup sbndaq v0_01_07 -q e17:prof

setup artdaq_daqinterface v3_03_01T111318rc


#Trace setup for debugging:
export TRACE_FILE=/tmp/trace_`whoami`
echo "TRACE_FILE=$TRACE_FILE"
# export TRACE_LIMIT_MS="5,1000,2000" 

# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator 

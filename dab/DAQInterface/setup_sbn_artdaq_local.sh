#!/usr/bin/env bash
source /software/products/setup
setup mrb

#your own local products directory:
LOCAL_PRODUCTS_TRY="$(pwd)/../../../../localProducts_sbndaq*/"
LOCAL_PRODUCTS_TRY2="${HOME}/work/localProducts_sbndaq*"

if   [ -e $LOCAL_PRODUCTS_TRY/ ]; then
    LOCAL_PRODUCTS=$LOCAL_PRODUCTS_TRY
elif [ -e $LOCAL_PRODUCTS_TRY2/ ]; then
    LOCAL_PRODUCTS=$LOCAL_PRODUCTS_TRY2
else
    echo "localProducts not found"
    exit 1
fi

source $LOCAL_PRODUCTS/setup
#unsetup -j artdaq_daqinterface
setup sbndaq v0_01_03 -q e15:debug

setup artdaq_daqinterface v3_03_01T111318


#Trace setup for debugging:
#export TRACE_FILE=/tmp/trace_buffer
#export TRACE_FILE=/tmp/trace_wb
#export TRACE_FILE=/proc/trace/buffer
# export TRACE_LIMIT_MS="5,1000,2000" 

# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator 

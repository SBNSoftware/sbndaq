#!/usr/bin/env bash
source /software/products/setup
setup mrb

#your own local products directory:
LOCAL_PRODUCTS="${HOME}/work/localProducts_sbndaq_v0_01_03_debug_e15"

source $LOCAL_PRODUCTS/setup
#unsetup -j artdaq_daqinterface
setup sbndaq v0_01_03 -q e15:debug

setup artdaq_daqinterface v3_03_01T111318


#Trace setup for debugging:
#export TRACE_FILE=/tmp/trace_buffer
export TRACE_FILE=/tmp/trace_wb
#export TRACE_FILE=/proc/trace/buffer
# export TRACE_LIMIT_MS="5,1000,2000" 

# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator 

#!/usr/bin/env bash
source /software/products/setup
setup sbndaq v0_01_03 -q e15:prof
setup mrb

#your own local products directory:
LOCAL_PRODUCTS="/home/nfs/sbnd/work.drivera/srcs/sbndaq/v00_01_03/localProducts_sbndaq_v0_01_03_e15_prof/"

source $LOCAL_PRODUCTS/setup
unsetup -j artdaq_daqinterface
setup artdaq_daqinterface v3_03_01T111318


#Trace setup for debugging:
#export TRACE_FILE=/tmp/trace_buffer
export TRACE_FILE=/proc/trace/buffer
# export TRACE_LIMIT_MS="5,1000,2000" 

# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator 

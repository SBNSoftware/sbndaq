#!/usr/bin/env bash
source /software/products/setup
setup sbndaq v0_01_03 -q e15:prof
setup mrb
source /home/nfs/icaza/sbndaq_devel/localProducts*/setup
unsetup -j artdaq_daqinterface
setup artdaq_daqinterface v3_03_01T111318


export TRACE_FILE=/tmp/trace_buffer
# export TRACE_LIMIT_MS="5,1000,2000" 

# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator 

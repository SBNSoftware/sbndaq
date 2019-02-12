#!/usr/bin/env bash

PWD_DIR=$(pwd)
echo "PWD_DIR=$PWD_DIR"

source /software/products/setup 2>&1

unsetup_all 2>&1 > /dev/null
unset PRODUCTS
unset LD_LIBRARY_PATH

export PATH=/usr/lib64/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin

source /software/products/setup 2>&1
unset ARTDAQ_DAQINTERFACE_VERSION
unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED


LOCAL_PRODUCTS="$PWD_DIR/localProducts*/"
[[ -f $(dirname $PWD_DIR)/products/setup ]] && LOCAL_PRODUCTS=$(dirname $PWD_DIR)/products
echo "LOCAL_PRODUCTS=${LOCAL_PRODUCTS}"
[[ -f ${LOCAL_PRODUCTS}/setup ]] && source ${LOCAL_PRODUCTS}/setup || echo "No \"setup\" in $LOCAL_PRODUCTS."

setup mrb
setup sbndaq v0_01_03 -q e15:prof
unsetup -j artdaq_daqinterface 2>&1
setup artdaq_daqinterface v3_03_01T111318
setup sbndaq_redis_plugin v0_01_00 -q "e15:prof"

ups active |grep sbndaq  2>&1

source ./helper_functions 2>&1

export MRB_TOP=$(dirname $PWD_DIR)
if [[ -e $LOCAL_PRODUCTS/../artdaq-utilities-daqinterface ]]; then
 unsetup -j artdaq_daqinterface  2>&1
 export ARTDAQ_DAQINTERFACE_DIR=$LOCAL_PRODUCTS/../artdaq-utilities-daqinterface
 export ARTDAQ_DAQINTERFACE_VERSION=1.0
 export PATH=$ARTDAQ_DAQINTERFACE_DIR/bin:$PATH
fi




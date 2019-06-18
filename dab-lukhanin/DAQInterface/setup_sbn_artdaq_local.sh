#!/usr/bin/env bash
use_mrb=true
PWD_DIR=$(pwd)
echo "PWD_DIR=$PWD_DIR"

source /daq/software/products/setup 2>&1
unsetup_all 2>&1 > /dev/null

unset PRODUCTS
unset LD_LIBRARY_PATH

export PATH=/usr/lib64/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin

source /daq/software/products/setup 2>&1
source /daq/software/products_dev/setup 2>&1

export MRB_TOP=$(dirname $PWD_DIR)

LOCAL_PRODUCTS="$MRB_TOP/localProducts_sbnd_v0_02_01_e17_prof"

if [[ "$use_mrb" == "true" ]];  then
  export PRODUCTS=$LOCAL_PRODUCTS:$PRODUCTS
else
  [[ -f $(dirname $PWD_DIR)/products/setup ]] && LOCAL_PRODUCTS=$(dirname $PWD_DIR)/products
  echo "LOCAL_PRODUCTS=${LOCAL_PRODUCTS}"
  [[ -f ${LOCAL_PRODUCTS}/setup ]] && source ${LOCAL_PRODUCTS}/setup || echo "No \"setup\" in $LOCAL_PRODUCTS."
fi

export TRACE_FILE=/dev/shm/trace_buffer_$USER
#export TRACE_FILE=/proc/trace/buffer
export TRACE_NAME=TRACE


rqual=prof
squal=s82
setup mrb
setup sbndaq v0_02_02 -q e17:$rqual:$squal

export DAQINTERFACE_PARTITION_NUMBER=1





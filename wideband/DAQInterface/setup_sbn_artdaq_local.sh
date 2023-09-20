#!/usr/bin/env bash
source /software/products/setup
[[ -f /software/products_dev/setup ]] && source /software/products_dev/setup

setup mrb v6_08_01

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(dirname "${BASH_SOURCE[0]}")
THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath "${THIS_SBN_DAQ_DAQINTERFACE_DIR}")
SBNDAQ_VERSION="v1_08_02"
SBNDAQ_QUAL1="e20"
SBNDAQ_QUAL2="prof"
SBNDAQ_QUAL3="s112"

# your own local products directory:
LOCAL_PRODUCTS_TRY="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/../../../../localProducts_sbndaq_${SBNDAQ_VERSION}_${SBNDAQ_QUAL1}_${SBNDAQ_QUAL2}_${SBNDAQ_QUAL3}"
LOCAL_PRODUCTS_TRY2="${HOME}/work/sbndaq*/localProducts_sbndaq_${SBNDAQ_VERSION}_${SBNDAQ_QUAL1}_${SBNDAQ_QUAL2}_${SBNDAQ_QUAL3}"
#LOCAL_PRODUCTS_TRY3="$(dirname $(pwd))/products"
#"$(tlp="$( ls $(dirname $(pwd))/*/setup |grep local |head -1 )" && [[ -n $tlp ]] && echo  $(dirname $tlp)|| echo "null")"

if   [ -e $LOCAL_PRODUCTS_TRY/ ]; then
   LOCAL_PRODUCTS=$LOCAL_PRODUCTS_TRY
elif [ -e $LOCAL_PRODUCTS_TRY2/ ]; then
   LOCAL_PRODUCTS="$LOCAL_PRODUCTS_TRY2"
#elif [ -e $LOCAL_PRODUCTS_TRY3 ] ; then 
#   LOCAL_PRODUCTS="$LOCAL_PRODUCTS_TRY3"
else
   echo "Warning: localProducts not found."
fi


[[ -f $LOCAL_PRODUCTS/setup ]] &&  source $LOCAL_PRODUCTS/setup

setup sbndaq $SBNDAQ_VERSION -q ${SBNDAQ_QUAL1}:${SBNDAQ_QUAL2}:${SBNDAQ_QUAL3}

export ARTDAQ_DATABASE_CONFDIR=/daq/software/database/config
unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED
setup artdaq_daqinterface v3_07_00

# reconfigure locale
export LANG='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

#Trace setup for debugging:
export TRACE_FILE=/tmp/trace_`whoami`
echo "TRACE_FILE=$TRACE_FILE"

#suppress debug messages
toffSg 3-63 

#export TRACE_LIMIT_MS="5,1000,2000" 
# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator 



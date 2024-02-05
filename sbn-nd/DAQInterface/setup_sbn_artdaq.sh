#!/usr/bin/env bash

# reconfigure locale
export LANG='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

unset PRODUCTS

source /daq/software/products/setup
#[[ -f /daq/software/products_dev/setup ]] && source /daq/software/products_dev/setup

[[ -f $(dirname $(pwd))/products/setup ]] && export PRODUCTS=$(dirname $(pwd))/products:$PRODUCTS

SBNDAQ_VERSION="v1_09_00"
SBNDAQ_QUALS="e26:prof:s120a"
DAQINTERFACE_VERSION="v3_12_07"

setup sbndaq $SBNDAQ_VERSION -q $SBNDAQ_QUALS
setup artdaq_daqinterface $DAQINTERFACE_VERSION

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED
#Trace setup for debugging:
export DAQINTERFACE_PARTITION_NUMBER=${DAQINTERFACE_PARTITION_NUMBER:-"1"}

export TRACE_FILE=/tmp/trace_$(whoami)_p${DAQINTERFACE_PARTITION_NUMBER}

echo "TRACE_FILE=$TRACE_FILE"

ups active | grep  -E "(^sbn|^wib|^artdaq_runcontrol_gui|^caen)"

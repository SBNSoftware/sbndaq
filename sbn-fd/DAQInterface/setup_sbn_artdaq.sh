#!/usr/bin/env bash

# reconfigure locale
export LANG='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

source /daq/software/products/setup

[[ -f $(dirname $(pwd))/products/setup ]] && export PRODUCTS=$(dirname $(pwd))/products:$PRODUCTS

SBNDAQ_VERSION="v1_09_00"
DAQINTERFACE_VERSION="v3_12_07" 
MFEXTENSIONS_VERSION="v1_08_06"

SBNDAQ_QUALS="e26:prof:s120a"

setup sbndaq $SBNDAQ_VERSION -q $SBNDAQ_QUALS

export ARTDAQ_DATABASE_ENV="${HOME}/.artdaq_database-sbndaq${SBNDAQ_VERSION}.env"

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED
setup artdaq_daqinterface $DAQINTERFACE_VERSION
setup artdaq_mfextensions $MFEXTENSIONS_VERSION -q $SBNDAQ_QUALS

#Trace setup for debugging:
export DAQINTERFACE_PARTITION_NUMBER=${DAQINTERFACE_PARTITION_NUMBER:-"1"}

export TRACE_FILE=/tmp/trace_$(whoami)_p${DAQINTERFACE_PARTITION_NUMBER}

echo "TRACE_FILE=$TRACE_FILE"

ups active | grep  -E "(^sbn|^wib|^artdaq_runcontrol_gui|^caen)"

toffSg 0-63
toffMg 0-63
tonSg 0-8
tonMg 0-8

if [[ "$(hostname -s)" =~ icarus-crt11 ]]; then
    echo Checking if the boardreader is running. If not, attempting to kill the Bottom CRT backend
    if ! /usr/sbin/pidof boardreader ; then
        if /usr/sbin/pidof bottomCRTreadout ; then
            echo Attempting to kill the backend
            /usr/bin/killall bottomCRTreadout
        else
            echo Backend not running, no need to kill it
        fi
    else
        echo Boardreader is running, refraining from killing the backend
    fi
fi


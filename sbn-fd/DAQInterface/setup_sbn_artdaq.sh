#!/usr/bin/env bash
source /daq/software/products/setup

SBNDAQ_VERSION="v1_08_03"
DAQINTERFACE_VERSION="v3_12_05" 
MFEXTENSIONS_VERSION="v1_08_05"

SBNDAQ_QUALS="e20:prof:s112"

setup sbndaq $SBNDAQ_VERSION -q $SBNDAQ_QUALS

export ARTDAQ_DATABASE_ENV="${HOME}/.artdaq_database-sbndaq${SBNDAQ_VERSION}.env"

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED
setup artdaq_daqinterface $DAQINTERFACE_VERSION
setup artdaq_mfextensions $MFEXTENSIONS_VERSION -q $SBNDAQ_QUALS

# reconfigure locale
export LANG='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

#configure trace levels
export TRACE_FILE=/tmp/trace_$(whoami)_p1
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


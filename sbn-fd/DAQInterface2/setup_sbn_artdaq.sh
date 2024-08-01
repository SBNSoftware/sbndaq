#!/usr/bin/env bash
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }

export SBNDAQ_VERSION=v1_10_01
export ARTDAQ_DAQINTERFACE_VERSION=v3_13_00
export ARTDAQ_MFEXTENSIONS_VERSION=v1_09_00
export BUILD_VARIANT='gcc@12.2.0'

export DAQINTERFACE_CONFIGURE_STATUS_CHECK_QUIET_TIME=60

export SPACK_DISABLE_LOCAL_CONFIG=true

export THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

unset PYTHONPATH
#export SPACK_INSTALL_DIR=$(echo "${THIS_SBN_DAQ_DAQINTERFACE_DIR}" | grep -Eo '(^.*Areas/[A-Za-z0-9_\-]+/)')/SPACK_ROOT

export SPACK_INSTALL_DIR=/daq/software/spack_packages/spack/current/NULL

[[ -f ${SPACK_INSTALL_DIR}/share/spack/setup-env.sh ]] || { echo "Error: Not a Spack installation"; return 10; }

source ${SPACK_INSTALL_DIR}/share/spack/setup-env.sh >/dev/null 2>&1

which spack >/dev/null 2>&1 || { echo "Error: Spack not setup"; return 10; }

spack unload --all >/dev/null 2>&1 

export SPACK_ARCH="linux-$(spack arch --operating-system 2>/dev/null)-x86_64_v2"

export ARTDAQ_DAQINTERFACE_VERSION_FOUND=$(spack find -p artdaq-daqinterface%${BUILD_VARIANT} arch=${SPACK_ARCH} 2>/dev/null \
  | grep 'artdaq-daqinterface' | grep -Eo '@v[0-9_]+' | tr -d \@ )

export ARTDAQ_DAQINTERFACE_VERSION=${ARTDAQ_DAQINTERFACE_VERSION:-"${ARTDAQ_DAQINTERFACE_VERSION_FOUND}"}

spack load artdaq-daqinterface@${ARTDAQ_DAQINTERFACE_VERSION}%${BUILD_VARIANT} arch=${SPACK_ARCH} 2>/dev/null

which DAQInterface.sh >/dev/null 2>&1 || { echo "Error: DAQInterface not setup"; return 11; }

export ARTDAQ_DAQINTERFACE_DIR=$(dirname $(dirname $( which DAQInterface.sh 2>/dev/null )))

export DAQINTERFACE_SETTINGS=${THIS_SBN_DAQ_DAQINTERFACE_DIR}/user_settings
export DAQINTERFACE_USER_SOURCEFILE=${THIS_SBN_DAQ_DAQINTERFACE_DIR}/user_sourcefile

source package_setup.sh "sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT}"  2>/dev/null  

export PYTHONPATH=$(echo "$PYTHONPATH" | awk -v RS=':' -v ORS=':' '!seen[$0]++' | sed 's/:$//')
export ARTDAQ_DATABASE_VERSION=$(spack find artdaq-database arch=${SPACK_ARCH} 2>/dev/null | grep artdaq-database |grep -Eo 'v[0-9_]+')

spack find -lf --loaded 2>&1 | grep -v 'Warning: Missing dependency not in database:' 

export ARTDAQ_DATABASE_CONFDIR=/daq/software/database/config

#Trace setup for debugging:
source $(which trace_functions.sh 2>/dev/null) { echo "trace_functions.sh not found in PATH."; return 12; }

export TRACE_FILE=/tmp/trace_$(whoami)_p1
echo "TRACE_FILE=$TRACE_FILE"

export PYTHONUNBUFFERED=TRUE


#suppress debug messages
#
toffSg 0-63
toffMg 0-63
tonSg 0-8
tonMg 0-8

tmodeS 1
tmodeM 1

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

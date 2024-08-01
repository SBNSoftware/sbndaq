#!/usr/bin/env bash
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }

export SBNDAQ_VERSION='v1_10_01'
export DAQINTERFACE_VERSION='v3_13_00'
#export MFEXTENSIONS_VERSION='v1_09_00'
export BUILD_VARIANT='gcc@12.2.0'

export DAQINTERFACE_CONFIGURE_STATUS_CHECK_QUIET_TIME=60

export SPACK_DISABLE_LOCAL_CONFIG=true

export THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

unset PYTHONPATH

SPACK_INSTALL_DIR=/daq/software/spack_packages/spack/current/NULL

[[ -f ${SPACK_INSTALL_DIR}/share/spack/setup-env.sh ]] || { echo "Error: Not a Spack installation. This is a critical error with loading Spack packages."; return 10; }

source ${SPACK_INSTALL_DIR}/share/spack/setup-env.sh 2>&1
[[ $? == 0 ]] || {  echo "Error: source setup-env.sh failed. This is a critical error with loading Spack packages."; return 10; }

export SPACK_DISABLE_LOCAL_CONFIG=true

which spack >/dev/null 2>&1 || { echo "Error: Spack not setup. This is a critical error with loading Spack packages."; return 10; }

spack unload --all 2>&1 
[[ $? == 0 ]] || {  echo "Error: \"spack unload --all\" failed. This is a critical error with loading Spack packages."; return 10; }

export SPACK_ARCH="linux-$(spack arch --operating-system 2>/dev/null)-x86_64_v2"

DAQINTERFACE_VERSION_FOUND=$(spack find -p artdaq-daqinterface%${BUILD_VARIANT} arch=${SPACK_ARCH} 2>/dev/null \
  | grep 'artdaq-daqinterface' | grep -Eo '@v[0-9_]+' | tr -d \@ |sort -ur | head -1 )

export DAQINTERFACE_VERSION=${DAQINTERFACE_VERSION:-"${DAQINTERFACE_VERSION_FOUND}"}

for i in {1..3}; do
  echo "Loading sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT} (try $i)"
  spack load sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT} arch=${SPACK_ARCH} 2>&1
  [[ $? == 0 ]] && { echo "Loaded sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT}"; break; } \
    || echo "Error: \"spack load sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT}\" failed. Retrying..."
  sleep 5
done

#spack load artdaq-daqinterface@${DAQINTERFACE_VERSION}%${BUILD_VARIANT} arch=${SPACK_ARCH} 2>&1
#[[ $? == 0 ]] && echo "Loaded artdaq-daqinterface@${DAQINTERFACE_VERSION}%${BUILD_VARIANT}" \
#  || {  echo "Error: \"spack load artdaq-daqinterface@${DAQINTERFACE_VERSION}%${BUILD_VARIANT}\" failed. This is a critical error with loading Spack packages."; return 11; }
#
export PATH=${THIS_SBN_DAQ_DAQINTERFACE_DIR}/overrides:${PATH}


which DAQInterface.sh >/dev/null 2>&1 || { echo "Error: DAQInterface not setup. This is a critical error with loading Spack packages."; return 11; }

#PACKAGE_SETUP_SCRIPT="not-set"
#which package_setup.sh >/dev/null 2>&1 && PACKAGE_SETUP_SCRIPT=$(which package_setup.sh) \
#  || { echo "Error: package_setup.sh not found in PATH. This is a critical error with loading Spack packages."; return 11; }
#echo "PACKAGE_SETUP_SCRIPT: $PACKAGE_SETUP_SCRIPT" 


export ARTDAQ_DAQINTERFACE_DIR=$(dirname $(dirname $( which DAQInterface.sh 2>/dev/null )))

export DAQINTERFACE_SETTINGS=${THIS_SBN_DAQ_DAQINTERFACE_DIR}/user_settings
export DAQINTERFACE_USER_SOURCEFILE=${THIS_SBN_DAQ_DAQINTERFACE_DIR}/user_sourcefile

#retry running the script if it fails up to 3 times with a 2 second delay
echo "ARTDAQ_DAQINTERFACE_DIR: $ARTDAQ_DAQINTERFACE_DIR" 
#for i in {1..3}; do
#  echo "Loading sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT} (try $i)"
#  source ${PACKAGE_SETUP_SCRIPT} "sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT}"  2>&1 
#  [[ $? == 0 ]] && { echo "Loaded sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT}"; break; } \
#    || echo "Error: \"source package_setup.sh sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT}\" failed. Retrying..."
#  sleep 5
#done


for i in {1..3}; do
  echo "Loading sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT} (try $i)"
  spack load sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT} arch=${SPACK_ARCH} 2>&1
  [[ $? == 0 ]] && { echo "Loaded sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT}"; break; } \
    || echo "Error: \"spack load sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT}\" failed. Retrying..."
  sleep 5
done

which artdaqRunControl >/dev/null 2>&1 || { echo "Error: artdaqRunControl not set up. This is a critical error with loading Spack packages."; return 11; }

export PYTHONPATH=$(echo "$PYTHONPATH" | awk -v RS=':' -v ORS=':' '!seen[$0]++' | sed 's/:$//')

export ARTDAQ_DATABASE_CONFDIR=/daq/software/database/config

#Trace setup for debugging:
which trace_functions.sh >/dev/null 2>&1 && source $(which trace_functions.sh 2>/dev/null) \
  || { echo "Error: trace_functions.sh not found in PATH. This is a critical error with loading Spack packages."; return 11; }

export TRACE_FILE=/tmp/trace_$(whoami)_p1

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

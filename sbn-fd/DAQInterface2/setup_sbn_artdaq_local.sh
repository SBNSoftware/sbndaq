#!/usr/bin/env bash
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }

SBNDAQ_SUITE_VERSION="v1_10_01"
SOFTWARE_ROOT=/daq/software

SPACK_AREA=${HOME}/DAQ_SPACK_DevAreas/DAQ_2024-06-03_GAL_v1_10_01

export LANG='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

unset DAQINTERFACE_TRACE_SCRIPT
THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

export SPACK_ROOT=${SPACK_AREA}/SPACK_ROOT
export SPACK_USER_CONFIG_PATH=${SPACK_AREA}/.spack
#export SPACK_DISABLE_LOCAL_CONFIG=true

export SPACK_ARCH='linux-scientific7-x86_64'
[[ $(uname -r) =~ ^3\.10\.0- ]] && export SPACK_ARCH='linux-scientific7-x86_64'

source ${SPACK_ROOT}/share/spack/setup-env.sh 2>/dev/null
spack env activate --prompt --dir ${SPACK_AREA} 2>/dev/null
spack find -lf --loaded 2>&1 | grep -v 'Warning: Missing dependency not in database:' 

export ARTDAQ_DATABASE_CONFDIR=/daq/software/database/config

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED

#Trace setup for debugging:
source $(which trace_functions.sh 2>/dev/null) \
  || echo "trace_functions.sh not found in PATH."

export TRACE_FILE=/tmp/trace_$(whoami)_p1
echo "TRACE_FILE=$TRACE_FILE"

#suppress debug messages
toffSg 8-63
toffMg 8-63
tonSg 0-7
tonMg 0-7
tmodeS 1
tmodeM 1

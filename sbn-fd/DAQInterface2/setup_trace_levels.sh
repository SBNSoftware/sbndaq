#!/usr/bin/env bash
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }

THIS_SCRIPT_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))
#Trace setup for debugging:
which trace_functions.sh >/dev/null 2>&1 && source $(which trace_functions.sh 2>/dev/null) \
  || { echo "Error: trace_functions.sh not found in PATH. This is a critical error with loading Spack packages."; return 11; }

partition=$(grep -Eo "export.*DAQINTERFACE_PARTITION_NUMBER=.*" ${THIS_SCRIPT_DIR}/user_sourcefile |cut -d"=" -f2)

export TRACE_FILE=/tmp/trace_$(whoami)_p${partition}

#suppress debug messages
#
toffSg 0-63
toffMg 0-63
tonSg 0-8
tonMg 0-8

tmodeS 1
tmodeM 1


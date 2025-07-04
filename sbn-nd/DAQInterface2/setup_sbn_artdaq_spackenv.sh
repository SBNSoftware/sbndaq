#!/usr/bin/env bash
echo "*** Running $(basename "${BASH_SOURCE}") on $(hostname -s)."
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "Error: The script $(basename "${BASH_SOURCE}") should be sourced!"; exit 1; }

#------------------------------------------------------------------------------
# Configuration variables
#------------------------------------------------------------------------------
SBNDAQ_VERSION='migration_artdaqv3_13_02'

#------------------------------------------------------------------------------
# Release specific variables
#------------------------------------------------------------------------------
BUILD_VARIANT='gcc@13.1.0'
CXXSTD='c++20'
QUALIFIER='s=131'
SPACK_MICRO_ARCH='v2'


SPACK_RELEASE=v1.0.1.sbnd 

#------------------------------------------------------------------------------
# Spack installation
#------------------------------------------------------------------------------
SPACK_INSTALL_DIR="/daq/software/spack_packages/spack/${SPACK_RELEASE}/NULL"

#------------------------------------------------------------------------------
# Operating system detection
#------------------------------------------------------------------------------
THIS_OS=$(cat /etc/os-release | grep "PRETTY_NAME")
if [[ $THIS_OS =~ "Scientific" ]]; then
  export OS_NAME=scientific7
elif [[ $THIS_OS =~ "AlmaLinux" ]]; then
  export OS_NAME=almalinux9
else
  echo "Warning: Unknown OS detected. Using default configuration."
  export OS_NAME=scientific7  # Default fallback
fi

#------------------------------------------------------------------------------
# Directory setup
#------------------------------------------------------------------------------
export THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath --physical "$(dirname "${BASH_SOURCE[0]}")")
export THIS_SPACK_DEV_TOP_DIR=$(cd "$(dirname "$(dirname "${BASH_SOURCE[0]}")")" && pwd)
export THIS_SPACK_ENV_TOP_DIR=${THIS_SPACK_DEV_TOP_DIR}/${OS_NAME}-${BUILD_VARIANT//@/}-${CXXSTD}-${QUALIFIER//=/}

echo "Spack dev area: $THIS_SPACK_DEV_TOP_DIR"
echo "Spack environment: $THIS_SPACK_ENV_TOP_DIR"

#------------------------------------------------------------------------------
# Environment validation
#------------------------------------------------------------------------------
if [[ ! -f ${THIS_SPACK_ENV_TOP_DIR}/spack.yaml ]] || [[ ! -f ${THIS_SPACK_ENV_TOP_DIR}/spack.lock ]]; then
  echo "Error: The spack environment is not setup correctly."
  echo "       Either spack.yaml or spack.lock is missing in ${THIS_SPACK_ENV_TOP_DIR}"
  return 1
fi

export SPACK_DISABLE_LOCAL_CONFIG=true
unset SPACK_USER_CONFIG_PATH
unset PYTHONPATH
export SPACK_USER_CONFIG_PATH=${THIS_SPACK_DEV_TOP_DIR}/spack

if [[ ! -f ${SPACK_USER_CONFIG_PATH}/config.yaml ]]; then
  echo "Error: The local spack config is not setup correctly."
  echo "       ${SPACK_USER_CONFIG_PATH}/config.yaml is missing"
  return 1
fi

#------------------------------------------------------------------------------
# Spack setup
#------------------------------------------------------------------------------
export SPACK_ENV_SCRIPT="${SPACK_INSTALL_DIR}/share/spack/setup-env.sh"

if [[ ! -f "$SPACK_ENV_SCRIPT" ]]; then
  echo "Error: Not a valid Spack installation. Missing setup-env.sh script."
  return 1
fi

if ! source "$SPACK_ENV_SCRIPT" 2>&1; then
  echo "Error: Failed to source Spack setup-env.sh script."
  return 1
fi

if ! command -v spack &>/dev/null; then
  echo "Error: Spack command not available after setup."
  return 2
fi

if ! spack env activate --prompt --dir ${THIS_SPACK_ENV_TOP_DIR}; then
  echo "Error: Failed to activate the Spack environment."
  return 3
fi

echo "Loaded SBN DAQ packages:"
spack find -lpd --loaded | grep sbndaq-suite

SPACK_ARCH="linux-$(spack arch --operating-system 2>/dev/null)-x86_64_${SPACK_MICRO_ARCH}"
echo "Spack architecture: ${SPACK_ARCH}"

if ! command -v artdaqRunControl &>/dev/null; then
  echo "Warning: artdaqRunControl not found in path."
fi

#------------------------------------------------------------------------------
# Environment variable setup
#------------------------------------------------------------------------------
export THIS_SPACK_ENV_VIEW_DIR=${THIS_SPACK_DEV_TOP_DIR}/.spack-env/view
export LD_LIBRARY_PATH=${THIS_SPACK_ENV_VIEW_DIR}/lib64:${THIS_SPACK_ENV_VIEW_DIR}/lib
export WIB_ADDRESS_TABLE_PATH=${THIS_SPACK_ENV_VIEW_DIR}/tables
export WIB_CONFIG_PATH=${THIS_SPACK_ENV_VIEW_DIR}/config
export ARTDAQ_MFEXTENSIONS_DIR=${THIS_SPACK_ENV_VIEW_DIR}
export SETUP_ARTDAQ_MFEXTENSIONS="echo artdaq-mfextensions is loaded"
export ARTDAQ_DAQINTERFACE_VERSION=v3_13_02

if command -v jq >/dev/null 2>&1; then
  export ARTDAQ_DAQINTERFACE_VERSION=$(/bin/cat ${THIS_SPACK_ENV_TOP_DIR}/spack.lock | \
    jq -r '.concrete_specs[] | select(.name == "artdaq-daqinterface") | .version')
  echo "DAQInterface Version: $ARTDAQ_DAQINTERFACE_VERSION"
else
  export ARTDAQ_DAQINTERFACE_VERSION=v3_13_00
  echo "Warning: jq command not found. Cannot determine DAQInterface Version, setting to default value: $ARTDAQ_DAQINTERFACE_VERSION"
fi

#------------------------------------------------------------------------------
# Additional setup scripts
#------------------------------------------------------------------------------
if [[ -f ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_trace_levels.sh ]]; then
  echo "Setting up trace levels..."
  source "${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_trace_levels.sh"
fi

if [[ -f ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_coredumps.sh ]]; then
  echo "Setting up core dumps..."
  source "${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_coredumps.sh"
fi

if [[ -d ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/extra ]]; then
  echo "Running extra setup scripts..."
  for i in "${THIS_SBN_DAQ_DAQINTERFACE_DIR}/extra/"*.sh; do
    if [[ -f $i ]]; then
      echo "  - Running $(basename "$i")"
      /usr/bin/bash "$i"
    fi
  done
fi

echo "*** Finished running $(basename "${BASH_SOURCE}") on $(hostname -s)."
echo

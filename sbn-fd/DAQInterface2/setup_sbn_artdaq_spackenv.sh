#!/usr/bin/env bash
echo "*** Running $(basename "${BASH_SOURCE}") on $(hostname -s)."
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename "${BASH_SOURCE}") should be sourced!"; exit 1; }

SBNDAQ_VERSION='migration_artdaqv3_13_02'

BUILD_VARIANT='gcc@13.1.0'
CXXSTD='c++20'
QUALIFIER='s=132'

SPACK_MICRO_ARCH='v2'
SPACK_INSTALL_DIR="/daq/software/spack_packages/spack/v1.0.1.sbnd/NULL"

export THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")")
export THIS_SPACK_DEV_TOP_DIR=$(cd  "$(dirname "$(dirname "${BASH_SOURCE[0]}")")/.." && pwd)
export THIS_SPACK_ENV_TOP_DIR=${THIS_SPACK_DEV_TOP_DIR}/${OS_NAME}-${BUILD_VARIANT//@/}-${CXXSTD}-${QUALIFIER//=/}

if [[ ! -f ${THIS_SPACK_ENV_TOP_DIR}/spack.yaml ]] || [[ ! -f ${THIS_SPACK_ENV_TOP_DIR}/spack.lock ]]; then
  echo "Error: The spack environment is not setup correctly. This is a critical error with loading Spack packages."
  echo "Error: Either spack.yaml or spack.lock is missing in ${THIS_SPACK_ENV_TOP_DIR}"
  return 1
fi

export SPACK_DISABLE_LOCAL_CONFIG=true
unset SPACK_USER_CONFIG_PATH
export SPACK_USER_CONFIG_PATH=${THIS_SPACK_DEV_TOP_DIR}/spack

if [[ ! -f ${SPACK_USER_CONFIG_PATH}/config.yaml ]]; then
  echo "Error: The local spack config is not setup correctly. This is a critical error with loading Spack packages."
  echo "Error: ${SPACK_USER_CONFIG_PATH}/config.yaml is missing"
  return 1
fi
export SPACK_ENV_SCRIPT="${SPACK_INSTALL_DIR}/share/spack/setup-env.sh"

[[ -f "$SPACK_ENV_SCRIPT" ]] || { echo "Error: Not a Spack installation. This is a critical error with loading Spack packages."; return 1; }

source "$SPACK_ENV_SCRIPT" 2>&1
[[ $? -eq 0 ]] || { echo "Error: source setup-env.sh failed. This is a critical error with loading Spack packages."; return 1; }

if ! command -v spack &>/dev/null; then
  echo "Error: Spack not setup. This is a critical error with loading Spack packages."
  return 2
fi
  
if ! spack env activate --prompt --dir ${THIS_SPACK_ENV_TOP_DIR}; then
   echo "Error: Failed to activate the Spack environment. This is a critical error with loading Spack packages."
  return 3
fi

spack find -lpd --loaded | grep sbndaq-suite

SPACK_ARCH="linux-$(spack arch --operating-system 2>/dev/null)-x86_64_${SPACK_MICRO_ARCH}"
echo "Spack arch: ${SPACK_ARCH}"
  

if ! command -v artdaqRunControl &>/dev/null; then
  echo "Error: artdaqRunControl not set up. This is a critical error with loading Spack packages."
  #return 3
fi
  
export ARTDAQ_MFEXTENSIONS_DIR=${THIS_SPACK_ENV_TOP_DIR}/.spack-env/view
export SETUP_ARTDAQ_MFEXTENSIONS="echo artdaq-mfextensions is loaded"

[[ -f ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_trace_levels.sh ]] \
  && source "${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_trace_levels.sh"

[[ -f ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_coredumps.sh ]] \
  && source "${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_coredumps.sh"

if [[ -d ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/extra ]]; then
  for i in "${THIS_SBN_DAQ_DAQINTERFACE_DIR}/extra/"*.sh; do
    echo "Running $(basename "$i")"
    [[ -f $i ]] && /usr/bin/bash "$i"
  done
fi

echo "*** Finished running $(basename "${BASH_SOURCE}") on $(hostname -s).";echo

return 0

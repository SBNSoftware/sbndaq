#!/usr/bin/env bash
echo "*** Running $(basename "${BASH_SOURCE}") on $(hostname -s)."
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename "${BASH_SOURCE}") should be sourced!"; exit 1; }

SBNDAQ_VERSION='v1_10_02'
BUILD_VARIANT='gcc@12.1.0'

declare -A build_hash_map=(
    [scientific7]="/mtdko6y"
    [almalinux9]="/clnglb4"
)

USE_CACHED_BASH_ENV=False

SPACK_INSTALL_DIR="/daq/software/spack_packages/spack/current/NULL"

OS_NAME=""
case $(uname -r) in
    3.10*) OS_NAME="scientific7" ;;
    5.14*) OS_NAME="almalinux9" ;;
    *) echo "Error: Unsupported OS version"; return 1 ;;
esac

BUILD_HASH="${build_hash_map[${OS_NAME}]}"
export THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")")

if [[ $USE_CACHED_BASH_ENV == True && -f $THIS_SBN_DAQ_DAQINTERFACE_DIR/overrides/spack/bash_environment/sbndaq-${BUILD_HASH#/}.sh ]]; then
  echo "Info: Loading the Spack environment from the cache: sbndaq-${BUILD_HASH#/}.sh" 
  source $THIS_SBN_DAQ_DAQINTERFACE_DIR/overrides/spack/bash_environment/sbndaq-${BUILD_HASH#/}.sh
  [[ $? -eq 0 ]] || { echo "Error: Failed to load the Spack environment from the cache. Try disabling the USE_CACHED_BASH_ENV option, by setting it to False. This is a critical error with loading Spack packages."; return 1; }
  echo "Info: Finished loading the Spack environment from the cache."
else
  unset BUILD_HASH
  export SPACK_DISABLE_LOCAL_CONFIG=true
  export SPACK_ENV_SCRIPT="${SPACK_INSTALL_DIR}/share/spack/setup-env.sh"

  [[ -f "$SPACK_ENV_SCRIPT" ]] || { echo "Error: Not a Spack installation. This is a critical error with loading Spack packages."; return 1; }

  source "$SPACK_ENV_SCRIPT" 2>&1
  [[ $? -eq 0 ]] || { echo "Error: source setup-env.sh failed. This is a critical error with loading Spack packages."; return 1; }

  if ! command -v spack &>/dev/null; then
    echo "Error: Spack not setup. This is a critical error with loading Spack packages."
    return 2
  fi
  
  SPACK_ARCH="linux-$(spack arch --operating-system 2>/dev/null)-x86_64_v2"
  echo "Spack arch: ${SPACK_ARCH}"
  
  BUILD_HASH="${build_hash_map[$(spack arch --operating-system 2>/dev/null)]:-}"
  [[ -z $BUILD_HASH ]] && BUILD_HASH=""

  for i in {1..10}; do
    echo "Loading sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT} ${BUILD_HASH} (try $i)"
    if spack load sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT} arch="${SPACK_ARCH}" ${BUILD_HASH} 2>&1; then
      echo "Loaded  sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT} ${BUILD_HASH}"
      break
    else
      echo "Error: \"spack load sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT}\ ${BUILD_HASH} \" failed. Retrying..."
      sleep $((4 + RANDOM % 3))
    fi
  done
  
  if ! command -v artdaqRunControl &>/dev/null; then
    echo "Error: artdaqRunControl not set up. This is a critical error with loading Spack packages."
    return 3
  fi
  
  export ARTDAQ_MFEXTENSIONS_DIR=$(spack find -pd --loaded | grep artdaq-mfextensions | grep -Eo '/.*$')
  export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

  if [[ $USE_CACHED_BASH_ENV == True ]]; then
    if [[ -f ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/capture-bash-environment.sh ]]; then
      echo "Info: running capture-bash-environment.sh"
      source ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/capture-bash-environment.sh 2>&1
      if [[ -n "$ENV_OUTPUT_FILE" && -f "$ENV_OUTPUT_FILE" ]]; then
        cp "$ENV_OUTPUT_FILE" "${THIS_SBN_DAQ_DAQINTERFACE_DIR}/overrides/spack/bash_environment/sbndaq-${BUILD_HASH#/}.sh1"
        echo "Info: saved bash environment to ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/overrides/spack/bash_environment/sbndaq-${BUILD_HASH#/}.sh"
      fi
      echo "Info: finished running capture-bash-environment.sh"
    fi
  fi

fi

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

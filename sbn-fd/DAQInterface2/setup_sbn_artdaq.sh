#!/usr/bin/env bash
echo "*** Running $(basename "${BASH_SOURCE}") on $(hostname -s)."
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename "${BASH_SOURCE}") should be sourced!"; exit 1; }

SBNDAQ_VERSION='v1_10_01'
BUILD_VARIANT='gcc@12.2.0'

export SPACK_DISABLE_LOCAL_CONFIG=true
export THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")")

if ! command -v spack &>/dev/null; then
  echo "Error: Spack not setup. This is a critical error with loading Spack packages."
  return 2
fi

SPACK_ARCH="linux-$(spack arch --operating-system 2>/dev/null)-x86_64_v2"
echo "Spack arch: ${SPACK_ARCH}"

for i in {1..10}; do
  echo "Loading sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT} (try $i)"
  if spack load sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT} arch="${SPACK_ARCH}" 2>&1; then
    echo "Loaded  sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT}"
    break
  else
    echo "Error: \"spack load sbndaq-suite@${SBNDAQ_VERSION}%${BUILD_VARIANT}\" failed. Retrying..."
    sleep $((4 + RANDOM % 3))
  fi
done

if ! command -v artdaqRunControl &>/dev/null; then
  echo "Error: artdaqRunControl not set up. This is a critical error with loading Spack packages."
  return 3
fi

export ARTDAQ_MFEXTENSIONS_DIR=$(spack find -pd --loaded | grep artdaq-mfextensions | grep -Eo '/.*$')
export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

[[ -f ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_trace_levels.sh ]] \
  && source "${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_trace_levels.sh"

if [[ -d ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/extra ]]; then
  for i in "${THIS_SBN_DAQ_DAQINTERFACE_DIR}/extra/"*.sh; do
    echo "Running $(basename "$i")"
    [[ -f $i ]] && /usr/bin/bash "$i"
  done
fi

echo "*** Finished running $(basename "${BASH_SOURCE}") on $(hostname -s).";echo

return 0

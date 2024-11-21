#!/usr/bin/env bash
echo "*** Running $(basename "${BASH_SOURCE}") on $(hostname -s)."

[[ "$0" != "${BASH_SOURCE[0]}" ]] || { echo "The script $(basename "${BASH_SOURCE[0]}") should be sourced!"; exit 1; }

#source $(realpath "$(dirname "${BASH_SOURCE[0]}")")/unset_all.sh

SPACK_INSTALL_DIR="/daq/software/spack_packages/spack/current/NULL"
SPACK_ENV_SCRIPT="${SPACK_INSTALL_DIR}/share/spack/setup-env.sh"

[[ -f "$SPACK_ENV_SCRIPT" ]] || { echo "Error: Not a Spack installation. This is a critical error with loading Spack packages."; return 10; }

unalias -a

source "$SPACK_ENV_SCRIPT" 2>&1
[[ $? -eq 0 ]] || { echo "Error: source setup-env.sh failed. This is a critical error with loading Spack packages."; return 10; }

export THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath "$(dirname "${BASH_SOURCE[0]}")")

export DAQ_SETUP_SCRIPT="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_sbn_artdaq.sh"

export DAQINTERFACE_CONFIGURE_STATUS_CHECK_QUIET_TIME=60

export SPACK_DISABLE_LOCAL_CONFIG=true
#export DAQINTERFACE_DISABLE_BOOKKEEPING=true

export MULTICAST_INTERFACE_IP_TO_USE='10.226.36.0'

echo "Info: sourcing setup_sbn_artdaq.sh"

source "${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_sbn_artdaq.sh"

which DAQInterface.sh >/dev/null 2>&1 \
  || { echo "Error: DAQInterface not setup. This is a critical error with loading Spack packages."; return 11; }

echo "Loaded Spack packages:"
spack find -dl --loaded | grep -E '(sbndaq|artdaq|wibtools)'
echo

export ARTDAQ_MFEXTENSIONS_DIR=$(spack find -pd --loaded | grep artdaq-mfextensions | grep -Eo '/.*$')

echo "ARTDAQ_MFEXTENSIONS_DIR: $ARTDAQ_MFEXTENSIONS_DIR"

export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

unset PYTHONPATH
export ARTDAQ_DAQINTERFACE_DIR=$(dirname "$(dirname "$(which DAQInterface.sh 2>/dev/null)")")

export PATH="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/overrides:${PATH}"

export DAQINTERFACE_SETTINGS="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/user_settings"
export DAQINTERFACE_USER_SOURCEFILE="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/user_sourcefile"

echo "ARTDAQ_DAQINTERFACE_DIR: $ARTDAQ_DAQINTERFACE_DIR"; echo

export PYTHONPATH=$(echo "$PYTHONPATH" | awk -v RS=':' -v ORS=':' '!seen[$0]++' | sed 's/:$//')

export ARTDAQ_DATABASE_CONFDIR="/daq/software/database/config"

export PYTHONUNBUFFERED=true

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED

[[ -f "$ARTDAQ_DAQINTERFACE_DIR/source_me" ]] \
  && { echo "Sourcing $ARTDAQ_DAQINTERFACE_DIR/source_me"; source "$ARTDAQ_DAQINTERFACE_DIR/source_me"; }

echo "*** Finished running $(basename "${BASH_SOURCE}") on $(hostname -s).";echo

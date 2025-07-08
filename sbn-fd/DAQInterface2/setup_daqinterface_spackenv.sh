#!/usr/bin/env bash

echo "*** Running $(basename "${BASH_SOURCE}") on $(hostname -s)."

[[ "$0" != "${BASH_SOURCE[0]}" ]] || {
  echo "Error: The script $(basename "${BASH_SOURCE[0]}") should be sourced!";
  exit 1;
}

unalias -a

export THIS_SBN_DAQ_DAQINTERFACE_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
echo "DAQInterface Directory: $THIS_SBN_DAQ_DAQINTERFACE_DIR"

export DAQ_SETUP_SCRIPT="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_sbn_artdaq_spackenv.sh"
echo "DAQ Setup Script: $DAQ_SETUP_SCRIPT"

export SPACK_USER_CONFIG_PATH=${THIS_SBN_DAQ_DAQINTERFACE_DIR}/overrides/spack
export SPACK_DISABLE_LOCAL_CONFIG=true

echo "Sourcing $(basename "${DAQ_SETUP_SCRIPT}")"
source "${DAQ_SETUP_SCRIPT}"

echo "Loaded Spack packages: "
spack --config-scope ${SPACK_USER_CONFIG_PATH} find -dl --loaded | grep -E '(sbndaq|artdaq|wibtools)'
echo

echo "Spack dev area: $THIS_SPACK_DEV_TOP_DIR"
if [[ -z "${THIS_SPACK_DEV_TOP_DIR}" ]]; then
  echo "Error: THIS_SPACK_DEV_TOP_DIR is not set, cannot continue; exiting."
  return 1
elif [[ ! -d "${THIS_SPACK_DEV_TOP_DIR}" ]]; then
  echo "Error: Spack area does not exist, exiting."
  return 1
fi

echo "Spack environment: ${THIS_SPACK_ENV_TOP_DIR}"
if [[ -z "${THIS_SPACK_ENV_TOP_DIR}" ]]; then
  echo "Error: THIS_SPACK_ENV_TOP_DIR is not set, cannot continue; exiting."
  return 1
elif [[ ! -d "${THIS_SPACK_ENV_TOP_DIR}/.spack-env/view" ]]; then
  echo "Error: Spack dev environment is not setup correctly,"
  echo "the $THIS_SPACK_ENV_TOP_DIR/.spack-env/view directory does not exist, exiting."
  return 1
fi

export THIS_SPACK_ENV_VIEW_DIR=${THIS_SPACK_ENV_TOP_DIR}/.spack-env/view
export PATH="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/overrides:${PATH}"

which DAQInterface.sh >/dev/null 2>&1 || {
  echo "Error: DAQInterface not setup. This is a critical error with loading Spack packages.";
  return 11;
}

which artdaqRunControl >/dev/null 2>&1 || {
  echo "Error: artdaqRunControl not setup. This is a critical error with loading Spack packages.";
  return 12;
}

export ARTDAQ_DAQINTERFACE_DIR=$(dirname "$(dirname "$(which DAQInterface.sh 2>/dev/null)")")
echo "Found DAQInterface.sh in $ARTDAQ_DAQINTERFACE_DIR"
export DAQINTERFACE_SETTINGS="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/user_settings"
export DAQINTERFACE_USER_SOURCEFILE="${THIS_SBN_DAQ_DAQINTERFACE_DIR}/user_sourcefile"

export USE_SBN_DEVAREA_VERSIONING=true
export PACKAGE_NAME_DELIMITER='_'
export SPACK_KEEP_PACKAGE_VERSIONS="artdaq,sbndaq,wibtools"
export DAQINTERFACE_CONFIGURE_STATUS_CHECK_QUIET_TIME=60
export MULTICAST_INTERFACE_IP_TO_USE='192.168.191.0'
echo "DAQ Multicast Subnet: $MULTICAST_INTERFACE_IP_TO_USE"

export SETUP_ARTDAQ_MFEXTENSIONS="echo artdaq-mfextensions is loaded"
export ARTDAQ_MFEXTENSIONS_DIR=${THIS_SPACK_ENV_VIEW_DIR}

export PYTHONPATH=$(echo "$PYTHONPATH" | awk -v RS=':' -v ORS=':' '!seen[$0]++' | sed 's/:$//')
export PYTHONPATH=${THIS_SPACK_ENV_VIEW_DIR}/bin:${THIS_SPACK_ENV_VIEW_DIR}/python:/tmp/artdaq-database/:$PYTHONPATH
echo "Using PYTHONPATH: $PYTHONPATH"

export ARTDAQ_DATABASE_CONFDIR="/daq/software/database/config"
export PYTHONUNBUFFERED=true

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED

[[ -f "$ARTDAQ_DAQINTERFACE_DIR/source_me" ]] && {
  echo "Sourcing $ARTDAQ_DAQINTERFACE_DIR/source_me";
  source "$ARTDAQ_DAQINTERFACE_DIR/source_me";
}

if command -v jq >/dev/null 2>&1; then
  export ARTDAQ_DATABASE_VERSION=$(/bin/cat ${THIS_SPACK_ENV_TOP_DIR}/spack.lock | \
    jq -r '.concrete_specs[] | select(.name == "artdaq-database") | .version')
  echo "ARTDAQ Database Version: $ARTDAQ_DATABASE_VERSION"
else
  export ARTDAQ_DATABASE_VERSION=v0_00_00
  echo "Warning: jq command not found. Cannot determine ARTDAQ Database Version, setting to default value: $ARTDAQ_DATABASE_VERSION"
fi

echo "*** Finished running $(basename "${BASH_SOURCE}") on $(hostname -s)."
echo

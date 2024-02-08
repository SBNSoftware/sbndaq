#!/bin/bash
(return 0 2>/dev/null) || { echo "This script should be sourced from BASH!"; exit 1; }

# reconfigure locale
export LANG='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

#default setup file is:
export SETUP_FILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/setup_sbn_artdaq.sh
LOCAL_SETUP_FILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/setup_sbn_artdaq_local.sh

[[ "${THIS_SBN_DAQ_DAQINTERFACE_DIR}" =~ DAQ_ProdAreas ]] && unset LOCAL_SETUP_FILE

#if a local setup file exists, use that instead
[[ -f $LOCAL_SETUP_FILE ]]  && export SETUP_FILE=$LOCAL_SETUP_FILE

echo "Setting up with: $SETUP_FILE"
source $SETUP_FILE

export DAQINTERFACE_USER_SOURCEFILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/user_sourcefile
export DAQINTERFACE_USER_DIR=$THIS_SBN_DAQ_DAQINTERFACE_DIR

[[ -f $ARTDAQ_DAQINTERFACE_DIR/source_me ]] && {
  echo "Sourcing $ARTDAQ_DAQINTERFACE_DIR/source_me"
  source $ARTDAQ_DAQINTERFACE_DIR/source_me
}

#[[ -x "$THIS_SBN_DAQ_DAQINTERFACE_DIR/fix_host_in_meassagefacility_fcl.sh" ]] && {
#  echo "Calling fix_host_in_messagefacility_fcl.sh"
#  $THIS_SBN_DAQ_DAQINTERFACE_DIR/fix_host_in_meassagefacility_fcl.sh
#}

ups active |grep -vE "(/daq/software|setup_sbn_artdaq)"

setup artdaq_runcontrol_gui v1_03_05 -q e26:prof

export PYTHONUNBUFFERED=TRUE

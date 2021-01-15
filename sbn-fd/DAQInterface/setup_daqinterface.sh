#!/bin/bash

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

#default setup file is:
export SETUP_FILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/setup_sbn_artdaq.sh
LOCAL_SETUP_FILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/setup_sbn_artdaq_local.sh

#if a local setup file exists, use that instead
[[ -f $LOCAL_SETUP_FILE ]]  && export SETUP_FILE=$LOCAL_SETUP_FILE

echo "Setting up with: $SETUP_FILE"
source $SETUP_FILE

export DAQINTERFACE_USER_SOURCEFILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/user_sourcefile
export DAQINTERFACE_USER_DIR=$THIS_SBN_DAQ_DAQINTERFACE_DIR

if [ -f $ARTDAQ_DAQINTERFACE_DIR/source_me ]; then
  echo "Sourcing " $ARTDAQ_DAQINTERFACE_DIR/source_me
  source $ARTDAQ_DAQINTERFACE_DIR/source_me
fi

if [ -x "$THIS_SBN_DAQ_DAQINTERFACE_DIR/fix_host_in_meassagefacility_fcl.sh" ]; then 
  $THIS_SBN_DAQ_DAQINTERFACE_DIR/fix_host_in_meassagefacility_fcl.sh
fi

setup artdaq_runcontrol_gui v1_02_01 -q e19:prof

#!/bin/bash

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(dirname "${BASH_SOURCE[0]}")
THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath "$THIS_SBN_DAQ_DAQINTERFACE_DIR")

#default setup file is:
export SETUP_FILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/setup_sbn_artdaq.sh
LOCAL_SETUP_FILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/setup_sbn_artdaq_local.sh

#if a local setup file exists, use that instead
if [ -f $LOCAL_SETUP_FILE ]; then
    export SETUP_FILE=$LOCAL_SETUP_FILE
fi

echo "Setting up with : $SETUP_FILE"
source $SETUP_FILE

export DAQINTERFACE_USER_SOURCEFILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/user_sourcefile
export DAQINTERFACE_USER_DIR=$THIS_SBN_DAQ_DAQINTERFACE_DIR

if [ -f $ARTDAQ_DAQINTERFACE_DIR/source_me ]; then
  echo "Sourcing " $ARTDAQ_DAQINTERFACE_DIR/source_me
  source $ARTDAQ_DAQINTERFACE_DIR/source_me
fi

sed -i 's/LOCALHOST/'${HOSTNAME%%.*}'/g' $THIS_SBN_DAQ_DAQINTERFACE_DIR/MessageFacility_Local.fcl
export DAQINTERFACE_MESSAGEFACILITY_FHICL=$THIS_SBN_DAQ_DAQINTERFACE_DIR/MessageFacility_Local.fcl

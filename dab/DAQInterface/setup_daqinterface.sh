#!/bin/bash

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(pwd)

#default setup file is:
SETUP_FILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/setup_sbn_artdaq.sh
LOCAL_SETUP_FILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/setup_sbn_artdaq_local.sh

#if a local setup file exists, use that instead
if [ -f $LOCAL_SETUP_FILE ]; then
    SETUP_FILE=$LOCAL_SETUP_FILE
fi

echo "Setting up with : $SETUP_FILE"
source $SETUP_FILE

export DAQINTERFACE_USER_SOURCEFILE=$THIS_SBN_DAQ_DAQINTERFACE_DIR/user_sourcefile
source $ARTDAQ_DAQINTERFACE_DIR/source_me


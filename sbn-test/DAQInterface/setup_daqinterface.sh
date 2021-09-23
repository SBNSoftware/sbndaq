#!/bin/bash

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

#default setup file is:
source /daq/software/products/setup > /dev/null 2>&1
unsetup_all > /dev/null 2>&1
for v in $(printenv |grep -Eo '^DAQINTERFACE_.[_A-Z]*'); do unset $v;done
for v in $(echo  FHICL_FILE_PATH ROOT_INCLUDE_PATH PKG_CONFIG_PATH PYTHONPATH MRB_INSTALL LD_LIBRARY_PATH PRODUCTS); do unset $v; done

[[ ! -d ${HOME}/.testing ]] && mkdir -p ${HOME}/.testing/daq/{log/metrics,run_records,data}

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

setup artdaq_runcontrol_gui v1_03_00 -q e20:prof

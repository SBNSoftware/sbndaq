#!/usr/bin/env bash
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }

export THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

source ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_sbn_artdaq.sh 

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED

if [ -f $ARTDAQ_DAQINTERFACE_DIR/source_me ]; then
  echo "Sourcing " $ARTDAQ_DAQINTERFACE_DIR/source_me
  source $ARTDAQ_DAQINTERFACE_DIR/source_me
fi

#export PATH=${THIS_SBN_DAQ_DAQINTERFACE_DIR}/overrides:${PATH}

export DAQ_SETUP_SCRIPT=${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_sbn_artdaq.sh

spack find -dl --loaded |grep -E '(sbndaq|artdaq|wib)'

#if [ -x "$THIS_SBN_DAQ_DAQINTERFACE_DIR/fix_host_in_meassagefacility_fcl.sh" ]; then 
#  $THIS_SBN_DAQ_DAQINTERFACE_DIR/fix_host_in_meassagefacility_fcl.sh
#fi


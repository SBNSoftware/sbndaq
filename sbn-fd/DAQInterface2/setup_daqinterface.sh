#!/usr/bin/env bash
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }

export THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

source ${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_sbn_artdaq.sh 

echo "Loaded Spack packages:"
spack find -dl --loaded |grep -E '(sbndaq|artdaq|wibtools)'
echo; echo;

#export SPACK_ARCH=${SPACK_ARCH:-"linux-$(spack arch --operating-system 2>/dev/null)-x86_64_v2"}
export ARTDAQ_MFEXTENSIONS_DIR=$(spack find -pd --loaded |grep artdaq-mfextensions 2>/dev/null  | grep -Eo '/.*$')
# export ARTDAQ_MFEXTENSIONS_DIR=$(sspack find -p artdaq-mfextensions@${MFEXTENSIONS_VERSION} arch=${SPACK_ARCH} |grep artdaq-mfextensions | grep -Eo '/.*$')
export SETUP_ARTDAQ_MFEXTENSIONS="spack load artdaq-mfextensions"

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED

if [ -f $ARTDAQ_DAQINTERFACE_DIR/source_me ]; then
  echo "Sourcing " $ARTDAQ_DAQINTERFACE_DIR/source_me
  source $ARTDAQ_DAQINTERFACE_DIR/source_me
fi

#export PATH=${THIS_SBN_DAQ_DAQINTERFACE_DIR}/overrides:${PATH}


export DAQ_SETUP_SCRIPT=${THIS_SBN_DAQ_DAQINTERFACE_DIR}/setup_sbn_artdaq.sh


#if [ -x "$THIS_SBN_DAQ_DAQINTERFACE_DIR/fix_host_in_meassagefacility_fcl.sh" ]; then 
#  $THIS_SBN_DAQ_DAQINTERFACE_DIR/fix_host_in_meassagefacility_fcl.sh
#fi


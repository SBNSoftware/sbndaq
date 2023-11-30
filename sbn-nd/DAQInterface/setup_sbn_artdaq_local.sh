#!/usr/bin/env bash

SBNDAQ_VERSION="v1_08_06"
SBNDAQ_QUALS="e20:prof:s120a"
DAQINTERFACE_VERSION="v3_12_06"

unset PRODUCTS
unset DAQINTERFACE_TRACE_SCRIPT

source /daq/software/products/setup
[[ -f /daq/software/products_dev/setup ]] && source /daq/software/products_dev/setup
#[[ -f /home/nfs/sbnd/DAQ_DevAreas/DAQ_28Apr2022REL/localProducts_sbndaq_v1_00_02_e20_debug_s120a ]] && source /home/nfs/sbnd/DAQ_DevAreas/DAQ_28Apr2022REL/localProducts_sbndaq_v1_00_02_e20_debug_s120a

setup mrb v6_08_01

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

# your own local products directory:
LOCAL_MRB_PRODUCTS=$(/bin/ls -d ${THIS_SBN_DAQ_DAQINTERFACE_DIR%srcs*}localProducts* |head -1)
LOCAL_INSTALLED_PRODUCTS=${THIS_SBN_DAQ_DAQINTERFACE_DIR%srcs*}products

#if [[ "$(hostname -s)" =~ sbnd-clk[0-9]{2} ]]; then
#  unset LOCAL_INSTALLED_PRODUCTS
#  SBNDAQ_QUALS="e20:debug:s120a"
#fi
#
if   [ -f $LOCAL_INSTALLED_PRODUCTS/setup ]; then
   source $LOCAL_INSTALLED_PRODUCTS/setup
elif [ -f $LOCAL_MRB_PRODUCTS/setup ]; then
   source $LOCAL_MRB_PRODUCTS/setup
else
   echo "Warning: localProducts/products not found."
fi

setup sbndaq $SBNDAQ_VERSION -q ${SBNDAQ_QUALS}
setup artdaq_demo v3_12_06 -q ${SBNDAQ_QUALS}
setup valgrind

export ARTDAQ_DATABASE_ENV="${HOME}/.artdaq_database-sbndaq${SBNDAQ_VERSION}.env"

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED
setup artdaq_daqinterface $DAQINTERFACE_VERSION

setup artdaq_mfextensions  v1_08_06 -q $SBNDAQ_QUALS

alias rc='artdaqRunControl'

# reconfigure locale
export LANG='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

#Trace setup for debugging:
export DAQINTERFACE_PARTITION_NUMBER=9
export TRACE_FILE=/tmp/trace_$(whoami)_p${DAQINTERFACE_PARTITION_NUMBER}

echo "TRACE_FILE=$TRACE_FILE"

#suppress debug messages
toffSg 8-63
tonSg 0-7
tonMg 0-7
#toffM 1-63 -n PhysCrateData
#toffS 1-63 -n PhysCrateData

#for event numbering checks
#tonM 1-63 -n PhysCrate_GeneratorBase
#tonM 9-15 -n CAENV1730Readout

#tonS 0-debug -n ICARUSTriggerUDP
tmodeS 1
tmodeM 1
if [[ "$(hostname -s)" =~ sbnd-clk[0-9]{2} ]]; then
tonM -N SPECTDCTimestampReader 0-63
#enable read: TDCTimestamp:{ name=beam ... }
tonM -N TDCChan DEBUG+5
#enable applyRequestsWindowMode: applyRequestsWindowMode
tonM -N spectdc_FragmentBuffer DEBUG+29
#enable AddFragmentsToBuffer: Adding Fragment with Fragment
tonM -N spectdc_FragmentBuffer DEBUG+30
#enable Request Packet: hdr=1414678855, seq=3036, ts=
tonM -N spectdc_RequestReceiver DEBUG+36
#enable Stop / Start commands
tonM -N spectdc_CommandableFragmentGenerator DEBUG+43
tonM -N spectdc_CommandableFragmentGenerator DEBUG+43
tonS -N spectdc_CommandableFragmentGenerator DEBUG+44
tonS -N spectdc_CommandableFragmentGenerator DEBUG+44

#remove noise
toffM -N SPECTDCTimestampReader DEBUG+2
toffM -N spectdc_FragmentBuffer DEBUG+25
toffM -N spectdc_FragmentBuffer DEBUG+27
toffM -N spectdc_FragmentBuffer DEBUG+32
toffM -N spectdc_FragmentBuffer DEBUG+32
toffM -N spectdc_RequestReceiver  DEBUG+35
toffM -N spectdc_RequestReceiver  DEBUG+34
toffM -N spectdc_FragmentBuffer DEBUG+28
fi

#if [[ "$(hostname -s)" =~ sbnd-evb[0-9]{2} ]]; then
#toffM -N *_SharedMemoryEventManager 0-63
#toffM -N ArtdaqSharedMemoryService 0-63
#toffM -N SharedMemoryEventReceiver 0-63
#toffM -N SharedMemoryManager 0-63
#toffM -N *RootDAQOut 0-63
#toffM -N MetricManager 0-63
#toffM -N TCPConnect 0-63
#toffM -N EventBuilder1_art1_FragmentWatcher 0-63
#tonM -N EventBuilder1_art1_FragmentWatcher DEBUG+1
#tonS -N EventBuilder1_art1_FragmentWatcher DEBUG+1
#fi

if [[ "$(hostname -s)" =~ sbnd-pds[0-9]{2} ]]; then
tonS -N *CAENV1730Readout  9
tonM -N *CAENV1730Readout  9
fi
#toffM 23 -n SharedMemoryManager
#export TRACE_LIMIT_MS="5,1000,2000"
# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator

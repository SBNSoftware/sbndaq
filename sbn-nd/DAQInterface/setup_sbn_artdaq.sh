#!/usr/bin/env bash
SBNDAQ_VERSION="v1_10_07"
SBNDAQ_QUALS="e26:prof:s131"
DAQINTERFACE_VERSION="v3_13_00"

# reconfigure locale
export LANG='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

unset PRODUCTS

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))
EXTRA_PRODUCTS_DIR=$(echo $THIS_SBN_DAQ_DAQINTERFACE_DIR | awk -F'/srcs/' '{print $1}')/products

source /daq/software/products/setup

echo EXTRA_PRODUCTS_DIR=$EXTRA_PRODUCTS_DIR

[[ -f ${EXTRA_PRODUCTS_DIR}/setup ]] && export PRODUCTS=${EXTRA_PRODUCTS_DIR}:$PRODUCTS
#[[ -f /daq/software/products_dev/setup ]] && source /daq/software/products_dev/setup

setup sbndaq $SBNDAQ_VERSION -q $SBNDAQ_QUALS
setup artdaq_daqinterface $DAQINTERFACE_VERSION

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED
#Trace setup for debugging:
export DAQINTERFACE_PARTITION_NUMBER=${DAQINTERFACE_PARTITION_NUMBER:-"1"}

export TRACE_FILE=/tmp/trace_$(whoami)_p${DAQINTERFACE_PARTITION_NUMBER}

echo "TRACE_FILE=$TRACE_FILE"

ups active | grep  -E "(^sbn|^wib|^artdaq_runcontrol_gui|^caen)"

echo "Setting traces for nevis"
if [[ "$(hostname -s)" =~ sbnd-tpc[0-9]{2} ]]; then
echo "Setting traces for nevis"
tonS -N NevisTPCGenerator2StreamNUandSNXMIT 0-63
tonM -N NevisTPCGenerator2StreamNUandSNXMIT 0-63
#tonS -N NevisTPCGenerator 24                                                                                                                                                          
#tonM -N NevisTPCGenerator 24                                                                                                                                                          
#tonS -N NevisTPCGenerator 14                                                                                                                                                          
#tonM -N NevisTPCGenerator 14                                                                                                                                                          
#toffS -N NevisTPCGenerator 8-63                                                                                                                                                       
#toffM -N NevisTPCGenerator 8-63                                                                                                                                                       
#tonS -N XMITReader 0-63                                                                                                                                                               
#tonM -N XMITReader 0-63                                                                                                                                                               
tonS -N Crate 0-63
tonM -N Crate 0-63
tonS -N NevisTPCFEM 0-63
tonM -N NevisTPCFEM 0-63
fi

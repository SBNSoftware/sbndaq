#!/usr/bin/env bash
SBNDAQ_VERSION="v1_09_01"
SBNDAQ_QUALS="e26:prof:s120a"
DAQINTERFACE_VERSION="v3_12_08"

unset PRODUCTS
unset DAQINTERFACE_TRACE_SCRIPT

# reconfigure locale
export LANG='en_US.UTF-8'
export LC_TIME='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

source /daq/software/products/setup
#[[ -f /daq/software/products_dev/setup ]] && source /daq/software/products_dev/setup
#[[ -f /daq/software/products_experimental/setup ]] && source /daq/software/products_experimental/setup

setup mrb v6_08_01

THIS_SBN_DAQ_DAQINTERFACE_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

# your own local products directory:
LOCAL_MRB_PRODUCTS=$(/bin/ls -d ${THIS_SBN_DAQ_DAQINTERFACE_DIR%srcs*}localProducts* |head -1)
LOCAL_INSTALLED_PRODUCTS=${THIS_SBN_DAQ_DAQINTERFACE_DIR%srcs*}products

if   [ -f $LOCAL_INSTALLED_PRODUCTS/setup ]; then
   source $LOCAL_INSTALLED_PRODUCTS/setup
elif [ -f $LOCAL_MRB_PRODUCTS/setup ]; then
   source $LOCAL_MRB_PRODUCTS/setup
else
   echo "Warning: localProducts/products not found."
fi

setup sbndaq $SBNDAQ_VERSION -q ${SBNDAQ_QUALS}

export ARTDAQ_DATABASE_ENV="${HOME}/.artdaq_database-sbndaq${SBNDAQ_VERSION}.env"

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED
setup artdaq_daqinterface $DAQINTERFACE_VERSION

setup artdaq_mfextensions   v1_08_06 -q $SBNDAQ_QUALS

alias rc='artdaqRunControl'


#Trace setup for debugging:
export TRACE_FILE=/tmp/trace_$(whoami)_p1

echo "TRACE_FILE=$TRACE_FILE"

#start with turning off everything
toffSg 0-63
toffMg 0-63

#turn on what we need
tonSg 0-8     # ton* does not suppress other levels
tonMg 0-8

#if you want to see debug++ messages, ton levels 9 and/or above
#S - slow path and message viewer
#M - memory trace

#toffSg 9-63   # suppress debug++ messages to Slow path
#toffM 1-63 -n PhysCrateData
#toffS 1-63 -n PhysCrateData

#for event numbering checks
#tonM 1-63 -n PhysCrate_GeneratorBase
#tonM 9-15 -n CAENV1730Readout

#turning everything in PMT on
#tonM 0-63 -n CAENV1730Readout


#tonS 0-debug -n ICARUSTriggerUDP
tmodeS 1
tmodeM 1

#Examples to turn on/off messages coming from specific machines and specific classes

#if [[ "$(hostname -s)" =~ icarus-evb[0-9]{2} ]]; then
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
#
#if [[ "$(hostname -s)" =~ icarus-pmt[0-9]{2} ]]; then
#tonS -N *CAENV1730Readout  9
#tonM -N *CAENV1730Readout  9
#fi


#toffM 23 -n SharedMemoryManager
#export TRACE_LIMIT_MS="5,1000,2000"
# toffM 15 -n CommandableFragmentGenerator
# tonM 15 -n CommandableFragmentGenerator


if [[ "$(hostname -s)" =~ icarus-crt11 ]]; then
    echo Checking if the boardreader is running. If not, attempting to kill the Bottom CRT backend
    if ! /usr/sbin/pidof boardreader ; then
        if /usr/sbin/pidof bottomCRTreadout ; then
            echo Attempting to kill the backend
            /usr/bin/killall bottomCRTreadout
        else
            echo Backend not running, no need to kill it
        fi
    else
        echo Boardreader is running, refraining from killing the backend
    fi
fi

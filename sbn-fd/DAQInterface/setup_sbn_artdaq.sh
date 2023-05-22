#!/usr/bin/env bash
source /daq/software/products/setup

SBNDAQ_VERSION="v1_07_02"
DAQINTERFACE_VERSION="v3_12_03" 
MFEXTENSIONS_VERSION="v1_08_03"

SBNDAQ_QUALS="e20:prof:s112"

setup sbndaq $SBNDAQ_VERSION -q $SBNDAQ_QUALS

export ARTDAQ_DATABASE_ENV="${HOME}/.artdaq_database-sbndaq${SBNDAQ_VERSION}.env"

unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED
setup artdaq_daqinterface $DAQINTERFACE_VERSION
setup artdaq_mfextensions $MFEXTENSIONS_VERSION -q $SBNDAQ_QUALS

#configure trace levels
export TRACE_FILE=/tmp/trace_$(whoami)_p1
toffSg 0-63
toffMg 0-63
tonSg 0-8
tonMg 0-8

#!/usr/bin/env bash
source /daq/software/products/setup
#[[ -f /daq/software/products_dev/setup ]] && source /daq/software/products_dev/setup

SBNDAQ_VERSION="v0_07_07"
SBNDAQ_QUALS="e19:prof:s106"
DAQINTERFACE_VERSION="v3_09_08" 

setup sbndaq $SBNDAQ_VERSION -q $SBNDAQ_QUALS
setup artdaq_daqinterface $DAQINTERFACE_VERSION

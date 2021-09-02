#!/usr/bin/env bash
source /daq/software/products/setup
#[[ -f /daq/software/products_dev/setup ]] && source /daq/software/products_dev/setup

SBNDAQ_VERSION="v0_08_04"
SBNDAQ_QUALS="e19:prof:s110"
DAQINTERFACE_VERSION="v3_10_03_01" 

setup sbndaq $SBNDAQ_VERSION -q $SBNDAQ_QUALS
setup artdaq_daqinterface $DAQINTERFACE_VERSION

#!/usr/bin/env bash
source /daq/software/products/setup
[[ -f /daq/software/products_dev/setup ]] && source /daq/software/products_dev/setup

SBNDAQ_VERSION="v1_04_01"
SBNDAQ_QUALS="e20:prof:s112"
DAQINTERFACE_VERSION="v3_12_01"

setup sbndaq $SBNDAQ_VERSION -q $SBNDAQ_QUALS
setup artdaq_daqinterface $DAQINTERFACE_VERSION

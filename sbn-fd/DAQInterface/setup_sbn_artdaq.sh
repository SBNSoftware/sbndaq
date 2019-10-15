#!/usr/bin/env bash
source /software/products/setup
[[ -f /software/products_dev/setup ]] && source /software/products_dev/setup

setup sbndaq v0_03_00 -q e17:prof:s82
unsetup -j artdaq_daqinterface
setup artdaq_daqinterface v3_06_02

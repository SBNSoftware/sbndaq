#!/usr/bin/env bash
source /software/products/setup
setup sbndaq v0_02_00 -q e17:prof
unsetup -j artdaq_daqinterface
setup artdaq_daqinterface v3_04_00

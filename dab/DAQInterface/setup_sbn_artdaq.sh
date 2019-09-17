#!/usr/bin/env bash
source /software/products/setup
setup sbndaq v0_02_06 -q e17:prof
unsetup -j artdaq_daqinterface
setup artdaq_daqinterface v3_06_00

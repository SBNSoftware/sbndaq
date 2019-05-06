#!/usr/bin/env bash
source /software/products/setup
setup sbndaq v0_01_07 -q e17:prof
unsetup -j artdaq_daqinterface
setup artdaq_daqinterface v3_03_01T111318rc

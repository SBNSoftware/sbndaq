#!/usr/bin/env bash
source /software/products/setup
setup sbndaq v0_02_05 -q e17:prof
unsetup -j artdaq_daqinterface
setup artdaq_daqinterface v3_05_00_FB22785CHE8FFC2

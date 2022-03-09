#!/usr/bin/env bash
source /software/products/setup
[[ -f /software/products_dev/setup ]] && source /software/products_dev/setup
setup sbndaq v0_04_00 -q e17:prof:s83
setup artdaq_daqinterface v3_11_01

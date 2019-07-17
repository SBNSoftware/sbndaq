#!/usr/bin/env bash
source /software/products/setup
[[ -f /software/products_dev/setup ]] && /software/products_dev/setup

setup sbndaq v0_02_04 -q e17:prof:s82
unsetup -j artdaq_daqinterface

setup artdaq_daqinterface v3_05_00_FB22785CHE8FFC2

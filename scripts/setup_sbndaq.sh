#! /bin/sh

source /grid/fermiapp/products/artdaq/setup
setup artdaq v3_03_00 -qe15:s64:prof
setup mrb v6_08_01

export MRB_PROJECT=sbndaq

mrb newDev -v v0_01_00 -q e15:prof

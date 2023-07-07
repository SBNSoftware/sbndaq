#!/bin/bash
#SLEEPTIME=15000 #~4 hours
SLEEPTIME=1800 #~30mins

# use link 3 to run untriggered
cp configs/standard/aframe_voltage_scanning/pmtx03_link3.fcl.copy configs/standard/pmtx03.fcl 

# use large pull window
cp configs/standard/aframe_voltage_scanning/crt_XY_pull_untrig.fcl configs/standard/aframe_voltage_scanning/crt_XY_pull.fcl

cp ~/crt_config_backup/gain41/crt_feb_voltage*.fcl configs/standard/aframe_voltage_scanning/

date

cp configs/standard/aframe_voltage_scanning/crt_aframe_250_PULL.fcl configs/standard/crt_aframePULL.fcl
./run
sleep $SLEEPTIME
./stop
date

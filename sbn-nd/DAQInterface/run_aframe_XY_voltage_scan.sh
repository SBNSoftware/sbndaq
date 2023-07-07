#!/bin/bash
#SLEEPTIME=15000 #~4 hours
SLEEPTIME=3200 #~1 hours

# command to change amplifier gain settings from 35 to 41
#sed -i 's/35,/41,/g' crt_feb_voltage154.fcl 

# use link 3 to run untriggered
cp configs/standard/aframe_voltage_scanning/pmtx03_link3.fcl.copy configs/standard/pmtx03.fcl 
# use large pull window
cp configs/standard/aframe_voltage_scanning/crt_XY_pull_untrig.fcl configs/standard/aframe_voltage_scanning/crt_XY_pull.fcl

date

cp configs/standard/aframe_voltage_scanning/crt_aframe_250_PULL.fcl configs/standard/crt_aframePULL.fcl
./run
sleep $SLEEPTIME
./stop
date

cp configs/standard/aframe_voltage_scanning/crt_aframe_225_PULL.fcl configs/standard/crt_aframePULL.fcl
./run
sleep $SLEEPTIME
./stop
date

cp configs/standard/aframe_voltage_scanning/crt_aframe_204_PULL.fcl configs/standard/crt_aframePULL.fcl
./run
sleep $SLEEPTIME
./stop
date

cp configs/standard/aframe_voltage_scanning/crt_aframe_174_PULL.fcl configs/standard/crt_aframePULL.fcl
./run
sleep $SLEEPTIME
./stop
date

cp configs/standard/aframe_voltage_scanning/crt_aframe_154_PULL.fcl configs/standard/crt_aframePULL.fcl
./run
sleep $SLEEPTIME
./stop
date


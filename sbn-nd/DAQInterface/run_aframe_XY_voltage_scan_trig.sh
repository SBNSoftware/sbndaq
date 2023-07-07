#!/bin/bash
SLEEPTIME=15000  # ~4 hours

# switch to the 1730 with the 4-fold coincidence trigger input on link 2
cp configs/standard/aframe_voltage_scanning/pmtx03_shortwindow.fcl.copy configs/standard/pmtx03.fcl 
cp configs/standard/aframe_voltage_scanning/crt_XY_pull_trig.fcl configs/standard/aframe_voltage_scanning/crt_XY_pull.fcl

#date
#cp configs/standard/aframe_voltage_scanning/crt_aframe_114_PULL.fcl configs/standard/crt_aframePULL.fcl

#./run
#sleep $SLEEPTIME
#./stop
#date

#cp configs/standard/aframe_voltage_scanning/crt_aframe_250_PULL.fcl configs/standard/crt_aframePULL.fcl

#./run
#sleep $SLEEPTIME
#./stop
#date

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

#cp configs/standard/aframe_voltage_scanning/crt_aframe_134_PULL.fcl configs/standard/crt_aframePULL.fcl

#./run
#sleep $SLEEPTIME
#./stop
#date

cp configs/standard/aframe_voltage_scanning/pmtx03_link3.fcl.copy configs/standard/pmtx03.fcl 

#!/bin/bash

# the script for single PE search data taking for A-frame, each run is about 2 hours. 

# enlarge the PULL window. 
cp configs/standard/aframe_singlePE_voltage_scanning/crt01PULL_singlePE.fcl configs/standard/crt01PULL.fcl

for i in 140 170 200 230 
do
        echo "configs/standard/aframe_singlePE_voltage_scanning/crt01_aframe_singlePE_${i}.fcl" >> ./runlog_singlePE_search.log
        cp configs/standard/aframe_singlePE_voltage_scanning/crt01_aframe_singlePE_${i}.fcl configs/standard/crt01.fcl
        (./run | tee /dev/tty | grep "run") >> ./runlog_singlePE_search.log
        date >> ./runlog_singlePE_search.log
        sleep 7200
        ./stop
        echo "Ending the run...." >> ./runlog_singlePE_search.log
        date >> ./runlog_singlePE_search.log
        echo " " >> ./runlog_bias_scan.log 
done

# put everything back to normal. 
cp configs/standard/aframe_singlePE_voltage_scanning/crt01.fcl.copy configs/standard/crt01.fcl
cp configs/standard/aframe_singlePE_voltage_scanning/crt01PULL.fcl.copy configs/standard/crt01PULL.fcl

echo "=============== This set of runs stops ===============" >> ./runlog_bias_scan.log
echo " " >> ./runlog_bias_scan.log 

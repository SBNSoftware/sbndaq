#!/bin/bash
SLEEPTIME=11000 #~4 hours
#SLEEPTIME=1800 #~1 hours
#SLEEPTIME=180 #~3 minutes

# 4-fold coinc. "untriggered"
# use link 3 to run untriggered
#cp configs/standard/aframe_voltage_scanning/pmtx03_link3.fcl.copy configs/standard/pmtx03.fcl 
# use large pull window
#cp configs/standard/aframe_voltage_scanning/crt_XY_pull_untrig.fcl configs/standard/aframe_voltage_scanning/crt_XY_pull.fcl

# 8-fold coincidence "triggered"
cp configs/standard/aframe_voltage_scanning/pmtx03_shortwindow.fcl.copy configs/standard/pmtx03.fcl 
cp configs/standard/aframe_voltage_scanning/crt_XY_pull_trig.fcl configs/standard/aframe_voltage_scanning/crt_XY_pull.fcl

cp ~/crt_config_backup/gain52/crt_feb_voltage*.fcl configs/standard/aframe_voltage_scanning/


cp ~/crt_config_backup/gain35/crt_feb_voltage*.fcl configs/standard/aframe_voltage_scanning/
for bias in 204 225
do
    echo "gain 35   bias " $bias >> ./runlog_bias_scan.log
    cp configs/standard/aframe_voltage_scanning/crt_aframe_${bias}_PULL.fcl configs/standard/crt_aframePULL.fcl
    (./run | tee /dev/tty | grep "run") >> ./runlog_bias_scan.log
    date >> ./runlog_bias_scan.log
    sleep $SLEEPTIME
    ./stop
    echo "Ending the run...." >> ./runlog_bias_scan.log
    date >> ./runlog_bias_scan.log
done


echo "=============== This set of runs stops ===============" >> ./runlog_bias_scan.log


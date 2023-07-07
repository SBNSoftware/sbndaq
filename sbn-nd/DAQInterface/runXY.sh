 #!/bin/bash
#SLEEPTIME=15000 #~4 hours
#SLEEPTIME=1800 #~1 hours
SLEEPTIME=300 #~5 minutes

# 4-fold coinc. "untriggered"
# use link 3 to run untriggered
cp configs/standard/aframe_voltage_scanning/pmtx03_link3.fcl.copy configs/standard/pmtx03.fcl 
cp configs/standard/aframe_voltage_scanning/crt_XY_pull_untrig.fcl configs/standard/aframe_voltage_scanning/crt_XY_pull.fcl

# 8-fold coincidence "triggered"
#cp configs/standard/aframe_voltage_scanning/pmtx03_shortwindow.fcl.copy configs/standard/pmtx03.fcl 
#cp configs/standard/aframe_voltage_scanning/crt_XY_pull_trig.fcl configs/standard/aframe_voltage_scanning/crt_XY_pull.fcl

#Use this line to select your gain (options are 35,41,45,49,52)
#cp ~/crt_config_backup/gain45/crt_feb_voltage*.fcl configs/standard/aframe_voltage_scanning/

#Use this line to select your voltage (options are 114,134,154,174,204,225,250)
cp configs/standard/aframe_voltage_scanning/crt_aframe_174_PULL.fcl configs/standard/crt_aframePULL.fcl


./run
sleep $SLEEPTIME
./stop

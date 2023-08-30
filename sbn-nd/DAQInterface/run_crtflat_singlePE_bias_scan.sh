#!/bin/bash

# the script for single PE search data taking for the CRT flat
export log_file=~/hlay/crt_flat/runlog_singlePE_bias_scan_east_setup_1.log
touch ${log_file}
export run_length=7200

# enlarge the PULL window and set dummy generator to 1.2Hz
cp configs/standard/crtflat/singlePE_bias_scan/crt_singlePE_pull.fcl configs/standard/crtflat_east_pull.fcl
cp configs/standard/crtflat/singlePE_bias_scan/dummygenerator_singlePE.fcl configs/standard/dummygenerator.fcl

for i in 140 155 170 185 200 230
do
        echo "configs/standard/crtflat/singlePE_bias_scan/crtflat_east_bias${i}.fcl" >> ${log_file}
        cp configs/standard/crtflat/singlePE_bias_scan/crtflat_east_bias${i}.fcl configs/standard/crtflat_east.fcl
        (./run | tee /dev/tty | grep "run") >> ${log_file}
        date >> ${log_file}
        sleep ${run_length}
        ./stop
        echo "Ending the run...." >> ${log_file}
        date >> ${log_file}
        echo " " >> ${log_file}
done

# put everything back to normal. 
cp configs/standard/crtflat/crtflat_east_igor_tuned.fcl configs/standard/crtflat_east.fcl
cp configs/standard/crtflat/crtflat_east_pull_default.fcl configs/standard/crtflat_east_pull.fcl
cp configs/standard/crtflat/dummygenerator_default.fcl configs/standard/dummygenerator.fcl

echo "=============== This set of runs stops ===============" >> ${log_file}
echo " " >> ${log_file}

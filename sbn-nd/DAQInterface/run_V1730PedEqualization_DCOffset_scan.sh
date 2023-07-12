#!/bin/bash
# Script to run V1730 pedestal equalization (written by Fran Nicolas @fjnicolas@ugr.es)
# Based on the great script done by the friendly CRT AFrame team (Jiaoyang Li)

# Define start, end, and step values for the pedestal equalization range
fStart=90
fEnd=96
fStep=2

# Define data taking period for each DCOffset (in s)
fRunTime=60

# Define max DAC value for the SCOffset
fMaxDAC=65535

# File path to the fhicl with the DCOffset parameter
DCOffset_filepath="configs/standard/V1730PedestalEqualization/PMTV1730_DCOffset.fcl"

# Log file path
logfile="./runlog_V1730_pedestalequal.log"

#for eps in $DACList
for ((i=fStart;i<=fEnd;i+=fStep));
do
    c="0.${i}"

    # Clean the file with the DCOffset parameter
    > "${DCOffset_filepath}"
        
    # Calculate the DCOffset
    DC=$(bc <<< "$fMaxDAC - $c * $fMaxDAC" )

    echo "DCoffset: ${DC}"
    
    # Convert to integer
    DC=${DC/\.*/}

    # Write to file the selected DCOffset
    echo "ped_equal: {DCoffset: ${DC} }" >> "${DCOffset_filepath}"
    echo "ped_equal: {DCoffset: ${DC} }"

    # print to log file
    echo "DCoffset set to ${DC}" >> "${logfile}"
    echo "Running the following fhicl files: "  >> "${logfile}" 
    echo "configs/standard/V1730PedestalEqualization/pmtx_pdsR0_01_PedestalEqualization.fcl" >> "${logfile}"
    cat configs/standard/V1730PedestalEqualization/pmtx_pdsR0_01_PedestalEqualization.fcl >> "${logfile}"
    echo "configs/standard/V1730PedestalEqualization/pmtx_pdsR0_02_PedestalEqualization.fcl" >> "${logfile}"
    cat configs/standard/V1730PedestalEqualization/pmtx_pdsR0_02_PedestalEqualization.fcl >> "${logfile}"
    echo "configs/standard/V1730PedestalEqualization/pmtx_pdsR0_03_PedestalEqualization.fcl" >> "${logfile}"
    cat configs/standard/V1730PedestalEqualization/pmtx_pdsR0_03_PedestalEqualization.fcl >> "${logfile}"
    echo "configs/standard/V1730PedestalEqualization/pmtx_pdsR0_04_PedestalEqualization.fcl" >> "${logfile}"
    cat configs/standard/V1730PedestalEqualization/pmtx_pdsR0_04_PedestalEqualization.fcl >> "${logfile}"
    echo "configs/standard/V1730PedestalEqualization/pmtx_pdsR0_05_PedestalEqualization.fcl" >> "${logfile}"
    cat configs/standard/V1730PedestalEqualization/pmtx_pdsR0_05_PedestalEqualization.fcl >> "${logfile}"
    echo "configs/standard/V1730PedestalEqualization/pmtx_pdsR0_06_PedestalEqualization.fcl" >> "${logfile}"
    cat configs/standard/V1730PedestalEqualization/pmtx_pdsR0_06_PedestalEqualization.fcl >> "${logfile}"
    echo "configs/standard/V1730PedestalEqualization/pmtx_pdsR0_07_PedestalEqualization.fcl" >> "${logfile}"
    cat configs/standard/V1730PedestalEqualization/pmtx_pdsR0_07_PedestalEqualization.fcl >> "${logfile}"
    #echo "configs/standard/V1730PedestalEqualization/pmtx_pdsR0_08_PedestalEqualization.fcl" >> "${logfile}"
    #cat configs/standard/V1730PedestalEqualization/pmtx_pdsR0_08_PedestalEqualization.fcl >> "${logfile}"

     # start the DAQ
     date >> "${logfile}"
     (./run | tee /dev/tty | grep "run") >> ./runlog_V1730_pedestalequal.log
	
     # take data for certain time
     sleep "$fRunTime"

     # stop the DAQ
     ./stop
	
     # info about the run to the log file
     echo "Ending the run...." >>"${logfile}"
     date >> "${logfile}"
     echo " " >> "${logfile}"
done

source /daq/software/products/setup
source /daq/software/products_dev/setup
setup mrb
source /home/lab/jcrespo/projectV1740B/localProducts_sbndaq_v*/setup
mrbslp

echo -e "\n\nkilling all running artdaq processes before starting"
killall -9 artdaqDriver
killall -9 art

#Create run directory
timestamp=`date +%Y%m%d%H%M%S`
#runname="/home/nfs/$USER/runs/Run"$timestamp # NFS disk
#runname="/data/$USER/runs/Run"$timestamp # Local disk
runname="Run"$timestamp # Local dir
mkdir -p $runname
cd $runname
logname="Run"$timestamp".log"
echo -e "\n\nData will be saved at $runname \n\n"

export TRACE_MSGMAX=0
export TRACE_FILE=/run/user/${UID}/tbuffer

treset # reset trace buffer
toffSg 0-63 # disable all trace names from stdout
toffMg 0-63 # disable all trace names from memory
tmodeS 1
tmodeM 1

thefcl=/home/lab/jcrespo/projectV1740B/srcs/sbndaq/ciemat/artdaqDriver/CAENV1740_driver.fcl
#thefcl=/home/lab/jcrespo/projectV1740B/srcs/sbndaq/ciemat/artdaqDriver/CAENV1740_driver_noPPS.fcl
cp $thefcl .

echo -e "\n\n Running $thefcl \n\n"
#tonM 0-3 -n CAENV1740Readout # enable generator (up to debug level)
#tonS 0-3 -n CAENV1740Readout
#tonM 0-12 -n CAENV1740Readout # enable generator (up to status level)
#tonS 0-12 -n CAENV1740Readout
tonM 0-14 -n CAENV1740Readout # enable generator (up to getdata level)
tonS 0-14 -n CAENV1740Readout
artdaqDriver -c $thefcl | tee $logname

echo "killing artdaq processes"
killall -9 artdaqDriver
killall -9 art

cp $TRACE_FILE .

# Currently requires to Ctr+C to kill it
# Read the trace buffer
echo -e "\n\n To read the TRACE buffer type\n tshow |tdelta -d 1 -ct 1 | less"

#cd $HOME # Do not return to $HOME to be able to append the decode/plot script after this

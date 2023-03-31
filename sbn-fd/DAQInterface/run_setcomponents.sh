#!/usr/bin/env bash
this_start=$(date +%s)

function getStatus()
{
  status=`status.sh | grep String | awk '{print $2}' | tr -d "'"`
#  [ $1 != "$status" ] && (echo $status)
  echo $status
}

getStatus "nil"
# [ $status == 'Existing'] && (kill_daqinterface_on_partition.sh 0; exit 0 )


setdaqcomps.sh $3 $4 icarustrigger


send_transition.sh boot $1
getStatus "booting"
while [ "$status" != 'booted' ]
do
  sleep 2
  getStatus "booting"
  [ "$status" == 'stopped' ] && (kill_daqinterface_on_partition.sh $DAQINTERFACE_PARTITION_NUMBER; exit 1 )
done

send_transition.sh config $2
#send_transition.sh config testGALQ

getStatus "configuring"
while [ "$status" != 'ready' ]
do
  sleep 2
  getStatus "configuring"
  [ "$status" == 'stopped' ] && (kill_daqinterface_on_partition.sh $DAQINTERFACE_PARTITION_NUMBER; exit 1 )
  # [ "$status" == 'stopped' ] && ( exit 1 )
done
 
# report_datafile_location

send_transition.sh start
# getStatus "starting"
sleep 2
getStatus "starting"
while [ "$status" != 'running' ]
do
  sleep 2
  getStatus "starting"
  [ "$status" == 'stopped' ] && (kill_daqinterface_on_partition.sh $DAQINTERFACE_PARTITION_NUMBER; exit 1 )
done

this_stop=$(date +%s)
echo "DAQ started in $(( this_stop - this_start )) seconds."



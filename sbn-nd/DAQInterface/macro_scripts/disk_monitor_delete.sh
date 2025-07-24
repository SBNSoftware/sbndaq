for t in tpc;
do
  for h in sbnd-${t}{01..11};
  do
    ping -c 1 -W 1 $h > /dev/null && [[ $? == 0 ]] && echo "Monitoring disks on $h" && ssh sbnd@$h -o ConnectTimeout=1 "python3 /home/nfs/sbnd/DAQ_DevAreas/DAQ_2025-07-11_nevis_sn_production_dev_v1_10_07/DAQInterface/macro_scripts/monitor_delete.py";
  done 2> /dev/null;
done

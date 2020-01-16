for t in  evb ;
do
  for h in icarus-${t}{01..10}-daq;
  do
     ping -c 1 -W 1 $h > /dev/null && [[ $? == 0 ]] && echo "Monitoring disks on $h" && ssh artdaq@$h -o ConnectTimeout=1 "python3 /home/nfs/artdaq/sbin/disk_monitor.py";
   done 2> /dev/null;
done


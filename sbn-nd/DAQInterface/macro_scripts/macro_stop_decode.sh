for t in tpc;
do
  for h in sbnd-${t}{01..11};
  do
    ping -c 1 -W 1 $h > /dev/null && [[ $? == 0 ]] && echo "Killing decoder jobs $h" && ssh sbnd@$h -o ConnectTimeout=1 "pkill -f "decoders/decode"";
    # ping -c 1 -W 1 $h > /dev/null && [[ $? == 0 ]] && echo "Deleting logs $h" && ssh sbnd@$h -o ConnectTimeout=1 "rm /data/SNCommissioning/*.log";
    # ping -c 1 -W 1 $h > /dev/null && [[ $? == 0 ]] && echo "Deleting Waveforms on $h" && ssh sbnd@$h -o ConnectTimeout=1 "rm /data/SNCommissioning/*.txt";
  done 2> /dev/null;
done

for t in tpc;
do
  for h in sbnd-${t}{01..11};
  do
    ping -c 1 -W 1 $h > /dev/null && [[ $? == 0 ]] && echo "Delete decoded on $h" && ssh sbnd@$h -o ConnectTimeout=1 "rm /data/SNCommissioning/*_waveform.txt";
  done 2> /dev/null;
done

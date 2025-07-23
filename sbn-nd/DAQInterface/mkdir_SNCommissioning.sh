for t in tpc;
do
  for h in sbnd-${t}{11..12};
  do
    ping -c 1 -W 1 $h > /dev/null && [[ $? == 0 ]] && echo "mkdir on  $h" && ssh sbnd@$h -o ConnectTimeout=1 "mkdir /data/SNCommissioning";
  done 2> /dev/null;
done

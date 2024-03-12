
echo "starting at " 
date
sec=$((60*$1))
echo "Will sleep for " $1 " minutes = " $sec "seconds after run start"
echo ""
./run
echo "sleeping " $1 " minutes = " $sec "seconds"
sleep $sec 
#$1
echo "done sleeping" $sec
./stop




echo "starting at " 
date
echo ""
./run
echo "sleeping " $1 " seconds"
sleep $1
echo "done sleeping" $1
./stop



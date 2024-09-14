for FEB in `cat list.txt`
do
    sed -i "s/044/${FEB}/g" feb$FEB.fcl
done

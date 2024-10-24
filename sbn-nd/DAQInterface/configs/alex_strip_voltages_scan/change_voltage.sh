CHANGE="s/\[ 0, 0, 1, 200/\[ 0, 0, 1, 230/g"

for FEB in `cat list.txt`
do
    sed -i "$CHANGE" $FEB
done

for FEB in `ls crtf*.fcl`
do
    sed -i "$CHANGE" $FEB
done

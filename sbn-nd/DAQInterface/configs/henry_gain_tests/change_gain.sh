CHANGE="s/15, 3/58, 3/g"

for FEB in `ls feb*.fcl`
do
    sed -i "$CHANGE" $FEB
done

for FEB in `ls crtf*.fcl`
do
    sed -i "$CHANGE" $FEB
done

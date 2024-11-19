CHANGE="s/45, 47/55, 47/g"

for FEB in `ls feb*.fcl`
do
    sed -i "$CHANGE" $FEB
done

for FEB in `ls crtf*.fcl`
do
    sed -i "$CHANGE" $FEB
done

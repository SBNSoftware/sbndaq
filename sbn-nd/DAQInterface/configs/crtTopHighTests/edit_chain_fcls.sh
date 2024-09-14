for CHAIN in `ls crtTopHigh*.fcl`
do
    sed -i 's/low/high/g' $CHAIN
done

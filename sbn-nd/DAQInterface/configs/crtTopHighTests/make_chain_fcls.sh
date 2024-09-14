for CHAIN in `ls crt_toplow_*.fcl`
do
    cp $CHAIN ${CHAIN/toplow/tophigh}
done

for CHAIN in `ls crtTopLow*.fcl`
do
    cp $CHAIN ${CHAIN/TopLow/TopHigh}
done

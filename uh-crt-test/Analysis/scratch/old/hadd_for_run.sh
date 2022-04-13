i=1

for f in `ls /daq/scratch/data/*run1227*`; do
	if [[ "$i" -eq "20" ]]; then
    		break
  	fi
	lar -c ../../analyze_BernCRTV2.fcl ${f}
	hadd berncrt_total.root berncrt_hist*.root
	mv berncrt_total.root berncrt_hist_acc.root
	i=$((i+1))
done

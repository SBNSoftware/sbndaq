#!/bin/bash
table_name=run_records_pending
[[ -f ./${table_name}.sql ]] && rm ./${table_name}.sql

touch  ./${table_name}.sql

run_begin=10230
#run_end=$(find /daq/run_records/ -type d -ctime -5 |grep -oE '[0-9]+'|sort -un |tail -1)
run_end=$(ls /daq/run_records/ |sort -n |tail -1)

echo Validating ${table_name} for runs ${run_begin} thru ${run_end}.
for r in $(seq ${run_begin} ${run_end} ); do
   sleep 0.1

   match_count=0

   for i in $(seq 1 4 ); do
     match_count=$(curl --insecure --retry 3 --retry-delay 1 --max-time 3 --silent https://dbdata0vm.fnal.gov:9443/icarus_on_ucon_prod/app/data/${table_name}/configuration/key=$r | \
       grep -A100 metadata |  grep -E '^(config_name|components|sbndaq_commit_or_version|metadata)' |sort -u |wc -l)
       (( 0 == $match_count )) &&  echo -n '.' || { { (( i != 1 )) && echo; } ;  break; }
   done

   (( 4 == $match_count )) || {
   echo $r $match_count; echo "delete from ucon_prd.${table_name}_versions where key='$r';" >> ./${table_name}.sql; }
done

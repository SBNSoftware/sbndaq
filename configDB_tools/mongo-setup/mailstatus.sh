#!/bin/bash
experiment=changeme
myemail=changeme

logname=`/bin/mktemp`
host=`/bin/hostname`
echo "Date " `/bin/date` > ${logname}
echo "Hostname " `/bin/hostname` >> ${logname}
echo "Uptime " `/usr/bin/uptime` >> ${logname}
echo   >>${logname}
echo   >>${logname}
echo   >>${logname}

echo "Data disk"  >>${logname}
df -h |grep -E "(Filesystem|/data)" >>${logname}

echo   >>${logname}
echo "Last 5 backups" >>${logname}
backups_dir=/scratch_local/artdaq_database/${experiment}_v4x_db/backup
for d in $(ls ${backups_dir} -t|head -5); do 
 echo $(du -hs ${backups_dir}/$d) $(find ${backups_dir}/$d -type f |wc -l) | \
  awk '{printf("%s size=%s files=%s \n", $2, $1, $3)}'|grep -Eo "202.*"  >>${logname} 
done

echo   >>${logname}
. /daq/software/database/setup_database.sh
echo "Last 10 configs" >>${logname}
conftool.py getListOfAvailableRunConfigurations |head -10  >>${logname}

echo   >>${logname}
echo "Last 10 run records" >>${logname}
conftool.py getListOfArchivedRunConfigurations |head -12 |tail -10 >>${logname}

echo   >>${logname}
echo   >>${logname}
echo "Mongo DB"  >>${logname}
systemctl status mongodbserver\@${experiment}_v4x_db.service  >>${logname}

echo   >>${logname}
echo "Mongo DB arbiter"  >>${logname}
systemctl status mongodbarbiter\@${experiment}_v4x_db.service  >>${logname}


/bin/cat - ${logname}  << EOF | /usr/sbin/sendmail -t
To: ${myemail}
Subject: Status ${host}
From: artdaq@$(hostname)

EOF

/bin/rm ${logname}

1. ssh into icarus-db02 as artdaq
2. mkdir -p ~artdaq/sbin/
3. cp  ./*monitor*.*  ~artdaq/sbin/
4. crontab -e
5. add the two lines below and exit the editor
* * * * * /home/nfs/artdaq/sbin/disk_monitor.sh  >> /home/nfs/artdaq/disk_monitor.log
* * * * * python3 /home/nfs/artdaq/sbin/runrecords_monitor.py >> /home/nfs/artdaq/runrecords_monitor.log



#Instructions https://sbnsoftware.github.io/sbn_online_wiki/RunRecordsMonitor
import sys
import time
import ctypes
import os
import platform
import subprocess
import socket
import glob

#add the output from the command below to icarus/sbnd user's crontab
#echo "* * * * * python3 ${CONFIGDB_TOOLS_PATH}/runrecords_monitor.py >> ${DAQINTERFACE_LOGDIR}/runrecords_monitor.log"

this_experiment = os.getenv('EXPERIMENT_NAME',default=socket.gethostname().split('-',1)[0])

grafana_host = os.getenv('GRAFANA_SERVER_HOSTNAME',default='127.0.0.1')
grafana_port = int(os.getenv('GRAFANA_SERVER_PORT',default=2003))
grafana_timeout = float(os.getenv('GRAFANA_CONNECTION_TIMEOUT',default=0.1))

runrecords_dir=os.getenv('DAQ_RUN_RECORDS_DIR',default='/daq/run_records')

this_hostname = socket.gethostname().split('.', 1)[0]

def get_runnumber_metric(path):
    now = int( time.time() )
    results = []
    run_number=max(glob.glob(os.path.join(path, '*/')), key=os.path.getmtime).split('/')[-2]
    results.append("%s.run_number  %s %d"  %(this_experiment,  run_number  , now))
    return '\n'.join(results) + '\n'

sock = socket.socket()
try:
      sock.connect( (grafana_host,grafana_port) )
      sock.settimeout(grafana_timeout)
except:
      print("Couldn't connect to Grafana server host=%s, port=%d; define GRAFANA_SERVER_HOSTNAME and GRAFANA_SERVER_PORT environment variables." %(grafana_host,grafana_port))
      sys.exit(1)

metrics = get_runnumber_metric(runrecords_dir)
sock.sendall( bytearray(metrics,'utf-8'))
print( metrics)
time.sleep( 5 )

for num in range(1,10):
    metrics = get_runnumber_metric(runrecords_dir)
    sock.sendall( bytearray(metrics,'utf-8'))
    print( metrics)

    time.sleep( 5 )


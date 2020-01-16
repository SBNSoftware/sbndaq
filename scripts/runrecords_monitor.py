import sys
import time
import ctypes
import os
import platform
import subprocess
import socket
import glob

runrecords_dir='/daq/run_records'

this_hostname = socket.gethostname().split('.', 1)[0]
this_experiment = 'icarus'

grafana_host = '192.168.191.18'
grafana_port = 2003
grafana_timeout = 0.1

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
      print( "Couldn't connect to Grafana server")
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


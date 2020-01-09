import sys
import time
import ctypes
import os
import platform
import subprocess
import socket

monitor_interval_secs = 30
monitor_volumes = [
'/data', 
'/icarus/data',
'/', 
'/daq/software',
'/daq/scratch',
'/daq/log',
'/daq/run_records',
'/home/nfs'
 ]


this_hostname = socket.gethostname().split('.', 1)[0]
this_experiment = 'icarus'

grafana_host = '192.168.191.18'
grafana_port = 2003
grafana_timeout = 0.1

def get_volume_metrics(volumes):
    now = int( time.time() )
    results = []
    for v in volumes:
        name=v.replace('/','',1).replace('/','_')
          

        if len(name) == 0:
            name = 'root'

        st = os.statvfs(v)
        free_space_gb =  int( st.f_bavail * st.f_frsize / 1024 / 1024 /1024 * 100) / 100
        percent_used = 1.0 -  int(st.f_bavail/st.f_blocks * 100) / 100.0
        results.append("%s.%s.%s.Free_Space_GB %s %d" %(this_experiment, this_hostname, name, free_space_gb, now))
        results.append("%s.%s.%s.Percent_Used %s %d"  %(this_experiment, this_hostname, name, percent_used , now))
    return '\n'.join(results) + '\n'

sock = socket.socket()
try:
      sock.connect( (grafana_host,grafana_port) )
      sock.settimeout(grafana_timeout)
except:
      print( "Couldn't connect to Grafana server")
      sys.exit(1)

metrics = get_volume_metrics(monitor_volumes)
sock.sendall( bytearray(metrics,'utf-8'))

print( metrics)


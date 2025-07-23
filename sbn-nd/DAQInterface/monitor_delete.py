# Seokju Chung, sc5303@columbia.edu 
# 2025-07-23: For now, only display warning, don't actually delete.


import sys
import time
import os
import platform
import subprocess
import glob
import socket

monitor_volumes = [
    '/data',
    # '/', 
    # '/daq/software',
    # '/daq/scratch',
    # '/daq/log',
    # '/daq/run_records',
    # '/home/nfs'
]

this_hostname = socket.gethostname().split('.', 1)[0]
this_experiment = 'sbnd'

# CONFIG: threshold above which to delete files
delete_threshold = 0.75   # 75% usage
delete_lower_threshold = 0.50 # delete down to 50%

# CONFIG: directories to clean up if threshold exceeded
cleanup_dirs = ['/data']

def get_volume_metrics(volumes):
    now = int(time.time())
    results = []
    for v in volumes:
        name = v.replace('/','',1).replace('/','_')
        if len(name) == 0:
            name = 'root'

        st = os.statvfs(v)
        free_space_gb = round(st.f_bavail * st.f_frsize / 1024 / 1024 / 1024, 2)
        percent_used = 1.0 - (st.f_bavail / st.f_blocks)
        
        results.append("%s.%s.%s.Free_Space_GB %s %d" % (this_experiment, this_hostname, name, free_space_gb, now))
        results.append("%s.%s.%s.Percent_Used %s %d"  % (this_experiment, this_hostname, name, round(percent_used, 4), now))

        print(f"[INFO] Volume: {v}, Used: {percent_used*100:.1f}%, Free: {free_space_gb:.2f} GB")
        print(f"[INFO] Delete Threshold: {delete_threshold*100:.0f}%, Lower Threshold: {delete_lower_threshold*100:.0f}%")
        if percent_used >= delete_threshold:
            print(f"[WARNING] Disk usage {percent_used*100:.1f}% exceeds threshold {delete_threshold*100:.0f}% on {v}")
            cleanup_old_files(v)

    return '\n'.join(results) + '\n'


def cleanup_old_files(volume):
    # Only delete in configured directories that match this volume
    for d in cleanup_dirs:
        if not d.startswith(volume):
            continue

        print(f"[ACTION] Cleaning up files in {d}")
        # Get list of files ordered by modification time (oldest first)
        files = sorted(glob.glob(os.path.join(d, '*')), key=lambda f: os.path.getmtime(f))

        for f in files:
            if os.path.isfile(f):
                try:
                    # os.remove(f)
                    print(f"[DELETE] Remove old file: {f}")
                    
                    # Re-check disk usage
                    st = os.statvfs(volume)
                    percent_used = 1.0 - (st.f_bavail / st.f_blocks)
                    print(f"[INFO] Disk usage should be below threshold: {delete_lower_threshold*100:.1f}%, current usage: {percent_used*100:.1f}%")
 
                    if percent_used < delete_lower_threshold:
                        print(f"[INFO] Disk usage dropped below threshold: {percent_used*100:.1f}%")
                        return
                except Exception as e:
                    print(f"[ERROR] Failed to delete {f}: {e}")
            # optional: handle directories, but be careful with recursive deletion!


get_volume_metrics(monitor_volumes)

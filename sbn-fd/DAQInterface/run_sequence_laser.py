#!/bin/python

import time
import sys
import subprocess
import select


components_dict={ "WW" : ["pmtwwtop01", "pmtwwtop02", "pmtwwtop03", "pmtwwbot01", "pmtwwbot02", "pmtwwbot03"], 
             "WE" : ["pmtwetop01", "pmtwetop02", "pmtwetop03", "pmtwebot01", "pmtwebot02", "pmtwebot03", "pmtwwtop01"] }


opchannels=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 41, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]

#config_list = [ ("PMTlaser_%d_opch"%opch)+version for opch in opchannels ]


runtime_minutes = 5
boot_config = "boot_PMTlaser.txt"

runtime_s = 60*runtime_minutes
input_timeout_s = 10
next_config_timeout_s = 1000000

exit_sequence=False
next_config_exit_sequence=False

def process_wait(process):
    process.wait()
    #prev_output=''
    #while True:
    #    output = process.stdout.readline()
    #    if process.poll() is not None and prev_output==output:
    #        print(output)
    #        break
    #    if output:
    #        print(str(output.strip(), 'utf-8'))
    #        prev_output = output

start = 9
end = 19
side="WE"

for iterator in opchannels[start:end]:
	
    config = "PMTlaser00005"
    components = components_dict[side]
    
    run_components = [ "icarus"+name for name in components ]
    print( iterator, config, run_components)
    
    next_config_time_start = time.time()

    while (time.time()-next_config_time_start)<next_config_timeout_s:
        print("Input 'next' to begin config %s. Input 'end' to end the entire run sequence."%config)
        i, o, e = select.select( [sys.stdin], [], [], input_timeout_s )

        if (i):
            next_in_str=sys.stdin.readline().strip()
            if next_in_str=="end":
                print("Ending run sequence. Aborting early.")
                next_config_exit_sequence=True
                break
            elif next_in_str=="next":
                print("Moving to next config.")
                break
            else:
                print("Unrecognized input: %s"%next_in_str)
            
    if next_config_exit_sequence:
        break

    print("Starting run with config %s"%config)
	
    process = subprocess.Popen([ './run_setcomponents.sh',boot_config, config, run_components[0], run_components[1], run_components[2], run_components[3], run_components[4], run_components[5] ], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    process_wait(process)
    rc = process.poll()

    #stdout, stderr = process.communicate()
    print("Run started.")
    time_start = time.time()

    while (time.time()-time_start)<runtime_s:
        print("Input 'next' to immediately move to next config. Input 'end' to end the entire run sequence.")
        i, o, e = select.select( [sys.stdin], [], [], input_timeout_s )

        if (i):
            in_str=sys.stdin.readline().strip()
            if in_str=="end":
                print("Ending run sequence")
                exit_sequence=True
                break
            elif in_str=="next":
                print("Moving to next config")
                break

        print("\tRuntime has been %d / %d seconds"%(time.time()-time_start,runtime_s))

    print("Stopping run...")
    process = subprocess.Popen(['./stop'],
                               stdout=subprocess.PIPE,
                               stderr=subprocess.PIPE)
    process_wait(process)
    rc = process.poll()

    print("Run stopped.")

    #if we should stop everything
    if exit_sequence:
        break

print("Completed.")    

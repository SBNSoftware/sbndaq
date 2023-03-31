#!/bin/python

import time
import sys
import subprocess
import select


config_list = [ "testFullTPC-DAC-0x83E0-00001", "testFullTPC-DAC-0x8200-00001",
                "testFullTPC-DAC-0x7E40-00001", "testFullTPC-DAC-0x7C60-00001",
                "testFullTPC-DAC-0x7A80-00001", "testFullTPC-DAC-0x78A0-00001",
                "testFullTPC-DAC-0x76C0-00001", "testFullTPC-DAC-0x74E0-00001",
                "testFullTPC-DAC-0x7300-00001", "testFullTPC-DAC-0x7120-00001",
                "testFullTPC-DAC-0x6F40-00001", "testFullTPC-DAC-0x6D60-00001",
                "testFullTPC-DAC-0x6B80-00001", "testFullTPC-DAC-0x69A0-00001",
                "testFullTPC-DAC-0x67C0-00001", "testFullTPC-DAC-0x6400-00001",
                "testFullTPC-DAC-0x65E0-00001", "testFullTPC-DAC-0x8020-00001" ]
runtime_minutes = 5
boot_config = "boot_full.txt"

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

for config in config_list:
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

    process = subprocess.Popen(['./run',boot_config,config],
                               stdout=subprocess.PIPE,
                               stderr=subprocess.PIPE)
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

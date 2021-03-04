#!/bin/python

import time
import sys
import subprocess
import select


config_list = [ "testTPC-DAC-0x3EC0-00001" ]#"testTPC-DAC-0x52C0-00003", "testTPC-DAC-0x5180-00003", "testTPC-DAC-0x5040-00003", "testTPC-DAC-0x4F00-00003", "testTPC-DAC-0x4DC0-00003", "testTPC-DAC-0x4C80-00003", "testTPC-DAC-0x4B40-00003", "testTPC-DAC-0x4A00-00003", "testTPC-DAC-0x48C0-00003", "testTPC-DAC-0x4780-00003", "testTPC-DAC-0x4640-00003", "testTPC-DAC-0x4500-00003", "testTPC-DAC-0x43C0-00003", "testTPC-DAC-0x4280-00003", "testTPC-DAC-0x4140-00004", "testTPC-DAC-0x4000-00001" ]
runtime_minutes = 5
boot_config = "boot_split.txt"

runtime_s = 60*runtime_minutes
input_timeout_s = 10

exit_sequence=False

for config in config_list:
    print("Starting run with config %s"%config)

    process = subprocess.Popen(['./run',boot_config,config],
                               stdout=subprocess.PIPE,
                               stderr=subprocess.PIPE)
    while True:
        output = process.stdout.readline()
        if output == '' and process.poll() is not None:
            break
        if output:
            print output.strip()
    rc = process.poll()

    #stdout, stderr = process.communicate()
    print("Run started.")
    time_start = time.time()

    while (time.time()-time_start)<runtime_s:
        print("Input 'next' to move to next config. Input 'end' to end the entire run sequence.")
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

    while True:
        output = process.stdout.readline()
        if output == '' and process.poll() is not None:
            break
        if output:
            print output.strip()
    rc = process.poll()

    print("Run stopped.")

    #if we should stop everything
    if exit_sequence:
        break

print("Completed.")    

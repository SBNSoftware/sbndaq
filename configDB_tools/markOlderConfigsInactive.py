#!/bin/python

import configDB_Utilities
import sys

def print_usage():
    print("Usage: markOlderConfigsInactive.py")


def main():
    if len(sys.argv)!=1:
        print_usage()
        return 0
    
    configDB_Utilities.markUnmarkedConfigs()
    configDB_Utilities.markOlderConfigsInactive()

if __name__=="__main__":
    main()

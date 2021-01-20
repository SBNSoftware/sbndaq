#!/bin/python

import configDB_Utilities
import sys

def print_usage():
    print("Usage: markConfigActive.py <config_name>")


def main():
    if len(sys.argv)!=2:
        print_usage()
        return 0
    
    config_name = sys.argv[1]
    if config_name=="--help" or config_name=="-h":
        print_usage()
        return 0

    configDB_Utilities.markConfigActive(config_name)

if __name__=="__main__":
    main()

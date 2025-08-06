import os
import sys
import argparse
import numpy as np
import pandas as pd
import matplotlib
import matplotlib.pyplot as plt
import uproot

from classMembers import femNU, channelNU, femSN, channelSN

def parseArguments():
    def checkFile(file):
        if not file.endswith(".root"):
            raise argparse.ArgumentTypeError(f"Input file must be a .root file")
        elif not os.access(file, os.R_OK):
            raise argparse.ArgumentTypeError(f"{file} can't be opened")
        return file

    parser = argparse.ArgumentParser(description="")
    parser.add_argument("--file", type=checkFile, required=True, help="input root file")
    #parser.add_argument("--tree", type=str, default="events", help="TTree name")
    #parser.add_argument("--verbose", action="store_true", help="Enable verbose mode")
    args = parser.parse_args()
    print("Input root file:", args.file)
    return args

def getFEMBranches(arr):
    mask = np.char.find(arr, 'fem') >= 0
    mask &= np.char.find(arr, '/') == -1
    fems = arr[mask]
    return fems

if __name__ == "__main__":
    args = parseArguments()
    file = uproot.open(args.file)
    tree = file["events"]

    print(tree.keys())
    print('\n')

    branches = np.array(tree.keys())
    fems = getFEMBranches(branches)
    print(fems)
    print('\n')

    branches = ['eventNumber', 'eventEndMiss']
    df = tree.arrays(branches, library='pd')
    nEventEndMiss = df['eventEndMiss'].sum()
    print(f"Number of event end missing: {nEventEndMiss}")
    if nEventEndMiss > 0:
       eventEndMiss = df[df['eventEndMiss']]['eventNumber'].tolist()
       eventNums = ", ".join(str(num) for num in eventEndMiss)
       print(f"Event numbers with missing event end: {eventNums}")

#    femEventNums = [tree[fem + '/eventNum_'] for fem in fems]
#    allEventNums = sorted(set().union(*femEventNums))
#    seriesEventNums = [pd.Series(data=fem, index=fem) for fem in femEventNums]
#    df = pd.concat(seriesEventNums, axis=1).reindex(allEventNums)
#    df.columns = femEventNums
#    branches = ['eventNumber', 'eventEndMiss'] + fems.tolist()
#    for fem in 
    

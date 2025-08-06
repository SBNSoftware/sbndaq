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

def checkEventEndMiss(df): 
    nEventEndMiss = df['eventEndMiss'].sum()
    print(f"Number of event end missing: {nEventEndMiss}")

    eventEndMiss = df[df['eventEndMiss']]['eventNumber'].tolist()
    eventNums = ", ".join(str(num) for num in eventEndMiss)
    print(f"Event numbers with missing event end: {formatted}")

if __name__ == "__main__":
    args = parseArguments()
    file = uproot.open(args.file)
    tree = file["events"]

    print(tree.keys())
    print('\n')

    df = tree.arrays(['eventNumber', 'eventEndMiss'], library='pd')
    checkEventEndMiss(df)

    eventNum = tree['eventNumber'].array()
    print(eventNum)
    print('\n')

    #femNum = tree['fem99/femSlot_'].array()
    #chNum = tree['fem99/channels_/channels_.channelNum_'].array()
    #chADC = tree['fem99/channels_/channels_.adcs_'].array()
    #chSample = tree['fem99/channels_/channels_.sampleNums_'].array()
    femNum = tree['fem35/femSlot_'].array()
    print(femNum)
    print('\n')
    chNum = tree['fem35/channels_/channels_.channelNum_'].array()
    print(chNum)
    print('\n')
    chROI = tree['fem35/channels_/channels_.roiTimestamps_'].array()
    print(chROI)
    print(chROI[0]) # 1st event
    print(chROI[0][0]) # 1st channel in 1st event
    print('\n')
    chADC = tree['fem35/channels_/channels_.roiADCs_'].array()
    chSample = tree['fem35/channels_/channels_.roiSampleNums_'].array()
    print(chADC)
    print('\n')
    print(len(chADC[0][0]))
    print('\n')
    #for i, evt in enumerate(chNum):
        #for j, ch in enumerate(evt):
            #print(eventNum[i], femNum[i], chNum[i][j], len(chADC[i][j]), len(chSample[i][j]))
            #print(eventNum[i], femNum[i], chNum[i][j], len(chROI[i][j]), len(chADC[i][j]), len(chSample[i][j]))

# For example, you might see:
# ['id', 'complex_calc.vals_.val_']

#id_array = tree["id"].array()
#val_array = tree["complex_calc.vals_.val_"].array()  # This is a jagged array (Awkward Array)

#df = ak.to_dataframe({"id": id_array, "val": val_array})

#print(df.head())

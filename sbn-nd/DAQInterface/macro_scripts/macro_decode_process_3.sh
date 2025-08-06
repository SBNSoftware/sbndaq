#!/bin/bash

# Usage: ./macro_decode_process_3.sh <run_number>
# Example: ./macro_decode_process_3.sh 12345

RUN_NUMBER="$1"

if [ -z "$RUN_NUMBER" ]; then
    echo "Usage: $0 <run_number>"
    exit 1
fi

DATA_DIR="/data/SNCommissioning/run${RUN_NUMBER}"
DECODER_DIR="/home/nfs/sbnd/DAQ_DevAreas/DAQ_2025-07-11_nevis_sn_production_dev_v1_10_07/srcs/sbndaq/sbn-nd/DAQInterface/decoders/process3"

# Find all matching files for this run
find "$DATA_DIR" -type f -name "sbndrawbin_run${RUN_NUMBER}_*_TPC*_SN.dat" | while read -r INPUTFILE; do
    # Extract tpc_number from filename
    BASENAME=$(basename "$INPUTFILE")
    INPUT_DIR=$(dirname "$INPUTFILE")
    
    echo "Processing file: $INPUTFILE"
    
    # Example filename: sbndrawbin_run12345_2025-07-11-1530_subfile1_TPC2_SN.dat
    TPC_NUMBER=$(echo "$BASENAME" | sed -n 's/.*_TPC\([0-9]\+\)_SN\.dat/\1/p')

    if [ -z "$TPC_NUMBER" ]; then
        echo "Could not extract TPC number from $BASENAME"
        continue
    fi

    # Change to input directory so output files are created there
    ORIGINAL_DIR=$(pwd)
    cd "$INPUT_DIR"
    
    # Run both decoders
    "$DECODER_DIR/decode_process_3_1" "$INPUTFILE" "$RUN_NUMBER" "$TPC_NUMBER"
    "$DECODER_DIR/decode_process_3_2" "$INPUTFILE" "$RUN_NUMBER" "$TPC_NUMBER"
    
    # Return to original directory
    cd "$ORIGINAL_DIR"
done
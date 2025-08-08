#!/bin/bash

# Set variables
DEST_HOST="sbndgpvm03.fnal.gov"
runnumber="$1"
DEST_DIR="/pnfs/sbnd/scratch/users/sc5303/continuous_readout/run${runnumber}"
ssh sc5303@${DEST_HOST} "mkdir -p ${DEST_DIR}"

echo $runnumber

for evb in {01..03}; do
    SRC_HOST="sbnd-evb${evb}"
    SRC_DIR="/data/sbndraw/fts_dropbox"

    # List all files matching the pattern and sort
    files=$(ssh sbnd@${SRC_HOST} "ls ${SRC_DIR}/data_EventBuilder*_run${runnumber}_*.root 2>/dev/null" | \
        sort -t'_' -k4.8n)

    for file in $files; do
        echo "Inside loop for evb: ${evb}, file: ${file}"
        filename=$(basename "$file")
        echo "Copying ${SRC_HOST}:${file} to ${DEST_HOST}:${DEST_DIR}/${filename}"
        ssh sbnd@${SRC_HOST} "scp '$file' sc5303@${DEST_HOST}:${DEST_DIR}/${filename}"
    done
done

#!/bin/bash

# Set variables
DEST_HOST="sbnd-tpc15"
runnumber="$1"
DEST_DIR="/data/SNCommissioning/run${runnumber}"
ssh sbnd@${DEST_HOST} "mkdir -p ${DEST_DIR}"

echo $runnumber

for tpc in {01..11}; do
    SRC_HOST="sbnd-tpc${tpc}"
    SRC_DIR="/data/SNCommissioning"

    # List all files matching the pattern, sort, and pick every 20th
    files=$(ssh sbnd@${SRC_HOST} "ls ${SRC_DIR}/sbndrawbin_run${runnumber}_*_subfile*_TPC_SN.dat 2>/dev/null" | \
        sort -t'_' -k4.8n | \
        awk 'NR % 20 == 1')

    for file in $files; do
        echo "Inside loop for tpc: ${tpc}, file: ${file}"
        filename=$(basename "$file")
        if [[ $filename =~ ^sbndrawbin_run([0-9]+)_([0-9]{4}\.[0-9]{2}\.[0-9]{2}-[0-9]{2}\.[0-9]{2}\.[0-9]{2})_subfile([0-9]+)_TPC_SN\.dat$ ]]; then
            runnum="${BASH_REMATCH[1]}"
            date="${BASH_REMATCH[2]}"
            filenum="${BASH_REMATCH[3]}"
            newfile="sbndrawbin_run${runnum}_${date}_subfile${filenum}_TPC${tpc}_SN.dat"
            echo "Copying ${SRC_HOST}:${file} to ${DEST_HOST}:${DEST_DIR}/${newfile}"
            ssh sbnd@${SRC_HOST} "rsync -z --ignore-existing '$file' sbnd@${DEST_HOST}:${DEST_DIR}/${newfile}"
        fi
    done
done

#!/bin/bash

# --- Remote Script Definition ---
# Using a HEREDOC to define the multi-line script that will be executed on each remote host.
# This is much cleaner and safer than a single long command string.
REMOTE_SCRIPT=$(cat <<'EOF'
# This entire block of code runs on the remote machine

# --- Remote Variables ---
DECODER_BASE="/home/nfs/sbnd/DAQ_DevAreas/DAQ_2025-07-11_nevis_sn_production_dev_v1_10_07/srcs/sbndaq/sbn-nd/DAQInterface/decoders"
BINNU_DECODER="${DECODER_BASE}/decode_nu"
BINSN_DECODER="${DECODER_BASE}/decode_sn"
DATA_DIR="/data/SNCommissioning"

# Exit gracefully if the target directory doesn't exist.
if [ ! -d "$DATA_DIR" ]; then
    echo "Directory $DATA_DIR not found. Nothing to do."
    exit 0
fi

# Use 'find' to safely loop through all .dat files, even with special characters in filenames.
find "$DATA_DIR" -maxdepth 1 -name "*.dat" -print0 | while IFS= read -r -d $'\0' dat_file; do
    base_name="${dat_file%.dat}" # Removes the .dat extension (e.g., /path/to/file_NU)

    # --- Logic for NU files ---
    if [[ "$dat_file" == *_NU.dat ]]; then
        waveform_file="${base_name}_waveform.txt"
        log_file="${dat_file}.log"

        if [ ! -f "$waveform_file" ]; then
            echo "Decoding NU file: $dat_file"
            "$BINNU_DECODER" "$dat_file" > "$log_file" 2>&1
        fi

    # --- Logic for SN files ---
    elif [[ "$dat_file" == *_SN.dat ]]; then
        waveform_file="${base_name}_waveform.txt"
        log_file="${dat_file}.log"

        if [ ! -f "$waveform_file" ]; then
            echo "Decoding SN file: $dat_file"
            "$BINSN_DECODER" "$dat_file" > "$log_file" 2>&1
        fi
    fi
done
EOF
)

# --- Main Execution Loop ---
# Loop through each host defined by the 'tpc' variable and the sbnd range.
for t in tpc; do
    for h in sbnd-${t}{01..11}; do
        # Group commands in a subshell and run in the background with '&'.
        (
            # First, check if the host is reachable to avoid long timeouts.
            if ping -c 1 -W 1 "$h" > /dev/null 2>&1; then
                echo "--- ✅ Processing on host: $h ---"
                # SSH into the host, and pipe the REMOTE_SCRIPT to a new bash shell for execution.
                # -o ConnectTimeout=2 prevents long hangs on unresponsive SSH sessions.
                ssh sbnd@"$h" -o ConnectTimeout=2 "bash -s" <<< "$REMOTE_SCRIPT"
                echo "--- Finished processing on $h ---"
            else
                echo "--- ❌ Host unreachable: $h ---"
            fi
        ) & # The '&' sends the subshell to the background.
    done
done

# Wait for all background jobs to complete before continuing.
wait

echo
echo "All hosts have been processed."
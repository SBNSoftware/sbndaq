#!/bin/bash

if [[ "${BASH_SOURCE[0]}" != "${0}" ]]; then
    echo "This script should not be sourced. Please run it directly."
    return 1
fi

THIS_RELEASE_DIR="${HOME}/DAQ_SPACK_DevAreas/${1:-"DAQ_TESTING_CURRENT"}/DAQInterface"
if [ -d "$THIS_RELEASE_DIR" ]; then
    cd "$THIS_RELEASE_DIR" || { echo "Error: Failed to change directory to $THIS_RELEASE_DIR"; exit 1; }
else
    echo "Error: Directory $THIS_RELEASE_DIR does not exist."
    exit 1
fi

TEST_RELEASE_CURRENT_DIR=$(pwd)
echo "Active DAQ configuration: $(basename "$(dirname "$(readlink "$TEST_RELEASE_CURRENT_DIR")")")"
echo "Release Name: $(basename "$(dirname "$TEST_RELEASE_CURRENT_DIR")")"

THIS_DAQINTERFACE_SETUP_SCRIPT="setup_daqinterface_spackenv.sh"
if [ -f "$THIS_DAQINTERFACE_SETUP_SCRIPT" ]; then
    source "$THIS_DAQINTERFACE_SETUP_SCRIPT"
else
    echo "Error: DaqInterface Setup script $THIS_DAQINTERFACE_SETUP_SCRIPT not found."
    exit 1
fi

if ! command -v artdaqRunControl &> /dev/null; then
  echo "Error: artdaqRunControl command not found"
  exit 1
fi

echo "Starting artdaqRunControl"
artdaqRunControl

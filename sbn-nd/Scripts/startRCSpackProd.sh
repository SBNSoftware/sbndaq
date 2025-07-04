#!/bin/bash
cd ${HOME}/DAQ_SPACK_ProdAreas/${1:-DAQ_SHIFTER_CURRENT}/DAQInterface
echo "Setup:"
echo "env=$(basename $(dirname $(readlink $(pwd))))"
echo "dir=$(basename $(dirname $(pwd)))"

source setup_daqinterface_spackenv.sh
artdaqRunControl

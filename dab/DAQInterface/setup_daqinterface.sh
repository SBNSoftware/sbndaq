#!/bin/bash

export TRACE_FILE=/dev/shm/trace_buffer_$USER
export TRACE_NAME=TRACE


source /software/products/setup
unsetup_all 2>&1 > /dev/null

unset PRODUCTS
unset LD_LIBRARY_PATH
export PATH=/usr/lib64/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin

unset ARTDAQ_DAQINTERFACE_VERSION
unset DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED

source /software/products/setup
setup artdaq_daqinterface v3_04_00 2>&1

export DAQINTERFACE_USER_SOURCEFILE=$(pwd)/user_sourcefile
source $ARTDAQ_DAQINTERFACE_DIR/source_me



#!/bin/bash
#aa 2023/03/09

TMPDIR=/tmp/compare_configurations
CMD=conftool.py

if [ "$#" -ne 2 ]; then
    echo Usage: $0 configuration1 configuration2
    exit 1
fi


#configure db
if ! which $CMD 
then
    source ~/DAQ_ProdAreas/DAQ_SHIFTER_CURRENT/DAQInterface/setup_daqinterface.sh
fi

if ! which $CMD 
then
    echo Could not configure conftool.py! Exiting
    exit 2
fi

fetch_configuration() {
    TMPDIR1=$TMPDIR/$1

    if [ $(find $TMPDIR1 -maxdepth 1 -mindepth 1 -type d | wc -l) -eq 1  ]
    then
        echo Getting already existing configuration from $TMPDIR1
        return 0
    fi

    if ! mkdir -p $TMPDIR1
    then
        echo Issue with creating folder $TMPDIR1
        exit 10
    fi

    cd $TMPDIR1

    if ! $CMD exportConfiguration $1
    then
        echo Failed to export configuration \"$1\"
        exit 11
    fi
}

fetch_configuration $1
fetch_configuration $2

TMPDIR1=$(find $TMPDIR/$1 -maxdepth 1 -mindepth 1 -type d)
TMPDIR2=$(find $TMPDIR/$2 -maxdepth 1 -mindepth 1 -type d)

diff $TMPDIR1 $TMPDIR2

#!/usr/bin/env bash
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }

THIS_SCRIPT_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))
#Trace setup for debugging:
which trace_functions.sh >/dev/null 2>&1 && source $(which trace_functions.sh 2>/dev/null) \
  || { echo "Error: trace_functions.sh not found in PATH. This is a critical error with loading Spack packages."; return 11; }

partition=$(grep -Eo "export.*DAQINTERFACE_PARTITION_NUMBER=.*" ${THIS_SCRIPT_DIR}/user_sourcefile |cut -d"=" -f2)

export TRACE_FILE=/tmp/trace_$(whoami)_p${partition}

#suppress debug messages
#
toffSg 0-63
toffMg 0-63
tonSg 0-8
tonMg 0-8

tmodeS 1
tmodeM 1

function trace_PullRequests {
  # https://github.com/art-daq/artdaq/blob/develop/artdaq/DAQrate/detail/RequestReceiver.cc
  tonM -N *_RequestReceiver DEBUG+34
  tonM -N *_RequestReceiver DEBUG+36
  # https://github.com/art-daq/artdaq/blob/develop/artdaq/DAQrate/detail/RequestSender.cc
  tonM -N *_RequestSender DEBUG+36
  tonM -N *_RequestSender DEBUG+33
  # https://github.com/art-daq/artdaq/blob/develop/artdaq/DAQrate/FragmentBuffer.cc
  tonM -N *_FragmentBuffer DEBUG+28
  tonM -N *_FragmentBuffer DEBUG+24   
  tonM -N *_FragmentBuffer DEBUG+29
  # https://github.com/art-daq/artdaq/blob/develop/artdaq/Generators/CommandableFragmentGenerator.cc
  tonM -N *_CommandableFragmentGenerator DEBUG+28
}


if [[ "$(hostname -s)" =~ sbnd-evb[0-9]{2}$ ]]; then
  trace_PullRequests
fi

if [[ "$(hostname -s)" =~ sbnd-tpc[0-9]{2}$ ]]; then
  trace_PullRequests


  # https://github.com/SBNSoftware/sbndaq-artdaq/blob/develop/sbndaq-artdaq/Generators/ICARUS/PhysCrateData_generator.cc
  tonM -n PhysCrateData   DEBUG+13
  # https://github.com/SBNSoftware/sbndaq-artdaq/blob/develop/sbndaq-artdaq/Generators/ICARUS/PhysCrate_GeneratorBase.cc
  tonM -n PhysCrate_GeneratorBase DEBUG+19
fi

#!/usr/bin/env bash
[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }

THIS_SCRIPT_DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

function configure_coredumps() {
  ulimit -c unlimited
}

if [[ "$(hostname -s)" =~ sbnd-tpc[0-9]{2}$ ]]; then
  configure_coredumps
fi


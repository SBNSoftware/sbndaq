#!/usr/bin/env bash

return 0;

source_this_file="/daq/software/spack_packages/spack/v0.23.0.sbnd/NULL/share/spack/setup-env.sh"

attempt=0
max_attempts=3

while (( attempt < max_attempts )); do
  tmp_file=$(mktemp)
  source $source_this_file 2>$tmp_file
  std_err_out=$(<$tmp_file)

  if [ -n "$std_err_out" ]; then
    echo "Error: $std_err_out , retrying $((attempt + 1)) out of $max_attempts"
    (( attempt++ ))
    sleep $(( RANDOM % 5 + 1 ))
  else
    break
  fi

  rm $tmp_file
done

rm $tmp_file

echo "** Finished sourcing script Path: $source_this_file"

spack -V

spack find --loaded

attempt=0

while (( attempt < max_attempts )); do
  spack unload > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "Spack unloaded successfully"
    break
  else
    echo "Spack unload failed, retrying $((attempt + 1)) out of $max_attempts"
    (( attempt++ ))
    sleep $(( RANDOM % 5 + 1 ))
  fi
done

if (( attempt == max_attempts )); then
  echo "Spack unload failed after $max_attempts attempts"
fi

echo

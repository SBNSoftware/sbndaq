#!/usr/bin/env bash

if [[ "$(hostname -s)" =~ sbnd-wib ]]; then
  echo "Configuring environment variables WIB_CONFIG_PATH and WIB_ADDRESS_TABLE_PATH."
  export WIB_ADDRESS_TABLE_PATH=$(dirname $(dirname $(which WIBTool.exe)))/tables
  export WIB_CONFIG_PATH=$(dirname $(dirname $(which WIBTool.exe)))/config
fi

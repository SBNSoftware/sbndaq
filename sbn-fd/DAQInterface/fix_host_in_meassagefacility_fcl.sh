#!/bin/bash

function fix_host_in_meassagefacility_fcl {
local this_mfconfig=MessageFacility.fcl
local nic_alias=daq

[[ ! -f  $this_mfconfig.bak ]] && cp -f $this_mfconfig $this_mfconfig.bak 2> /dev/null
[[ ! -f  $this_mfconfig ]] && cp -f $this_mfconfig.bak $this_mfconfig 2> /dev/null

local PATH=$PATH:/usr/bin/:/usr/sbin

if [[ -f "$this_mfconfig" ]]; then
  local this_mfhostname=$(cat /etc/hosts |grep $(ifconfig |grep "$nic_alias:" -A 1|awk '$1 == "inet" {print $2}')| awk '{print $2}')
  echo " this_mfhostname =======>  $this_mfhostname "
  if [[ =$(ping -c 1 -W 1 $this_mfhostname 2>&1 > /dev/null) &&  $? == 0 ]]; then
    local file_mfhostname=$(cat $this_mfconfig| grep -v -e '^#' -e '^[[:space:]]*$'|grep host | sed 's/.*host\s:\s"\(.*\)"\s}.*/\1/')
    if [[ "$this_mfhostname" != "$file_mfhostname" ]]; then
      read -n1 -p "Will MessageViewer be launched on $this_mfhostname? [y,n]" user_responce
      case $user_responce in
        y|Y) echo -e "\n\nInfo: Great!\n" ;;
          *) echo -e "\n\nInfo: Ok, the host value will remain unchanged in $this_mfconfig.\n" && return ;;
      esac

      echo "Info: Updating the host value in $this_mfconfig from $file_mfhostname to $this_mfhostname."
      sed -i "s/$file_mfhostname/$this_mfhostname/g" $this_mfconfig
    fi
    else echo "Error: can't ping $this_mfhostname."
  fi
  else echo "Error: $this_mfconfig not found."
fi
}

fix_host_in_meassagefacility_fcl

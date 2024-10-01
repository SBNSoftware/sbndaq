#!/usr/bin/env bash

export PATH=/usr/local/bin:/usr/bin
export LANG='en_US.UTF-8'
export SHELL=/usr/bin/bash
export HISTSIZE=1000
export XDG_DATA_DIRS=/usr/local/share:/usr/share


preserve_vars=("PATH" "LANG" "HOME" "USER" "HOSTNAME" "SHELL" "SSH_TTY" "HISTSIZE" "LESSOPEN" "XDG_RUNTIME_DIR" "XDG_DATA_DIRS")
preserve_funcs=("")
preserve_aliases=("")

unset_vars() {
    #echo "Removing variables..."
    for var in $(printenv | awk -F= '{print $1}'); do
        if [[ ! " ${preserve_vars[@]} " =~ " ${var} " ]]; then
            unset "$var" 2>/dev/null
        fi
    done
}

unset_funcs() {
    #echo "Removing functions..."
    local all_funcs=($(declare -F | awk '{print $3}'))
    for func in "${all_funcs[@]}"; do
        if [[ ! " ${preserve_funcs[@]} " =~ " ${func} " ]]; then
            unset -f "$func" 2>/dev/null 
        fi
    done
}

unset_aliases() {
    #echo "Removing aliases..."
    local all_aliases=($(alias | cut -d "=" -f1 | grep alias | awk '{print $2}'))
    for alias_name in "${all_aliases[@]}"; do
        if [[ ! " ${preserve_aliases[@]} " =~ " ${alias_name} " ]]; then
            unalias "$alias_name"
        fi
    done
}


if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "This script should be sourced, not run directly." >&2
    exit 1
fi

unset_aliases
unset_vars
unset_funcs

preserved_aliases_count=$(alias | wc -l)
preserved_funcs_count=$(declare -F | wc -l)
preserved_vars_count=$(printenv | wc -l)

if (( preserved_aliases_count > 0 )); then
    echo "Preserved Aliases: $preserved_aliases_count"
fi

if (( preserved_funcs_count > 0 )); then
    echo "Preserved Functions: $preserved_funcs_count"
fi

if (( preserved_vars_count > 0 )); then
    echo "Preserved Variables: $preserved_vars_count"
fi

export PS1='\u@\h\$ '

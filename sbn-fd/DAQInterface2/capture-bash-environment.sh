#!/usr/bin/env bash

#[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }

#[[ "$0" != "${BASH_SOURCE}" ]] && { echo "Error: This script must be run, not sourced."; return 1; }

rm -f /tmp/bash_environment_*

#unset -f _spack_shell_wrapper
#unset -f spack

#"BASH" "BASHOPTS" "BASHPID" "BASH_ALIASES" "BASH_ARGC" "BASH_ARGV" "BASH_CMDS" "BASH_COMMAND" "BASH_LINENO" \
#"BASH_SOURCE" "BASH_SUBSHELL" "BASH_VERSINFO" "BASH_VERSION" "COLUMNS" "COMP_WORDBREAKS" "CVS_RSH" "DIRSTACK" \
#"EUID" "GROUPS" "GUESTFISH_INIT" "GUESTFISH_OUTPUT" "GUESTFISH_PS1" "GUESTFISH_RESTORE" "HISTCMD" "HISTFILE" \
#"HISTFILESIZE" "HISTSIZE" "HOME" "HOSTNAME" "HOSTTYPE" "IFS" "KDEDIRS" "LANG" "LESSOPEN" "LINENO" "LINES" \
#"LOGNAME" "LS_COLORS" "MACHTYPE" "MAIL" "MAILCHECK" "OPTERR" "OPTIND" "OSTYPE" "PIPESTATUS" "PPID" "PS1" \
#"PS2" "PS4" "PWD" "RANDOM" "SECONDS" "SHELL" "SHELLOPTS" "SHLVL" "SSH_ASKPASS" "SSH_CLIENT" "SSH_CONNECTION" \
#"SSH_TTY" "TERM" "UID" "USER" "XDG_DATA_DIRS" "XDG_RUNTIME_DIR" "XDG_SESSION_ID" "_" "var"

excluded_env_vars=("env_vars" "excluded_env_vars" "excluded_functions" "excluded_aliases" "output_file" "stdout"\
  "BASH" "BASHOPTS" "BASHPID" "BASH_ALIASES" "BASH_ARGC" "BASH_ARGV" "BASH_CMDS" "BASH_COMMAND" "BASH_LINENO" \
  "BASH_SOURCE" "BASH_SUBSHELL" "BASH_VERSINFO" "BASH_VERSION" "COLUMNS" "COMP_WORDBREAKS" "CVS_RSH" "DIRSTACK" \
  "EUID" "GROUPS" "GUESTFISH_INIT" "GUESTFISH_OUTPUT" "GUESTFISH_PS1" "GUESTFISH_RESTORE" "HISTCMD" "HISTFILE" \
  "HISTFILESIZE" "HISTSIZE" "HOME" "HOSTNAME" "HOSTTYPE" "IFS" "KDEDIRS" "LANG" "LESSOPEN" "LINENO" "LINES" \
  "LOGNAME" "LS_COLORS" "MACHTYPE" "MAIL" "MAILCHECK" "OPTERR" "OPTIND" "OSTYPE" "PIPESTATUS" "PPID" "PS1" \
  "PS2" "PS4" "PWD" "RANDOM" "SECONDS" "SHELL" "SHELLOPTS" "SHLVL" "SSH_ASKPASS" "SSH_CLIENT" "SSH_CONNECTION" \
  "SSH_TTY" "TERM" "UID" "USER" "XDG_DATA_DIRS" "XDG_RUNTIME_DIR" "XDG_SESSION_ID" "_" "var" )

excluded_functions=("export_environment_vars" "export_functions" "export_aliases" "filter_unique_paths")

excluded_aliases=("ll" "la")

output_file=$(mktemp /tmp/bash_environment_XXXXXXX)

filter_unique_paths() {
    local path_var=$1
    local IFS=':'
    declare -A seen_paths
    local unique_paths=()

    for path in $path_var; do
        if [[ -z ${seen_paths[$path]} ]]; then
            unique_paths+=("$path")
            seen_paths[$path]=1
        fi
    done

    IFS=':'; echo "${unique_paths[*]}"; unset IFS
}


export_environment_vars() {
    echo "#Environment variables" >> $output_file
    local env_vars
    env_vars=$(compgen -v)

    for name in $env_vars; do
        if [[ ! " ${excluded_env_vars[@]} " =~ " ${name} " ]] && [[ ! $name =~ ^BASH_FUNC_ ]]; then
            local value
            local filtered_value
            value=$(eval echo \$$name)
           
            if [[ -z $value ]]; then
                echo -e "export $name\n" >> "$output_file"
            elif [[ $value == *:* ]] && [[ $value =~ "/daq/" ]]; then
                filtered_value=$(filter_unique_paths "$value")
                local formatted_value
                formatted_value=$(echo "$filtered_value" | sed 's/:/:\\\n/g')
                echo -e "export $name=$formatted_value\n" >> "$output_file"
            else
                echo -e "export $name=\"$value\"\n" >> "$output_file"
            fi
        fi
    done
}


export_functions() {
    echo "#Functions" >> $output_file
    local function_names
    function_names=$(declare -F | cut -d" " -f3)

    for fn in $function_names; do
        if [[ ! " ${excluded_functions[@]} " =~ " ${fn} " ]]; then
            declare -f "$fn" >> "$output_file"
            echo >> $output_file
        fi
    done
}


export_aliases() {
    echo "#Aliases" >> $output_file
    
    [[ "$0" != "${BASH_SOURCE}" ]] || \
      { echo "#The script $(basename ${BASH_SOURCE}) should be sourced to capture aliases" >> $output_file; return 1; }

    local alias_list=$(compgen -a) 
    : >> $output_file
    for name in $alias_list; do
        if [[ ! " ${excluded_aliases[@]} " =~ " ${name} " ]]; then
            echo "alias $name='$(alias $name)'" >> $output_file
            echo >> $output_file
        fi
    done 
}

echo "#!/usr/bin/env bash" > $output_file
echo "# Captured environment: $(date +%Y%m%d_%H%M%S)" >> $output_file
echo >> $output_file
echo '[[ "$0" != "${BASH_SOURCE}" ]] || { echo "The script $(basename ${BASH_SOURCE}) should be sourced!"; exit 1; }' >> $output_file
export_environment_vars
export_functions
#export_aliases

export ENV_OUTPUT_FILE=$output_file

echo "Done. See $output_file"

#cat $output_file

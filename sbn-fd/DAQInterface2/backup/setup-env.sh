print_exported_variables() {
  echo "Exported Shell Variables:"
  printenv
}

# Function to print the script's path
print_script_path() {
  if [[ "${BASH_SOURCE[0]}" != "${0}" ]]; then
    # The script is being sourced
    echo "Script Path: ${BASH_SOURCE[0]}"
  else
    echo "The script is running in a subshell, not sourced."
  fi
}


echo "** Begin of reporting preamble"

unset _spack_shell_wrapper
unset spack

my_home_dir=$HOME
my_user=$USER
#my_artdaq_mfextensions_dir=$ARTDAQ_MFEXTENSIONS_DIR
#my_setup_artdaq_mfextensions=$SETUP_ARTDAQ_MFEXTENSIONS 

env_vars=$(/usr/bin/env | /usr/bin/awk -F= '{print $1}'|/usr/bin/grep -v '^_$')
functions=$(declare -F | /usr/bin/awk '{print $3}' )

for var in $env_vars; do
  #echo unset "$var"
  unset "$var"
done

for func in $functions; do
  #echo unset -f "$func"
  unset "$var"
done

export PATH=/usr/local/bin:/usr/bin

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

export LANG='en_US.UTF-8'

export PATH=/usr/local/bin:/usr/bin

export HOME=$my_home_dir
export USER=$my_user
#export ARTDAQ_MFEXTENSIONS_DIR=$my_artdaq_mfextensions_dir
#export SETUP_ARTDAQ_MFEXTENSIONS=$my_setup_artdaq_mfextensions


#print_exported_variables
print_script_path

echo "** End of reporting preamble" 


source_this_file="$(dirname "${BASH_SOURCE[0]}")/setup-env-ext.sh"

repeat=true

while $repeat; do
  tmp_file=$(mktemp)

  source $source_this_file 2>$tmp_file

  std_err_out=$(<$tmp_file)
  
  if [ -n "$std_err_out" ]; then 
    echo "Error: $std_err_out , retrying" 
    sleep $(( RANDOM % 5 +1 ))
  else
    repeat=false
  fi
  rm $tmp_file
done

spack -V

spack unload > /dev/null 2>&1
echo "Spack unloaded, result $?"

echo "** Finished executing script Path: ${BASH_SOURCE[0]}"

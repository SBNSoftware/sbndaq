
# Get the products directory containing the desired package from the
# .settings file, and use it to perform a ups setup of the package

packagename=$1

# Spack packages use - where UPS uses _
packagename=`echo ${packagename} | tr _ -`

if [[ -z $packagename ]]; then
    echo "An argument with the desired packagename is required" >&2
    return 70
fi

if [[ ! -e $DAQINTERFACE_SETTINGS ]]; then
    echo "Unable to find DAQInterface settings file \"$DAQINTERFACE_SETTINGS\"" >&2
    return 30
fi
test -z "${ARTDAQ_DAQINTERFACE_DIR-}" && { echo "Error: artdaq_daqinterface not setup"; return 40; }

spackdir=$( sed -r -n 's/^\s*spack[_ ]root[_ ]for[_ ]bash[_ ]scripts\s*:\s*(\S+).*/\1/p' $DAQINTERFACE_SETTINGS )

if [[ -n $spackdir ]]; then

    cmd_save=$cmd
    . $spackdir/share/spack/setup-env-ext.sh
    cmd=$cmd_save

    if [[ "$?" != "0" ]]; then
	echo -e "\n\nCommand will not work: attempted setup of $spackdir failed" >&2
	return 50
    fi
    
    num_packages=$(spack find --no-groups $packagename | wc -l )

    if (( num_packages == 0 )); then
	echo -e "\n\nCommand will not work: unable to find any $packagename packages in products directory $spackdir" >&2
	echo
	return 60
    fi

    # Unload everything from the environment
    spack unload >/dev/null 2>&1

    # Load desired package
    SPACK_ARCH="linux-$(spack arch --operating-system 2>/dev/null)-x86_64_v2"
    spack load --first $packagename arch=${SPACK_ARCH}

    return $?
else
    echo "Unable to find valid products/ directory from DAQInterface settings file \"$DAQINTERFACE_SETTINGS\"" >&2
    return 40
fi

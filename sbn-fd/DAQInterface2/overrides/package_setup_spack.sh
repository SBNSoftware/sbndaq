
# Get the products directory containing the desired package from the
# .settings file, and use it to perform a ups setup of the package

packagename=$1

# Spack packages use - where UPS uses _
packagename=`echo ${packagename} | tr _ -`

if [[ -z $packagename ]]; then
    echo "package_setup_spack.sh: An argument with the desired packagename is required" >&2
    return 70
fi

if [[ ! -e $DAQINTERFACE_SETTINGS ]]; then
    echo "package_setup_spack.sh: Unable to find DAQInterface settings file \"$DAQINTERFACE_SETTINGS\"" >&2
    return 30
fi
test -z "${ARTDAQ_DAQINTERFACE_DIR-}" && { echo "package_setup_spack.sh: Error: ARTDAQ_DAQINTERFACE_DIR not setup"; return 40; }

spackdir=$( sed -r -n 's/^\s*spack[_ ]root[_ ]for[_ ]bash[_ ]scripts\s*:\s*(\S+).*/\1/p' $DAQINTERFACE_SETTINGS )

if [[ -n $spackdir ]]; then

    cmd_save=$cmd
    . $spackdir/share/spack/setup-env.sh >/dev/null 2>&1
    cmd=$cmd_save

    if [[ "$?" != "0" ]]; then
	echo -e "\n\npackage_setup_spack.sh: Command will not work: attempted setup of $spackdir failed" >&2
	return 50
    fi
    
    num_packages=$(spack find --no-groups $packagename 2>/dev/null | wc -l )

    if (( num_packages == 0 )); then
	echo -e "\n\npackage_setup_spack.sh: Command will not work: unable to find any $packagename packages in products directory $spackdir" >&2
	echo
	return 60
    fi

    # Unload everything from the environment
    spack unload >/dev/null 2>&1
    [[ $? == 0 ]] || {  echo "spackage_setup_spack.sh: Error: \"spack unload \" failed. This is a critical error with loading Spack packages."; return 40; }

    # Load desired package
    SPACK_ARCH="linux-$(spack arch --operating-system 2>/dev/null)-x86_64_v2"
    echo "package_setup_spack.sh: Loading $packagename arch=${SPACK_ARCH}"
    spack load --first $packagename arch=${SPACK_ARCH} 2>&1
    err=$?
    [[ $err == 0 ]] && echo "package_setup_spack.sh: Loaded ${packagename} arch=${SPACK_ARCH}" \
       || {  echo "package_setup_spack.sh: Error: \"spack load --first ${packagename} arch=${SPACK_ARCH}\" failed. This is a critical error with loading Spack packages."; }

    return $err
else
    echo "package_setup_spack.sh: Unable to find valid products/ directory from DAQInterface settings file \"$DAQINTERFACE_SETTINGS\"" >&2
    return 40
fi

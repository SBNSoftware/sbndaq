
# Determine which package setup script to call

if [[ ! -e $DAQINTERFACE_SETTINGS ]]; then
    echo "package_setup.sh: Unable to find DAQInterface settings file \"$DAQINTERFACE_SETTINGS\"" >&2
    return 30
fi
echo "package_setup.sh: ARTDAQ_DAQINTERFACE_DIR: $ARTDAQ_DAQINTERFACE_DIR" 
test -z "${ARTDAQ_DAQINTERFACE_DIR-}" && { echo "package_setup.sh: Error: ARTDAQ_DAQINTERFACE_DIR not setup"; return 40; }

spackdir=$( sed -r -n 's/^\s*spack[_ ]root[_ ]for[_ ]bash[_ ]scripts\s*:\s*(\S+).*/\1/p' $DAQINTERFACE_SETTINGS )
proddir=$( sed -r -n 's/^\s*productsdir[_ ]for[_ ]bash[_ ]scripts\s*:\s*(\S+).*/\1/p' $DAQINTERFACE_SETTINGS )

if [[ -d ${proddir%%:*} ]]; then
    source package_setup_ups.sh $@
elif [[ -d $spackdir ]]; then
    source package_setup_spack.sh $@
else
    echo "package_setup.sh: Unable to find valid products/ directory from DAQInterface settings file \"$DAQINTERFACE_SETTINGS\"" >&2
    return 40
fi

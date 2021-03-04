import os
import tempfile
import sys
import shutil

import functools

#will need to be updated in python3
conftool_loc = os.environ['ARTDAQ_DATABASE_FQ_DIR']+'/bin/conftool.py'
import imp
conftool = imp.load_source('conftool',conftool_loc)

#wrapper function to setup a temp directory
#not needed for all DB operations, but needed for many, and anything related to a mask file
def db_wrapper(func):
    """Make a tmp workdir for db/file operations"""
    @functools.wraps(func)
    def wrapper_workdir(*args, **kwargs):
        curdir = os.curdir
        tmpdir = tempfile.mkdtemp()
        os.chdir(tmpdir)
        val = func(*args, **kwargs)
        os.chdir(curdir)
        shutil.rmtree(tmpdir)
        return val
    return wrapper_workdir

def writeFlagsFile(flags,file_name="flags.fcl"):
    """Write a flags fcl file locally for use with masks. Take in list of flags, and optional file name."""
    with open(file_name,'w') as file:
        for f in flags:
            file.write(f+"\n")

def writeInactiveFlagsFile(file_name="flags.fcl"):
    """Write an Inactive flags file."""
    writeFlagsFile(["flag_inactive:true"],file_name)

def writeActiveFlagsFile(file_name="flags.fcl"):
    """Write an Active flags file."""
    writeFlagsFile(["flag_inactive:false"],file_name)

@db_wrapper
def printFileFromConfig(config,fname):
    """Print a file from a named config."""
    conftool.exportConfiguration(config)
    with open(conftool.__get_prefix(config)+"/"+fname,'r') as f:
        print(f.read())

@db_wrapper
def getAllConfigs():
    """Get all configurations names."""
    return conftool.getListOfAvailableRunConfigurations()

@db_wrapper
def getAllActiveConfigs():
    """Get all active configuration names."""
    writeActiveFlagsFile()
    return conftool.getListOfMaskedRunConfigurations()

@db_wrapper
def getAllInactiveConfigs():
    """Get all inactive configuration names."""
    writeInactiveFlagsFile()
    return conftool.getListOfMaskedRunConfigurations()

@db_wrapper
def getAllConfigsWithPrefix(prefix):
    """Get all configurations with given prefix."""
    return sorted([ c for c in conftool.getListOfAvailableRunConfigurations() if conftool.__get_prefix(c)==prefix ])

@db_wrapper
def getAllActiveConfigsWithPrefix(prefix):
    """Get all active configurations with given prefix."""
    writeActiveFlagsFile()
    return sorted([ c for c in conftool.getListOfMaskedRunConfigurations() if conftool.__get_prefix(c)==prefix ])

@db_wrapper
def getAllInactiveConfigsWithPrefix(prefix):
    """Get all inactive configurations with given prefix."""
    writeInactiveFlagsFile()
    return sorted([ c for c in conftool.getListOfMaskedRunConfigurations() if conftool.__get_prefix(c)==prefix ])

#db_wrapper not technically needed, but keeping it here since there are some raw conftool calls
@db_wrapper
def getConfigsByPrefix(ignore_masked=True):
    """Create config dictionary, where keys are prefixes and values are list of configs names."""
    #setup a config dictionary, keys are prefixes, values are a list
    config_dict = { p:[] for p in conftool.getListOfAvailableRunConfigurationPrefixes() }

    #get list of active/all configs
    configs = getAllActiveConfigs() if ignore_masked else conftool.getListOfAvailableRunConfigurations()

    #for each config, append to appropriate prefix
    for c in configs:
        config_dict[conftool.__get_prefix(c)].append(c)
    
    #sort lists, and remove keys with no elements
    for p in config_dict.keys():
        config_dict[p] = sorted(config_dict[p])
        if len(config_dict[p])==0: del config_dict[p]

    return config_dict

#db_wrapper not needed
def getLatestConfigs(ignore_masked=True):
    """Get full set of the latest configs. Default to only consider active configs."""
    config_dict = getConfigsByPrefix(ignore_masked)

    #should already be sorted and pruned, but just in case...
    return [ sorted(config_dict[p])[-1] for p in config_dict if len(config_dict[p])>0 ]

#db_wrapper not needed
def getLatestConfigWithPrefix(prefix,ignore_masked=True):
    """Get latest config with particular prefix. Default to only latest active config."""
    configs = getAllActiveConfigsWithPrefix(prefix) if ignore_masked else getAllConfigsWithPrefix(prefix)
    return configs[-1] if len(configs)>0 else None


@db_wrapper
def markConfigInactive(config):
    """Mark named configuration as inactive."""
    writeInactiveFlagsFile()
    conftool.updateConfigurationFlags(config)
    
@db_wrapper
def markConfigActive(config):
    """Mark named configuration as active."""
    writeActiveFlagsFile()
    conftool.updateConfigurationFlags(config)

#db_wrapper not needed
def markOlderConfigsInactive():
    """Mark all configs that aren't the latest for a prefix as inactive."""
    for configs in getConfigsByPrefix(ignore_masked=True).values():
        for c in configs[0:-1]:
            markConfigInactive(c)

#db_wrapper not needed
def getAllUnmarkedConfigs():
    """Get all configurations not active or inactive."""
    return [ c for c in getAllConfigs() if ((c not in getAllActiveConfigs()) and (c not in getAllInactiveConfigs())) ]

#db_wrapper not needed
def markUnmarkedConfigs(active=True):
    """Mark active/inactive all configs that are unmarked (default active)."""

    for c in getAllUnmarkedConfigs():
        if active: 
            print("Marking config %s as active"%c)
            markConfigActive(c)
        else: 
            print("Marking config %s as inactive"%c)
            markConfigInactive(c)

def printConfigList(configs):
    for c in configs:
        print(c)


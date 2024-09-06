#!/bin/env python3

import os
import sys

sys.path.append(os.environ["ARTDAQ_DAQINTERFACE_DIR"])
if "DAQINTERFACE_OVERRIDES_FOR_EXPERIMENT_MODULE_DIR" in os.environ:
    sys.path.append(os.environ["DAQINTERFACE_OVERRIDES_FOR_EXPERIMENT_MODULE_DIR"])

# sys.stdout = os.fdopen(
import argparse
import datetime
import subprocess
from subprocess import Popen
from time import sleep, time
import traceback
import re
import string
import glob
import stat
from threading import RLock
import shutil
from shutil import copyfile
import random
import signal

from rc.io.timeoutclient import TimeoutServerProxy
from rc.control.component import Component

from rc.control.save_run_record import save_run_record_base
from rc.control.save_run_record import save_metadata_value_base

if (
    "DAQINTERFACE_DISABLE_BOOKKEEPING" in os.environ
    and not os.environ["DAQINTERFACE_DISABLE_BOOKKEEPING"] == "false"
):
    from rc.control.all_functions_noop import (
        bookkeeping_for_fhicl_documents_artdaq_v3_base,
    )
else:
    from rc.control.bookkeeping import bookkeeping_for_fhicl_documents_artdaq_v3_base

from rc.control.utilities import expand_environment_variable_in_string
from rc.control.utilities import make_paragraph
from rc.control.utilities import get_pids
from rc.control.utilities import host_is_local
from rc.control.utilities import is_msgviewer_running
from rc.control.utilities import date_and_time
from rc.control.utilities import date_and_time_more_precision
from rc.control.utilities import construct_checked_command
from rc.control.utilities import reformat_fhicl_documents
from rc.control.utilities import fhicl_writes_root_file
from rc.control.utilities import get_setup_commands
from rc.control.utilities import kill_tail_f
from rc.control.utilities import obtain_messagefacility_fhicl
from rc.control.utilities import record_directory_info
from rc.control.utilities import get_messagefacility_template_filename
from rc.control.utilities import RaisingThread

try:
    import python_artdaq
    from python_artdaq import swig_artdaq

    # Here, "True" means that if python_artdaq is available, it's assumed
    # that artdaq_mfextensions is as well

    messagefacility_fhicl_filename = obtain_messagefacility_fhicl(True)
    if (
        not "ARTDAQ_LOG_FHICL" in os.environ
        #or os.environ["ARTDAQ_LOG_FHICL"] != messagefacility_fhicl_filename
    ):
        raise Exception(
            make_paragraph(
                "Although the swig_artdaq python module is available, it needs the environment variable ARTDAQ_LOG_FHICL to point to %s"
                % (messagefacility_fhicl_filename)
            )
        )

except ImportError:
    pass  # Users shouldn't need to worry if their installations don't yet have
    # python_artdaq available

from rc.control.config_functions_local import get_boot_info_base
from rc.control.config_functions_local import listdaqcomps_base

try:
    imp.find_module("daqinterface_overrides_for_experiment")
    from daqinterface_overrides_for_experiment import perform_periodic_action_base
except:
    from rc.control.all_functions_noop import perform_periodic_action_base

try:
    imp.find_module("daqinterface_overrides_for_experiment")
    from daqinterface_overrides_for_experiment import start_datataking_base
except:
    from rc.control.all_functions_noop import start_datataking_base

try:
    imp.find_module("daqinterface_overrides_for_experiment")
    from daqinterface_overrides_for_experiment import stop_datataking_base
except:
    from rc.control.all_functions_noop import stop_datataking_base

try:
    imp.find_module("daqinterface_overrides_for_experiment")
    from daqinterface_overrides_for_experiment import do_enable_base
except:
    from rc.control.all_functions_noop import do_enable_base

try:
    imp.find_module("daqinterface_overrides_for_experiment")
    from daqinterface_overrides_for_experiment import do_disable_base
except:
    from rc.control.all_functions_noop import do_disable_base

try:
    imp.find_module("daqinterface_overrides_for_experiment")
    from daqinterface_overrides_for_experiment import check_config_base
except:
    from rc.control.all_functions_noop import check_config_base


process_management_methods = ["direct", "external_run_control"]

if "DAQINTERFACE_PROCESS_MANAGEMENT_METHOD" not in os.environ.keys():
    raise Exception(
        make_paragraph(
            "Need to have the DAQINTERFACE_PROCESS_MANAGEMENT_METHOD set so DAQinterface knows what method to use to control the artdaq processes (%s, etc.)"
            % (",".join(['"' + pmm + '"' for pmm in process_management_methods[:2]]))
        )
    )
else:
    legal_method_found = False
    for pmm in process_management_methods:
        if os.environ["DAQINTERFACE_PROCESS_MANAGEMENT_METHOD"] == pmm:
            legal_method_found = True

    if not legal_method_found:
        raise Exception(
            make_paragraph(
                'DAQInterface can\'t interpret the current value of the DAQINTERFACE_PROCESS_MANAGEMENT_METHOD environment variable ("%s"); legal values are: %s'
                % (
                    os.environ["DAQINTERFACE_PROCESS_MANAGEMENT_METHOD"],
                    ",".join(['"' + pmm + '"' for pmm in process_management_methods]),
                )
            )
        )

if os.environ["DAQINTERFACE_PROCESS_MANAGEMENT_METHOD"] == "direct":
    from rc.control.manage_processes_direct import launch_procs_base
    from rc.control.manage_processes_direct import kill_procs_base
    from rc.control.manage_processes_direct import check_proc_heartbeats_base
    from rc.control.manage_processes_direct import (
        softlink_process_manager_logfiles_base,
    )
    from rc.control.manage_processes_direct import find_process_manager_variable_base
    from rc.control.manage_processes_direct import (
        set_process_manager_default_variables_base,
    )
    from rc.control.manage_processes_direct import reset_process_manager_variables_base
    from rc.control.manage_processes_direct import (
        get_process_manager_log_filenames_base,
    )
    from rc.control.manage_processes_direct import process_manager_cleanup_base
    from rc.control.manage_processes_direct import get_pid_for_process_base
    from rc.control.manage_processes_direct import process_launch_diagnostics_base
    from rc.control.manage_processes_direct import mopup_process_base
elif os.environ["DAQINTERFACE_PROCESS_MANAGEMENT_METHOD"] == "external_run_control":
    from rc.control.all_functions_noop import launch_procs_base
    from rc.control.all_functions_noop import kill_procs_base
    from rc.control.all_functions_noop import check_proc_heartbeats_base
    from rc.control.all_functions_noop import softlink_process_manager_logfiles_base
    from rc.control.all_functions_noop import set_process_manager_default_variables_base
    from rc.control.all_functions_noop import reset_process_manager_variables_base
    from rc.control.all_functions_noop import get_process_manager_log_filenames_base
    from rc.control.all_functions_noop import process_manager_cleanup_base
    from rc.control.all_functions_noop import get_pid_for_process_base
    from rc.control.all_functions_noop import process_launch_diagnostics_base
    from rc.control.all_functions_noop import mopup_process_base

    def find_process_manager_variable_base(
        self, line
    ):  # Actually used in get_boot_info() despite external_run_control
        return False


# This is the end of if-elifs of process management methods
if not "DAQINTERFACE_FHICL_DIRECTORY" in os.environ:
    print
    raise Exception(
        make_paragraph(
            "The DAQINTERFACE_FHICL_DIRECTORY environment variable must be defined; if you wish to use the database rather than the local filesystem for FHiCL document retrieval, set DAQINTERFACE_FHICL_DIRECTORY to IGNORED"
        )
    )
elif os.environ["DAQINTERFACE_FHICL_DIRECTORY"] == "IGNORED":
    from rc.control.config_functions_database_v2 import get_config_info_base
    from rc.control.config_functions_database_v2 import put_config_info_base
    from rc.control.config_functions_database_v2 import put_config_info_on_stop_base
    from rc.control.config_functions_database_v2 import listconfigs_base

else:
    from rc.control.config_functions_local import get_config_info_base
    from rc.control.config_functions_local import put_config_info_base
    from rc.control.config_functions_local import put_config_info_on_stop_base
    from rc.control.config_functions_local import listconfigs_base


class DAQInterface(Component):
    """
    DAQInterface: The intermediary between Run Control, the
    configuration database, and artdaq processes

    """

    # "Procinfo" is basically just a simple structure containing all
    # the info about a given artdaq process that DAQInterface might
    # care about

    # However, it also contains a less-than function which allows it
    # to be sorted s.t. processes you'd want shutdown first appear
    # before processes you'd want shutdown last (in order:
    # boardreader, eventbuilder, datalogger, dispatcher, routingmanager)

    # JCF, Nov-17-2015

    # I add the "fhicl_file_path" variable, which is a sequence of
    # paths which are searched in order to cut-and-paste #include'd
    # files (see also the description of the DAQInterface class's
    # fhicl_file_path variable, whose sole purpose is to be passed to
    # Procinfo's functions)

    # JCF, Apr-26-2018

    # The "label" variable is used to pick out specific FHiCL files
    # for EventBuilders, DataLoggers, Dispatchers and RoutingManagers;
    # a given process's label is set in the boot file, alongside its
    # host and port

    class Procinfo(object):
        def __init__(
            self,
            name,
            rank,
            host,
            port,
            label=None,
            subsystem="1",
            allowed_processors=None,
            target=None,
            prepend="",
            fhicl=None,
            fhicl_file_path=[],
        ):
            self.name = name
            self.rank = rank
            self.port = port
            self.host = host
            self.label = label
            self.subsystem = subsystem
            self.allowed_processors = allowed_processors
            self.target = target
            self.prepend = prepend
            self.fhicl = fhicl  # Name of the input FHiCL document
            self.ffp = fhicl_file_path
            self.priority = 999

            # FHiCL code actually sent to the process

            # JCF, 11/11/14 -- note that "fhicl_used" will be modified
            # during the initalization function, as bookkeeping, etc.,
            # is performed on FHiCL parameters

            if self.fhicl is not None:
                self.fhicl_used = ""
                self.recursive_include(self.fhicl)
            else:
                self.fhicl_used = None

            # JCF, Jan-14-2016

            # Do NOT change the "lastreturned" string below without
            # changing the commensurate string in check_proc_transition!

            self.lastreturned = "DAQInterface: ARTDAQ PROCESS NOT YET CALLED"
            self.socketstring = "http://" + self.host + ":" + self.port + "/RPC2"
            self.state = "nonexistent"

        def update_fhicl(self, fhicl):
            self.fhicl = fhicl
            self.fhicl_used = ""
            self.recursive_include(self.fhicl)

        def __lt__(self, other):
            if self.name != other.name:

                processes_upstream_to_downstream = [
                    "BoardReader",
                    "EventBuilder",
                    "DataLogger",
                    "Dispatcher",
                    "RoutingManager",
                ]

                if processes_upstream_to_downstream.index(
                    self.name
                ) < processes_upstream_to_downstream.index(other.name):
                    return True
                else:
                    return False
            else:
                if int(self.port) < int(other.port):
                    return True
                return False

        def recursive_include(self, filename):

            if self.fhicl is not None:
                for line in open(filename).readlines():

                    if "#include" not in line:
                        self.fhicl_used += line
                    else:
                        res = re.search(r"^\s*#.*#include", line)

                        if res:
                            self.fhicl_used += line
                            continue

                        res = re.search(r"^\s*#include\s+\"(\S+)\"", line)

                        if not res:
                            raise Exception(
                                make_paragraph(
                                    "Error in Procinfo::recursive_include: "
                                    'unable to parse line "%s" in %s' % (line, filename)
                                )
                            )

                        included_file = res.group(1)

                        if included_file[0] == "/":
                            if not os.path.exists(included_file):
                                raise Exception(
                                    make_paragraph(
                                        "Error in "
                                        "Procinfo::recursive_include: "
                                        "unable to find file %s included in %s"
                                        % (included_file, filename)
                                    )
                                )
                            else:
                                self.recursive_include(included_file)
                        else:
                            found_file = False

                            for dirname in self.ffp:
                                if (
                                    os.path.exists(dirname + "/" + included_file)
                                    and not found_file
                                ):
                                    self.recursive_include(
                                        dirname + "/" + included_file
                                    )
                                    found_file = True

                            if not found_file:

                                ffp_string = ":".join(self.ffp)

                                raise Exception(
                                    make_paragraph(
                                        "Error in Procinfo::recursive_include: "
                                        "unable to find file %s in list of "
                                        "the following fhicl_file_paths: %s"
                                        % (included_file, ffp_string)
                                    )
                                )

    # "Subsystem" is a structure containing all the info about a given
    # artdaq subsytem.

    class Subsystem(object):
        def __init__(
            self,
            sources=[],
            destination=None,
            fragmentMode=True,
        ):
            self.sources = sources
            self.destination = destination
            self.fragmentMode = fragmentMode

        def __lt__(self, other):
            if self.id != other.id:

                if self.destination == other.id:
                    return True
                else:
                    return False
            else:
                return False  # equal

    def print_log(self, severity, printstr, debuglevel=-999, newline=True):
        printstr = str(printstr)

        dummy, month, day, time, timezone, year = date_and_time().split()
        formatted_day = "%s-%s-%s" % (day, month, year)

        if self.debug_level >= debuglevel:

            # JCF, Dec-31-2019
            # The swig_artdaq instance by default writes to stdout, so no
            # explicit print call is needed
            if self.use_messagefacility and self.messageviewer_sender is not None:
                if severity == "e":
                    self.messageviewer_sender.write_error(
                        "DAQInterface partition %s"
                        % (os.environ["DAQINTERFACE_PARTITION_NUMBER"]),
                        printstr,
                    )
                elif severity == "w":
                    self.messageviewer_sender.write_warning(
                        "DAQInterface partition %s"
                        % (os.environ["DAQINTERFACE_PARTITION_NUMBER"]),
                        printstr,
                    )
                elif severity == "i":
                    self.messageviewer_sender.write_info(
                        "DAQInterface partition %s"
                        % (os.environ["DAQINTERFACE_PARTITION_NUMBER"]),
                        printstr,
                    )
                elif severity == "d":
                    self.messageviewer_sender.write_debug(
                        "DAQInterface partition %s"
                        % (os.environ["DAQINTERFACE_PARTITION_NUMBER"]),
                        printstr,
                    )

            else:
                with self.printlock:
                    if self.fake_messagefacility:
                        print(
                            "%%MSG-%s DAQInterface %s %s %s"
                            % (severity, formatted_day, time, timezone),
                            flush=True,
                        )
                    if not newline and not self.fake_messagefacility:
                        sys.stdout.write(printstr)
                        sys.stdout.flush()
                    else:
                        print(printstr, flush=True)

                    if self.fake_messagefacility:
                        print("%MSG", flush=True)

    # JCF, Dec-16-2016

    # The purpose of reset_variables is to reset those members that
    # (A) aren't necessarily persistent to the process (thus excluding
    # the parameters in $DAQINTERFACE_SETTINGS) and (B) won't
    # necessarily be set explicitly during the transitions up from the
    # "stopped" state. E.g., you wouldn't want to return to the
    # "stopped" state with self.exception == True and then try a
    # boot-config-start without self.exception being reset to False

    def reset_variables(self):

        self.in_recovery = False
        self.heartbeat_failure = False
        self.manage_processes = True
        self.disable_recovery = False
        self.bootfile_fhicl_overwrites = {}
        self.called_launch_procs = False
        self.procs_which_already_caused_connection_refused = []
        self.daq_setup_script = None
        self.debug_level = 10000
        self.request_address = None
        self.run_number = None

        # JCF, Nov-7-2015

        # Now that we're going with a multithreaded (simultaneous)
        # approach to sending transition commands to artdaq processes,
        # when an exception is thrown a thread the main thread needs
        # to know about it somehow - thus this new exception variable

        self.exception = False

        self.reset_process_manager_variables()

        # "procinfos" will be an array of Procinfo structures (defined
        # above), where Procinfo contains all the info DAQInterface
        # needs to know about an individual artdaq process: name,
        # host, port, and FHiCL initialization document. Filled
        # through a combination of info in the DAQInterface
        # configuration file as well as the components list

        self.procinfos = []

        # "subsystems" is an dictionary of Subsystem structures (defined
        # above),
        # where Subsystem contains all the information DAQInterface needs
        # to know about artdaq subsystems: id (dictionary key), source
        # subsystem, destination subsystem.
        # Subsystems are an optional feature that allow users to build complex
        # configurations
        # with multiple request domains and levels of filtering.
        self.subsystems = {}

    # Constructor for DAQInterface begins here

    def __init__(
        self,
        logpath=None,
        name="toycomponent",
        rpc_host="localhost",
        control_host="localhost",
        synchronous=True,
        rpc_port=6659,
        partition_number=999,
    ):

        # Initialize Component, the base class of DAQInterface

        Component.__init__(
            self,
            logpath=logpath,
            name=name,
            rpc_host=rpc_host,
            control_host=control_host,
            synchronous=synchronous,
            rpc_port=rpc_port,
            skip_init=False,
        )

        self.reset_variables()

        self.partition_number = partition_number
        self.transfer = "Autodetect"
        self.rpc_port = rpc_port

        self.boardreader_priorities = None
        self.boardreader_priorities_on_config = None
        self.boardreader_priorities_on_start = None
        self.boardreader_priorities_on_stop = None

        self.daqinterface_base_dir = os.getcwd()

        # JCF, Nov-17-2015

        # fhicl_file_path is a sequence of directory names which will
        # be searched for any FHiCL documents #include'd by the main
        # document used to initialize each artdaq process, but not
        # given with an absolute path in the #include .

        self.fhicl_file_path = []

        self.__do_boot = False
        self.__do_shutdown = False
        self.__do_config = False
        self.__do_start_running = False
        self.__do_stop_running = False
        self.__do_terminate = False
        self.__do_pause_running = False
        self.__do_resume_running = False
        self.__do_recover = False
        self.__do_enable = False
        self.__do_disable = False

        self.do_trace_get_boolean = False
        self.do_trace_set_boolean = False

        self.messageviewer_sender = None
        self.printlock = RLock()

        # Here, states refers to individual artdaq process states, not the
        # DAQInterface state
        self.target_states = {
            "Init": "Ready",
            "Start": "Running",
            "Pause": "Paused",
            "Resume": "Running",
            "Stop": "Ready",
            "Shutdown": "Stopped",
        }
        self.verbing_to_states = {
            "Init": "Configuring",
            "Start": "Starting",
            "Pause": "Pausing",
            "Resume": "Resuming",
            "Stop": "Stopping",
            "Shutdown": "Shutting down",
        }

        try:
            self.read_settings()
        except:
            self.print_log("e", traceback.format_exc())
            self.print_log(
                "e",
                make_paragraph(
                    "An exception was thrown when trying to read DAQInterface settings; "
                    "DAQInterface will exit. Look at the messages above, make any necessary "
                    "changes, and restart."
                )
                + "\n",
            )
            sys.exit(1)

        if self.use_messagefacility:
            try:
                config_str = "application_name: DAQInterface"
                if self.debug_level > 0:
                    config_str += " debug_logging: true"
                
                self.messageviewer_sender = swig_artdaq(config_str)
            except:
                pass

        if not os.access(self.record_directory, os.W_OK | os.X_OK):
            self.print_log(
                "e",
                make_paragraph(
                    "DAQInterface launch failed since it's been determined that you don't have write access to the run records directory \"%s\""
                    % (self.record_directory)
                ),
            )
            sys.exit(1)

        self.print_log(
            "i",
            '%s: DAQInterface in partition %s launched and now in "%s" state, listening on port %d'
            % (
                date_and_time(),
                self.partition_number,
                self.state(self.name),
                self.rpc_port,
            ),
        )

    def __del__(self):
        kill_tail_f()

    get_config_info = get_config_info_base
    put_config_info = put_config_info_base
    put_config_info_on_stop = put_config_info_on_stop_base
    get_boot_info = get_boot_info_base
    listdaqcomps = listdaqcomps_base
    listconfigs = listconfigs_base
    save_run_record = save_run_record_base
    save_metadata_value = save_metadata_value_base
    start_datataking = start_datataking_base
    stop_datataking = stop_datataking_base
    bookkeeping_for_fhicl_documents = bookkeeping_for_fhicl_documents_artdaq_v3_base
    do_enable = do_enable_base
    do_disable = do_disable_base
    launch_procs = launch_procs_base
    kill_procs = kill_procs_base
    check_proc_heartbeats = check_proc_heartbeats_base
    softlink_process_manager_logfiles = softlink_process_manager_logfiles_base
    find_process_manager_variable = find_process_manager_variable_base
    set_process_manager_default_variables = set_process_manager_default_variables_base
    reset_process_manager_variables = reset_process_manager_variables_base
    get_process_manager_log_filenames = get_process_manager_log_filenames_base
    process_manager_cleanup = process_manager_cleanup_base
    process_launch_diagnostics = process_launch_diagnostics_base
    mopup_process = mopup_process_base
    get_pid_for_process = get_pid_for_process_base
    perform_periodic_action = perform_periodic_action_base
    check_config = check_config_base

    # The actual transition functions called by Run Control; note
    # these just set booleans which are tested in the runner()
    # function, called periodically by run control

    def boot(self):
        self.__do_boot = True

    def shutdown(self):
        self.__do_shutdown = True

    def config(self):
        self.__do_config = True

    def recover(self):
        self.__do_recover = True

    def start_running(self):
        self.__do_start_running = True

    def stop_running(self):
        self.__do_stop_running = True

    def terminate(self):
        self.__do_terminate = True

    def pause_running(self):
        self.__do_pause_running = True

    def resume_running(self):
        self.__do_resume_running = True

    def enable(self):
        self.__do_enable = True

    def disable(self):
        self.__do_disable = True

    # JCF, Jan-2-2020

    # See Issue #23792 for more on trace_get and trace_set

    def do_trace_get(self, name=None):
        if name is None:
            name = self.run_params["name"]
        self.print_log(
            "d",
            '%s: trace_get has been called with name "%s"' % (date_and_time(), name),
            3,
        )

        def send_trace_get_command(self, i_procinfo):

            if self.exception:
                self.print_log(
                    "w",
                    "An exception occurred at some point; will not send trace_get to %s"
                    % (self.procinfos[i_procinfo].label),
                )
                return

            try:
                self.procinfos[i_procinfo].lastreturned = self.procinfos[
                    i_procinfo
                ].server.daq.trace_get(name)
            except:
                self.print_log(
                    "w",
                    "Something went wrong when trace_get was called on %s with name %s"
                    % (self.procinfos[i_procinfo].label, name),
                )
                self.exception = True
                return

            with open(
                "/tmp/trace_get_%s_%s_partition%s.txt"
                % (
                    self.procinfos[i_procinfo].label,
                    os.environ["USER"],
                    os.environ["DAQINTERFACE_PARTITION_NUMBER"],
                ),
                "w",
            ) as trace_get_output:
                trace_get_output.write(
                    "\ntrace(s) below are as they appeared at %s:\n\n"
                    % (date_and_time())
                )
                trace_get_output.write(self.procinfos[i_procinfo].lastreturned)

        threads = []
        for i_p in range(len(self.procinfos)):
            t = RaisingThread(target=send_trace_get_command, args=(self, i_p))
            threads.append(t)
            t.start()

        for thread in threads:
            thread.join()

        all_trace_get_info_in_one_string = ""
        for procinfo in self.procinfos:
            with open(
                "/tmp/trace_get_%s_%s_partition%s.txt"
                % (
                    procinfo.label,
                    os.environ["USER"],
                    os.environ["DAQINTERFACE_PARTITION_NUMBER"],
                )
            ) as inf:
                all_trace_get_info_in_one_string += "\n\n%s:\n" % (procinfo.label)
                all_trace_get_info_in_one_string += inf.read()

        return all_trace_get_info_in_one_string

    def do_trace_set(self, name=None, masktype=None, maskval=None):

        if name is None:
            name = self.run_params["name"]
            masktype = self.run_params["masktype"]
            maskval = self.run_params["maskval"]

        self.print_log(
            "i",
            '%s: trace_set has been called with name "%s", masktype "%s", and maskval %s'
            % (date_and_time(), name, masktype, maskval),
        )

        def send_trace_set_command(self, i_procinfo):

            if self.exception:
                self.print_log(
                    "w",
                    "An exception occurred at some point; will not send trace_set to %s"
                    % (self.procinfos[i_procinfo].label),
                )
                return

            try:
                self.procinfos[i_procinfo].lastreturned = self.procinfos[
                    i_procinfo
                ].server.daq.trace_set(name, masktype, maskval)
            except:
                self.print_log(
                    "w",
                    "Something went wrong when trace_set was called on %s with name == %s, masktype == %s, and maskval == %s"
                    % (self.procinfos[i_procinfo].label, name, masktype, maskval),
                )
                self.exception = True
                return

        threads = []
        for i_p in range(len(self.procinfos)):
            t = RaisingThread(target=send_trace_set_command, args=(self, i_p))
            threads.append(t)
            t.start()

        for thread in threads:
            thread.join()

    def alert_and_recover(self, extrainfo=None):

        self.do_recover()

        alertmsg = ""

        if not extrainfo is None:
            alertmsg = "\n\n" + make_paragraph('"' + extrainfo + '"')

        alertmsg += "\n" + make_paragraph(
            'DAQInterface has set the DAQ back in the "Stopped" state; you may need to scroll above the Recover transition output to find messages which could help you provide any necessary adjustments.'
        )
        self.print_log("e", alertmsg)
        print
        self.print_log(
            "e",
            make_paragraph(
                'Details on how to examine the artdaq process logfiles can be found in the "Examining your output" section of the DAQInterface manual, https://cdcvs.fnal.gov/redmine/projects/artdaq-utilities/wiki/Artdaq-daqinterface#Examining-your-output'
            ),
        )
        print

    def read_settings(self):
        if not os.path.exists(os.environ["DAQINTERFACE_SETTINGS"]):
            raise Exception(
                make_paragraph(
                    'Unable to find settings file "%s"'
                    % os.environ["DAQINTERFACE_SETTINGS"]
                )
            )

        inf = open(os.environ["DAQINTERFACE_SETTINGS"])
        assert inf

        self.log_directory = None
        self.record_directory = None
        self.package_hashes_to_save = []
        self.package_versions = {}
        self.productsdir_for_bash_scripts = None
        self.max_fragment_size_bytes = None

        self.boardreader_timeout = 30
        self.eventbuilder_timeout = 30
        self.datalogger_timeout = 30
        self.dispatcher_timeout = 30
        self.routingmanager_timeout = 30

        self.use_messageviewer = True
        self.use_messagefacility = True
        self.advanced_memory_usage = False
        self.strict_fragment_id_mode = False
        self.fake_messagefacility = False
        self.attempt_existing_pid_kill = False
        self.data_directory_override = None
        self.max_configurations_to_list = 1000000
        self.disable_unique_rootfile_labels = False
        self.disable_private_network_bookkeeping = False
        self.allowed_processors = None

        self.max_num_launch_procs_checks = 20
        self.launch_procs_wait_time = 40

        self.productsdir = None
        self.spackdir = None

        for line in inf.readlines():

            line = expand_environment_variable_in_string(line)

            # Allow same-line comments
            res = re.search(r"^(.*)#.*", line)
            if res:
                line = res.group(1)

            line = line.strip()

            if re.search(r"^\s*#", line):
                continue
            elif "log_directory" in line or "log directory" in line:
                self.log_directory = line.split()[-1].strip()
            elif "record_directory" in line or "record directory" in line:
                self.record_directory = line.split()[-1].strip()
            elif (
                "productsdir_for_bash_scripts" in line
                or "productsdir for bash scripts" in line
            ):
                self.productsdir = line.split()[-1].strip()
            elif (
                "spack_root_for_bash_scripts" in line
                or "spack root for bash scripts" in line
            ):
                self.spackdir = line.split()[-1].strip()
            elif "package_hashes_to_save" in line or "package hashes to save" in line:
                res = re.search(r".*\[(.*)\].*", line)

                if not res:
                    raise Exception(
                        make_paragraph(
                            "Unable to parse package_hashes_to_save line in the settings file, %s"
                            % (os.environ["DAQINTERFACE_SETTINGS"])
                        )
                    )

                if res.group(1).strip() == "":
                    continue

                package_hashes_to_save_unprocessed = res.group(1).split(",")

                for ip, package in enumerate(package_hashes_to_save_unprocessed):
                    package = package.replace('"', "")
                    package = package.replace(
                        " ", ""
                    )  # strip() doesn't seem to work here
                    self.package_hashes_to_save.append(package)
            elif "boardreader_timeout" in line or "boardreader timeout" in line:
                self.boardreader_timeout = int(line.split()[-1].strip())
            elif "eventbuilder_timeout" in line or "eventbuilder timeout" in line:
                self.eventbuilder_timeout = int(line.split()[-1].strip())
            elif "datalogger_timeout" in line or "datalogger timeout" in line:
                self.datalogger_timeout = int(line.split()[-1].strip())
            elif "dispatcher_timeout" in line or "dispatcher timeout" in line:
                self.dispatcher_timeout = int(line.split()[-1].strip())
            elif re.search(r"^\s*routing_?manager[ _]timeout", line):
                self.routingmanager_timeout = int(line.split()[-1].strip())
            elif "boardreader_priorities:" in line or "boardreader priorities:" in line:
                res = re.search(r"^\s*boardreader[ _]priorities\s*:\s*(.*)", line)
                if res:
                    self.boardreader_priorities = [
                        regexp.strip() for regexp in res.group(1).split()
                    ]
                else:
                    raise Exception(
                        'Incorrectly formatted line "%s" in %s'
                        % (line.strip(), os.environ["DAQINTERFACE_SETTINGS"])
                    )
            elif (
                "boardreader_priorities_on_config:" in line
                or "boardreader priorities on config:" in line
            ):
                res = re.search(
                    r"^\s*boardreader[ _]priorities[ _]on[ _]config:\s*(.*)", line
                )
                if res:
                    self.boardreader_priorities_on_config = [
                        regexp.strip() for regexp in res.group(1).split()
                    ]
                    # print self.boardreader_priorities_on_config
                else:
                    raise Exception(
                        'Incorrectly formatted line "%s" in %s'
                        % (line.strip(), os.environ["DAQINTERFACE_SETTINGS"])
                    )
            elif (
                "boardreader_priorities_on_start:" in line
                or "boardreader priorities on start:" in line
            ):
                res = re.search(
                    r"^\s*boardreader[ _]priorities[ _]on[ _]start:\s*(.*)", line
                )
                if res:
                    self.boardreader_priorities_on_start = [
                        regexp.strip() for regexp in res.group(1).split()
                    ]
                    # print self.boardreader_priorities_on_start
                else:
                    raise Exception(
                        'Incorrectly formatted line "%s" in %s'
                        % (line.strip(), os.environ["DAQINTERFACE_SETTINGS"])
                    )
            elif (
                "boardreader_priorities_on_stop:" in line
                or "boardreader priorities on stop:" in line
            ):
                res = re.search(
                    r"^\s*boardreader[ _]priorities[ _]on[ _]stop:\s*(.*)", line
                )
                if res:
                    self.boardreader_priorities_on_stop = [
                        regexp.strip() for regexp in res.group(1).split()
                    ]
                    # print self.boardreader_priorities_on_stop
                else:
                    raise Exception(
                        'Incorrectly formatted line "%s" in %s'
                        % (line.strip(), os.environ["DAQINTERFACE_SETTINGS"])
                    )

            elif "max_fragment_size_bytes" in line or "max fragment size bytes" in line:
                max_fragment_size_bytes_token = line.split()[-1].strip()

                if max_fragment_size_bytes_token[0:2] != "0x":
                    self.max_fragment_size_bytes = int(max_fragment_size_bytes_token)
                else:
                    self.max_fragment_size_bytes = int(
                        max_fragment_size_bytes_token[2:], 16
                    )

                if self.max_fragment_size_bytes % 8 != 0:
                    raise Exception(
                        'Value for "max_fragment_size_bytes" in settings file "%s" should be a multiple of 8'
                        % (os.environ["DAQINTERFACE_SETTINGS"])
                    )
            elif (
                "max_configurations_to_list" in line
                or "max configurations to list" in line
            ):
                self.max_configurations_to_list = int(line.split()[-1].strip())
            elif (
                "disable_unique_rootfile_labels" in line
                or "disable unique rootfile labels" in line
            ):
                token = line.split()[-1].strip()
                if "true" in token or "True" in token:
                    self.disable_unique_rootfile_labels = True
                elif "false" in token or "False" in token:
                    self.disable_unique_rootfile_labels = False
                else:
                    raise Exception(
                        'disable_unique_rootfile_labels must be set to either [Tt]rue or [Ff]alse in settings file "%s"'
                        % (os.environ["DAQINTERFACE_SETTINGS"])
                    )
            elif (
                "disable_private_network_bookkeeping" in line
                or "disable private network bookkeeping" in line
            ):
                token = line.split()[-1].strip()
                if "true" in token or "True" in token:
                    self.disable_private_network_bookkeeping = True
                elif "false" in token or "False" in token:
                    self.disable_private_network_bookkeeping = False
                else:
                    raise Exception(
                        'disable_private_network_bookkeeping must be set to either [Tt]rue or [Ff]alse in settings file "%s"'
                        % (os.environ["DAQINTERFACE_SETTINGS"])
                    )
            elif "use_messageviewer" in line or "use messageviewer" in line:
                token = line.split()[-1].strip()

                res = re.search(r"[Ff]alse", token)

                if res:
                    self.use_messageviewer = False
            elif "use_messagefacility" in line or "use messagefacility" in line:
                token = line.split()[-1].strip()

                res = re.search(r"[Ff]alse", token)

                if res:
                    self.use_messagefacility = False
            elif "advanced_memory_usage" in line or "advanced memory usage" in line:
                token = line.split()[-1].strip()

                res = re.search(r"[Tt]rue", token)

                if res:
                    self.advanced_memory_usage = True
            elif "strict_fragment_id_mode" in line or "strict fragment id mode" in line:
                token = line.split()[-1].strip()

                res = re.search(r"[Tt]rue", token)

                if res:
                    self.strict_fragment_id_mode = True
            elif "fake_messagefacility" in line or "fake messagefacility" in line:
                token = line.split()[-1].strip()

                res = re.search(r"[Tt]rue", token)

                if res:
                    self.fake_messagefacility = True
            elif "data_directory_override" in line or "data directory override" in line:
                self.data_directory_override = line.split()[-1].strip()
                if self.data_directory_override[-1] != "/":
                    self.data_directory_override = self.data_directory_override + "/"
            elif "transfer_plugin_to_use" in line or "transfer plugin to use" in line:
                self.transfer = line.split()[-1].strip()
            elif "allowed_processors" in line or "allowed processors" in line:
                self.allowed_processors = line.split()[-1].strip()
            elif "max_launch_checks" in line or "max launch checks" in line:
                self.max_num_launch_procs_checks = int(line.split()[-1].strip())
            elif "launch_procs_wait_time" in line or "launch procs wait time" in line:
                self.launch_procs_wait_time = int(line.split()[-1].strip())
            elif "kill_existing_processes" in line or "kill existing processes" in line:
                token = line.split()[-1].strip()

                res = re.search(r"[Tt]rue", token)

                if res:
                    self.attempt_existing_pid_kill = True

        missing_vars = []

        # Must wait at least one seconds between checks
        if self.launch_procs_wait_time < self.max_num_launch_procs_checks:
            self.launch_procs_wait_time = self.max_num_launch_procs_checks

        if self.log_directory is None:
            missing_vars.append("log_directory")

        if self.record_directory is None:
            missing_vars.append("record_directory")

        if self.productsdir is None and self.spackdir is None:
            missing_vars.append("productsdir_for_bash_scripts or spack_root_for_bash_scripts")

        if not self.advanced_memory_usage and self.max_fragment_size_bytes is None:
            missing_vars.append("max_fragment_size_bytes")

        if self.advanced_memory_usage and self.max_fragment_size_bytes is not None:
            raise Exception(
                make_paragraph(
                    "Since advanced_memory_usage is set to true in the settings file (%s), max_fragment_size_bytes must NOT be set (i.e., delete it or comment it out)"
                    % (os.environ["DAQINTERFACE_SETTINGS"])
                )
            )

        if len(missing_vars) > 0:
            missing_vars_string = ", ".join(missing_vars)
            print
            raise Exception(
                make_paragraph(
                    "Unable to parse the following variable(s) meant to be set in the "
                    "settings file, %s"
                    % (os.environ["DAQINTERFACE_SETTINGS"] + ": " + missing_vars_string)
                )
            )

        if not self.advanced_memory_usage and not self.max_fragment_size_bytes:
            raise Exception(
                make_paragraph(
                    "max_fragment_size_bytes isn't set in the settings file, "
                    "%s; this needs to be set since advanced_memory_usage isn't set to true"
                    % os.environ["DAQINTERFACE_SETTINGS"]
                )
            )

        if self.boardreader_priorities is not None and (
            self.boardreader_priorities_on_config is not None
            or self.boardreader_priorities_on_start is not None
            or self.boardreader_priorities_on_stop is not None
        ):
            raise Exception(
                make_paragraph(
                    'Both "boardreader_priorities" and at least one of "boardreader_priorities_on_config", "boardreader_priorities_on_start", and "boardreader_priorities_on_stop" are defined in %s; this is not allowed. For further information, take a look at "The settings file reference" in the DAQInterface Manual'
                    % (os.environ["DAQINTERFACE_SETTINGS"])
                )
            )

        if self.boardreader_priorities is not None:
            self.boardreader_priorities_on_config = self.boardreader_priorities
            self.boardreader_priorities_on_start = self.boardreader_priorities
            self.boardreader_priorities_on_stop = self.boardreader_priorities

    def check_proc_transition(self, target_state):

        is_all_ok = True

        # The following code will give artdaq processes max_retries
        # chances to return "Success", if, rather than
        # procinfo.lastreturned indicating an error condition, it
        # simply appears that it hasn't been assigned its new status
        # yet

        for procinfo in self.procinfos:

            if (
                procinfo.lastreturned != "Success"
                and procinfo.lastreturned != target_state
            ):

                redeemed = False
                max_retries = 20
                retry_counter = 0

                while retry_counter < max_retries and (
                    "ARTDAQ PROCESS NOT YET CALLED" in procinfo.lastreturned
                    or "Stopped" in procinfo.lastreturned
                    or "Booted" in procinfo.lastreturned
                    or "Ready" in procinfo.lastreturned
                    or "Running" in procinfo.lastreturned
                    or "Paused" in procinfo.lastreturned
                    or "busy" in procinfo.lastreturned
                ):
                    retry_counter += 1
                    sleep(1)
                    if (
                        procinfo.lastreturned == "Success"
                        or procinfo.lastreturned == target_state
                    ):
                        redeemed = True
                        procinfo.state = target_state

                if redeemed:
                    successmsg = (
                        "After "
                        + str(retry_counter)
                        + " checks, process "
                        + procinfo.label
                        + " at "
                        + procinfo.host
                        + ":"
                        + procinfo.port
                        + ' returned "Success"'
                    )
                    self.print_log("i", successmsg)
                    continue  # We're fine, continue on to the next process check

                errmsg = (
                    "Unexpected status message from process "
                    + procinfo.label
                    + " at "
                    + procinfo.host
                    + ":"
                    + procinfo.port
                    + ': "'
                    + procinfo.lastreturned
                    + '"'
                )
                self.print_log("w", make_paragraph(errmsg))
                print
                self.print_log(
                    "w",
                    "See logfile %s for details"
                    % (self.determine_logfilename(procinfo)),
                )

                if (
                    "BoardReader" in procinfo.name
                    and target_state == "Ready"
                    and "with ParameterSet" in procinfo.lastreturned
                ):
                    print
                    self.print_log(
                        "w",
                        make_paragraph(
                            "This is likely because the fragment generator constructor in %s threw an exception (see logfile %s for details)."
                            % (procinfo.label, self.determine_logfilename(procinfo))
                        ),
                    )

                is_all_ok = False

        if not is_all_ok:
            raise Exception("At least one artdaq process failed a transition")

    def have_artdaq_mfextensions(self):

        try:
            self.artdaq_mfextensions_booleans
        except:
            self.artdaq_mfextensions_booleans = {}

        try:
            self.artdaq_mfextensions_booleans[self.daq_setup_script]
        except:
            pass
        else:
            return self.artdaq_mfextensions_booleans[self.daq_setup_script]

        cmds = []
        cmds += get_setup_commands(self.productsdir, self.spackdir)
        cmds.append(". %s for_running" % (self.daq_setup_script))
        cmds.append(
            'if test -n "$SETUP_ARTDAQ_MFEXTENSIONS" -o -d "$ARTDAQ_MFEXTENSIONS_DIR"; then true; else false; fi'
        )

        checked_cmd = construct_checked_command(cmds)
        print("Checking for artdaq_mfextensions: %s" % (checked_cmd))
        status = Popen(
            checked_cmd,
            executable="/bin/bash",
            shell=True,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        ).wait()

        if status == 0:
            self.artdaq_mfextensions_booleans[self.daq_setup_script] = True
        else:
            self.artdaq_mfextensions_booleans[self.daq_setup_script] = False

        return self.artdaq_mfextensions_booleans[self.daq_setup_script]

    def artdaq_mfextensions_info(self):

        assert self.have_artdaq_mfextensions()

        cmds = []
        cmds += get_setup_commands(self.productsdir, self.spackdir)
        cmds.append(". %s for_running" % (self.daq_setup_script))
        cmds.append(
            'if [ -n "$SETUP_ARTDAQ_MFEXTENSIONS" ]; then printenv SETUP_ARTDAQ_MFEXTENSIONS; else echo "artdaq_mfextensions $ARTDAQ_MFEXTENSIONS_VERSION $MRB_QUALS";fi'
        )

        proc = Popen(
            ";".join(cmds),
            executable="/bin/bash",
            shell=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )

        proclines = proc.stdout.readlines()

        printenv_line = proclines[-1].decode("utf-8")
        version = printenv_line.split()[1]
        qualifiers = printenv_line.split()[-1]

        return (version, qualifiers)

    # WK 8/31/21
    # refactor out launching the message viewer into a function
    # and make that function run in the background
    # return a proc that can be polled.
    def launch_msgviewer(self):
        cmds = []
        port_to_replace = 30000
        msgviewer_fhicl = "/tmp/msgviewer_partition%d_%s.fcl" % (
            self.partition_number,
            os.environ["USER"],
        )
        cmds += get_setup_commands(self.productsdir, self.spackdir)
        cmds.append(". %s for_running" % (self.daq_setup_script))
        cmds.append("which msgviewer")
        cmds.append(
            "cp $ARTDAQ_MFEXTENSIONS_DIR/fcl/msgviewer.fcl %s" % (msgviewer_fhicl)
        )
        cmds.append(
            'res=$( grep -l "port: %d" %s )' % (port_to_replace, msgviewer_fhicl)
        )
        cmds.append("if [[ -n $res ]]; then true ; else false ; fi")
        cmds.append(
            "sed -r -i 's/port: [^\s]+/port: %d/' %s"
            % (10005 + self.partition_number * 1000, msgviewer_fhicl)
        )
        cmds.append("msgviewer -c %s >/dev/null 2>&1 &" % (msgviewer_fhicl))

        msgviewercmd = construct_checked_command(cmds)

        proc = Popen(
            msgviewercmd,
            executable="/bin/bash",
            shell=True,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )

        return proc

    # JCF, 5/29/15

    # check_proc_exceptions() takes advantage of an artdaq feature
    # developed by Kurt earlier this month whereby if something goes
    # wrong in an artdaq process during running (e.g., a fragment
    # generator's getNext_() function throws an exception) then, when
    # queried, the artdaq process can return an "Error" state, as
    # opposed to the usual DAQ states ("Ready", "Running", etc.)

    # Feb-26-2017

    # Note that "exceptions" in the context of the function name
    # check_proc_exceptions() refers to an exception being thrown
    # within a fragment generator, resulting in the artdaq process
    # returning an "Error" when queried. It's not the same thing as
    # what the self.exception variable denotes, which is that a
    # literal Python exception got thrown at some point.

    def check_proc_exceptions(self):

        if self.exception:
            return

        for procinfo in self.procinfos:

            try:
                procinfo.lastreturned = procinfo.server.daq.status()
            except Exception as ex:

                self.print_log(
                    "w",
                    make_paragraph(
                        "Exception caught when querying the status of artdaq process %s at %s:%s; exception type == %s, name == %s"
                        % (
                            procinfo.label,
                            procinfo.host,
                            procinfo.port,
                            type(ex),
                            type(ex).__name__,
                        )
                    ),
                )

                if "[Errno 111] Connection refused" in traceback.format_exc():
                    self.print_log(
                        "w",
                        make_paragraph(
                            'An "[Errno 111] Connection refused" exception was thrown when attempting to query artdaq process %s at %s:%s; this likely means the process no longer exists -- try checking logfile %s for details'
                            % (
                                procinfo.label,
                                procinfo.host,
                                procinfo.port,
                                self.determine_logfilename(procinfo),
                            )
                        ),
                    )
                    if (
                        procinfo.label
                        in self.procs_which_already_caused_connection_refused
                    ):
                        raise Exception(
                            make_paragraph(
                                'Error: artdaq process "%s" has repeatedly returned "[Errno 111] Connection refused" when queried; this most likely means it\'s died'
                            )
                        )
                    else:
                        self.procs_which_already_caused_connection_refused.append(
                            procinfo.label
                        )

                elif "[Errno 113] No route to host" in traceback.format_exc():
                    raise Exception(
                        make_paragraph(
                            'Error: an "[Errno 113] No route to host" exception was thrown when attempting to query artdaq process %s at %s:%s; this likely means there\'s an XML-RPC connection issue between this host and %s'
                            % (
                                procinfo.label,
                                procinfo.host,
                                procinfo.port,
                                procinfo.host,
                            )
                        )
                    )
                else:
                    raise

                continue
            else:
                procinfo.state = procinfo.lastreturned

            if procinfo.state == "Error":

                errmsg = (
                    '%s: "Error" state found to have been returned by process %s at %s:%s; please check MessageViewer if up and/or the process logfile, %s'
                    % (
                        date_and_time(),
                        procinfo.label,
                        procinfo.host,
                        procinfo.port,
                        self.determine_logfilename(procinfo),
                    )
                )

                print
                self.print_log("e", make_paragraph(errmsg))
                self.print_log(
                    "i",
                    "\nWill remove %s from the list of processes" % (procinfo.label),
                )
                print
                self.mopup_process(procinfo)
                self.procinfos.remove(procinfo)
                print

                self.throw_exception_if_losing_process_violates_requirements(procinfo)

                self.print_log(
                    "i",
                    "Processes remaining:\n%s"
                    % ("\n".join([procinfo.label for procinfo in self.procinfos])),
                )

    def init_process_requirements(self):
        self.overriding_process_requirements = []

        def num_processes_required_by_fraction(regexp, fraction):
            absolute_count = 0
            for procinfo in self.procinfos:
                if re.search(regexp, procinfo.label):
                    absolute_count += 1
            return int(round(absolute_count * fraction + 0.499999))  # round up

        if "DAQINTERFACE_PROCESS_REQUIREMENTS_LIST" in os.environ:
            if not os.path.exists(os.environ["DAQINTERFACE_PROCESS_REQUIREMENTS_LIST"]):
                raise Exception(
                    'The file "%s" referred to by the environment variable DAQINTERFACE_PROCESS_REQUIREMENTS_LIST doesn\'t appear to exist'
                    % (os.environ["DAQINTERFACE_PROCESS_REQUIREMENTS_LIST"])
                )

            with open(os.environ["DAQINTERFACE_PROCESS_REQUIREMENTS_LIST"]) as inf:
                for line in inf.readlines():

                    if re.search(r"^\s*$", line) or re.search(r"^\s*#", line):
                        continue

                    possible_comment_location = line.find("#")
                    if possible_comment_location != -1:
                        line = line[:possible_comment_location]

                    res = re.search(r"^\s*(\S+)\s+([\d\.]+)\s+(\d+)\s*$", line)
                    if res:
                        regexp_to_match = res.group(1)
                        fraction_of_matching_required = float(res.group(2))
                        count_of_matching_required = int(res.group(3))

                        if (
                            num_processes_required_by_fraction(
                                regexp_to_match, fraction_of_matching_required
                            )
                            > count_of_matching_required
                        ):
                            strictest_count_of_matching_required = (
                                num_processes_required_by_fraction(
                                    regexp_to_match, fraction_of_matching_required
                                )
                            )
                        else:
                            strictest_count_of_matching_required = (
                                count_of_matching_required
                            )

                        starting_count_of_matching = num_processes_required_by_fraction(
                            regexp_to_match, 1.0
                        )

                        if (
                            starting_count_of_matching
                            < strictest_count_of_matching_required
                        ):
                            raise Exception(
                                make_paragraph(
                                    'Logic on line "%s" of %s requires you need at least %d processes with a label matching "%s", but only %d are requested for the run'
                                    % (
                                        line,
                                        os.environ[
                                            "DAQINTERFACE_PROCESS_REQUIREMENTS_LIST"
                                        ],
                                        strictest_count_of_matching_required,
                                        regexp_to_match,
                                        starting_count_of_matching,
                                    )
                                )
                            )

                        self.overriding_process_requirements.append(
                            (
                                regexp_to_match,
                                starting_count_of_matching,
                                strictest_count_of_matching_required,
                                starting_count_of_matching,
                            )
                        )  # Last field will keep track of # of still-alive processes
                    else:
                        raise Exception(
                            'Error in file %s: line "%s" does not parse as "<process label regexp> <process fraction required> <process count required>"'
                            % (
                                os.environ["DAQINTERFACE_PROCESS_REQUIREMENTS_LIST"],
                                line,
                            )
                        )

    def throw_exception_if_losing_process_violates_requirements(self, procinfo):

        process_matches_requirements_regexp = False  # As in, the requirements found in $DAQINTERFACE_PROCESS_REQUIREMENTS_LIST
        # should it exist

        for i_r, requirement_tuple in enumerate(self.overriding_process_requirements):
            regexp, original_count, minimum_count, current_count = requirement_tuple
            if re.search(regexp, procinfo.label):
                process_matches_requirements_regexp = True
                current_count -= 1
                self.overriding_process_requirements[i_r] = (
                    regexp,
                    original_count,
                    minimum_count,
                    current_count,
                )
                if current_count < minimum_count:
                    self.print_log(
                        "e",
                        make_paragraph(
                            'Error: loss of process %s drops the total number of processes whose labels match the regular expression "%s" to %d out of an original total of %d; this violates the minimum number of %d required in the file "%s"'
                            % (
                                procinfo.label,
                                regexp,
                                current_count,
                                original_count,
                                minimum_count,
                                os.environ["DAQINTERFACE_PROCESS_REQUIREMENTS_LIST"],
                            )
                        ),
                    )
                    raise Exception(
                        "Loss of process %s violates at least one of the requirements in %s; scroll up for more details"
                        % (
                            procinfo.label,
                            os.environ["DAQINTERFACE_PROCESS_REQUIREMENTS_LIST"],
                        )
                    )

        if not process_matches_requirements_regexp:
            process_description = ""
            if "BoardReader" in procinfo.name:
                process_description = "BoardReader"
            elif fhicl_writes_root_file(procinfo.fhicl_used):
                process_description = "process that writes data to disk"
            elif "EventBuilder" in procinfo.name:
                is_routingmanager_used = True
                if (
                    len([pi for pi in self.procinfos if "RoutingManager" in pi.name])
                    == 0
                ):
                    is_routingmanager_used = False

                if is_routingmanager_used:
                    eventbuilder_procinfos = [
                        pi for pi in self.procinfos if "EventBuilder" in pi.name
                    ]

                    if len(eventbuilder_procinfos) == 0 or (
                        len(eventbuilder_procinfos) == 1
                        and procinfo.label == eventbuilder_procinfos[0].label
                    ):
                        process_description = "final remaining EventBuilder"
                else:
                    process_description = "EventBuilder in a run with no RoutingManager"

            if process_description != "":
                if "DAQINTERFACE_PROCESS_REQUIREMENTS_LIST" in os.environ:
                    self.print_log(
                        "e",
                        make_paragraph(
                            "Error: loss of process %s will now end the run, since it's a %s. This is the default action because there are no special rules for it in %s. To learn how to add rules, see the relevant section of the DAQInterface manual, https://cdcvs.fnal.gov/redmine/projects/artdaq-utilities/wiki/Defining_which_processes_are_critical_to_a_run"
                            % (
                                procinfo.label,
                                process_description,
                                os.environ["DAQINTERFACE_PROCESS_REQUIREMENTS_LIST"],
                            )
                        ),
                    )
                else:
                    self.print_log(
                        "e",
                        make_paragraph(
                            "Error: loss of process %s will now end the run, since it's a %s. This is the default action because DAQInterface wasn't provided with a file overriding its default behavior. To learn how to override, see \"%s/docs/process_requirements_list_example\" for an example of such a file and also read the relevant section of the DAQInterface manual, https://cdcvs.fnal.gov/redmine/projects/artdaq-utilities/wiki/Defining_which_processes_are_critical_to_a_run"
                            % (
                                procinfo.label,
                                process_description,
                                os.environ["ARTDAQ_DAQINTERFACE_DIR"],
                            )
                        ),
                    )

                raise Exception(
                    make_paragraph(
                        "Loss of process %s violates one of DAQInterface's default requirements; scroll up for more details. You can override this behavior by adding a rule to the file referred to by the DAQINTERFACE_PROCESS_REQUIREMENTS_LIST environment variable"
                        % (procinfo.label)
                    )
                )

    def determine_logfilename(self, procinfo):
        loglists = [
            self.boardreader_log_filenames,
            self.eventbuilder_log_filenames,
            self.datalogger_log_filenames,
            self.dispatcher_log_filenames,
            self.routingmanager_log_filenames,
        ]
        all_logfilenames = [
            logfilename for loglist in loglists for logfilename in loglist
        ]
        logfilename_in_list_form = [
            logfilename
            for logfilename in all_logfilenames
            if "/%s-" % (procinfo.label) in logfilename
        ]
        assert len(logfilename_in_list_form) <= 1, make_paragraph(
            'Unable to locate logfile for process "%s" out of the following list of candidates: [%s]; this may be due to incorrect assumptions made by DAQInterface about the format of the logfilenames. Please contact the artdaq-developers@fnal.gov mailing list'
            % (procinfo.label, ", ".join(all_logfilenames))
        )

        if len(logfilename_in_list_form) == 1:
            return logfilename_in_list_form[0]
        else:
            return "(LOGFILE UNDETERMINED)"

    def check_boot_info(self):

        # Check that the boot file actually contained the
        # definitions we wanted

        # The BoardReader info should be supplied by the configuration
        # manager; info for the other artdaq process types (excluding
        # their FHiCL documents) should be supplied in the
        # boot file

        undefined_var = ""

        if self.daq_setup_script is None:
            undefined_var = "DAQ setup script"
        elif self.debug_level is None:
            undefined_var = "debug level"

        if undefined_var != "":
            raise Exception(
                make_paragraph(
                    'Error: "%s" undefined in DAQInterface boot file' % (undefined_var)
                )
            )

        if self.debug_level == 0:
            self.print_log(
                "w",
                make_paragraph(
                    '"debug level" is set to %d in the boot file, %s; while this isn\'t an error due to reasons of backwards compatibility, use of this debug level is highly discouraged'
                    % (self.debug_level, self.boot_filename)
                ),
            )

        if not os.path.exists(self.daq_setup_script):
            raise Exception(self.daq_setup_script + " script not found")

        num_requested_routingmanagers = len(
            [
                procinfo.name
                for procinfo in self.procinfos
                if procinfo.name == "RoutingManager"
            ]
        )
        if num_requested_routingmanagers > len(self.subsystems):
            raise Exception(
                make_paragraph(
                    "%d RoutingManager processes defined in the boot file provided; you can't have more than the number of subsystems (%d)"
                    % (num_requested_routingmanagers, len(self.subsystems))
                )
            )

        if len(set([procinfo.label for procinfo in self.procinfos])) < len(
            self.procinfos
        ):
            raise Exception(
                make_paragraph(
                    "At least one of your desired artdaq processes has a duplicate label; please check the boot file to ensure that each process gets a unique label"
                )
            )

        for ss in self.subsystems:
            dest = self.subsystems[ss].destination
            if dest is not None:
                if (
                    self.subsystems[dest] == None
                    or ss not in self.subsystems[dest].sources
                ):
                    raise Exception(
                        make_paragraph(
                            "Inconsistent subsystem configuration detected! Subsystem %s has destination %s, but subsystem %s doesn't have %s in its list of sources!"
                            % (ss, dest, dest, ss)
                        )
                    )

    def get_artdaq_log_filenames(self):

        self.boardreader_log_filenames = []
        self.eventbuilder_log_filenames = []
        self.datalogger_log_filenames = []
        self.dispatcher_log_filenames = []
        self.routingmanager_log_filenames = []

        for host in set([procinfo.host for procinfo in self.procinfos]):

            if host != "localhost":
                full_hostname = host
            else:
                full_hostname = os.environ["HOSTNAME"]

            procinfos_for_host = [
                procinfo for procinfo in self.procinfos if procinfo.host == host
            ]
            cmds = []
            proctypes = []

            cmds.append('short_hostname=$( hostname | sed -r "s/([^.]+).*/\\1/" )')
            for i_p, procinfo in enumerate(procinfos_for_host):

                output_logdir = "%s/%s-$short_hostname-%s" % (
                    self.log_directory,
                    procinfo.label,
                    procinfo.port,
                )
                cmds.append(
                    "filename_%s=$( ls -tr1 %s/%s-$short_hostname-%s*.log | tail -1 )"
                    % (i_p, output_logdir, procinfo.label, procinfo.port)
                )
                cmds.append(
                    "if [[ -z $filename_%s ]]; then echo No logfile found for process %s on %s after looking in %s >&2 ; exit 1; fi"
                    % (i_p, procinfo.label, procinfo.host, output_logdir)
                )
                cmds.append("timestamp_%s=$( stat -c %%Y $filename_%s )" % (i_p, i_p))
                cmds.append(
                    'if (( $( echo "$timestamp_%s < %f" | bc -l ) )); then echo Most recent logfile found in expected output directory for process %s on %s, $filename_%s, is too old to be the logfile for the process in this run >&2 ; exit 1; fi'
                    % (i_p, self.launch_procs_time, procinfo.label, procinfo.host, i_p)
                )
                cmds.append(
                    "echo Logfile for process %s on %s is $filename_%s"
                    % (procinfo.label, procinfo.host, i_p)
                )
                proctypes.append(procinfo.name)

            cmd = "; ".join(cmds)

            if not host_is_local(host):
                cmd = "ssh -f " + host + " '" + cmd + "'"

            num_logfile_checks = 0
            max_num_logfile_checks = 5

            while True:

                num_logfile_checks += 1

                proc = Popen(
                    cmd,
                    executable="/bin/bash",
                    shell=True,
                    stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE,
                    encoding="utf-8",
                )
                out, err = proc.communicate()
                proclines = out.strip().split("\n")

                if len(
                    [line for line in proclines if re.search(r"\.log$", line)]
                ) == len(proctypes):
                    break  # Success
                else:
                    if num_logfile_checks == max_num_logfile_checks:
                        self.print_log(
                            "e",
                            "\nProblem associating logfiles with the artdaq processes. Output is as follows:",
                        )
                        self.print_log(
                            "e",
                            "\nSTDOUT:\n======================================================================\n%s\n======================================================================\n"
                            % (out),
                        )
                        self.print_log(
                            "e",
                            "STDERR:\n======================================================================\n%s\n======================================================================\n"
                            % (err),
                        )
                        raise Exception(
                            make_paragraph(
                                "Error: there was a problem identifying the logfiles for at least some of the artdaq processes. This may be the result of you not having write access to the directories where the logfiles are meant to be written. Please scroll up to see further output."
                            )
                        )
                    else:
                        sleep(
                            2
                        )  # Give the logfiles a bit of time to appear before the next check

            for i_p in range(len(proclines)):
                if "BoardReader" in proctypes[i_p]:
                    self.boardreader_log_filenames.append(
                        "%s:%s"
                        % (
                            full_hostname,
                            proclines[i_p].strip().split()[-1],
                        )
                    )
                elif "EventBuilder" in proctypes[i_p]:
                    self.eventbuilder_log_filenames.append(
                        "%s:%s"
                        % (
                            full_hostname,
                            proclines[i_p].strip().split()[-1],
                        )
                    )
                elif "DataLogger" in proctypes[i_p]:
                    self.datalogger_log_filenames.append(
                        "%s:%s"
                        % (
                            full_hostname,
                            proclines[i_p].strip().split()[-1],
                        )
                    )
                elif "Dispatcher" in proctypes[i_p]:
                    self.dispatcher_log_filenames.append(
                        "%s:%s"
                        % (
                            full_hostname,
                            proclines[i_p].strip().split()[-1],
                        )
                    )
                elif "RoutingManager" in proctypes[i_p]:
                    self.routingmanager_log_filenames.append(
                        "%s:%s"
                        % (
                            full_hostname,
                            proclines[i_p].strip().split()[-1],
                        )
                    )
                else:
                    assert False, "Unknown process type found in procinfos list"

        self.print_log("d", "\n", 2)
        for procinfo in self.procinfos:
            self.print_log(
                "d",
                "%-20s %s"
                % (procinfo.label + ":", self.determine_logfilename(procinfo)),
                2,
            )
        self.print_log("d", "\n", 2)

    def softlink_logfiles(self):

        self.softlink_process_manager_logfiles()

        softlink_commands_to_run_on_host = {}
        links_printed_to_output = {}

        for loglist in [
            self.boardreader_log_filenames,
            self.eventbuilder_log_filenames,
            self.datalogger_log_filenames,
            self.dispatcher_log_filenames,
            self.routingmanager_log_filenames,
        ]:

            for fulllogname in loglist:
                host = fulllogname.split(":")[0]
                logname = "".join(fulllogname.split(":")[1:])
                label = fulllogname.split("/")[-1].split("-")[0]

                proctype = ""

                for procinfo in self.procinfos:
                    if label == procinfo.label:
                        proctype = procinfo.name

                if "BoardReader" in proctype:
                    subdir = "boardreader"
                elif "EventBuilder" in proctype:
                    subdir = "eventbuilder"
                elif "DataLogger" in proctype:
                    subdir = "datalogger"
                elif "Dispatcher" in proctype:
                    subdir = "dispatcher"
                elif "RoutingManager" in proctype:
                    subdir = "routingmanager"
                else:
                    assert (
                        False
                    ), 'Unknown process type "%s" found when soflinking logfiles' % (
                        proctype
                    )

                if host not in softlink_commands_to_run_on_host:
                    assert host not in links_printed_to_output
                    softlink_commands_to_run_on_host[host] = []
                    links_printed_to_output[host] = []

                softlink = "%s/%s/run%d-%s.log" % (
                    self.log_directory,
                    subdir,
                    self.run_number,
                    label,
                )
                link_logfile_cmd = "ln -s %s %s" % (logname, softlink)
                softlink_commands_to_run_on_host[host].append(link_logfile_cmd)
                links_printed_to_output[host].append(
                    "%-20s %s:%s" % (label + ":", host, softlink)
                )

        for host in softlink_commands_to_run_on_host:
            link_logfile_cmd = "; ".join(softlink_commands_to_run_on_host[host])

            if not host_is_local(host):
                link_logfile_cmd = "ssh %s '%s'" % (host, link_logfile_cmd)

            proc = Popen(
                link_logfile_cmd,
                executable="/bin/bash",
                shell=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
            )
            status = proc.wait()

            if status == 0:
                self.print_log("d", "\n".join(links_printed_to_output[host]), 2)
            else:
                self.print_log(
                    "w",
                    "WARNING: failure in performing user-friendly softlinks to logfiles on host %s:\n%s"
                    % (host, proc.stdout.readlines()),
                )

    def fill_package_versions(self, packages):

        cmd = ""
        needed_packages = []

        for package in packages:
            if package in self.package_versions:
                continue
            else:
                needed_packages.append(package if self.productsdir != None else package.replace("_", "-"))

        if len(needed_packages) == 0:
            return

        if "artdaq_daqinterface-none" in packages:
            assert (
                len(packages) == 1
            ), "Note to developer: you'll probably need to refactor save_run_records.py if you want to get the version of other packages alongside the version of DAQInterface"
            cmd = "ups active | sed -r -n 's/^artdaq_daqinterface\\s+(\\S+).*/artdaq_daqinterface \\1/p'"
        elif self.productsdir != None:
            cmd = (
                "%s ; . %s; ups active | sed -r -n 's/^(%s)\\s+(\\S+).*/\\1 \\2/p'"
                % (
                    ";".join(get_setup_commands(self.productsdir, self.spackdir)),
                    self.daq_setup_script,
                    "|".join(needed_packages),
                )
            )
        elif self.spackdir != None:
            cmd = (
                "%s ; . %s; spack find -d --loaded | sed -r -n 's/^\s+(%s)@(\\S+).*/\\1 \\2/p'" % (
                    ";".join(get_setup_commands(self.productsdir, self.spackdir)),
                    self.daq_setup_script,
                    "|".join(needed_packages),                
                )
            )

        if cmd != "":
            proc = Popen(
                cmd,
                executable="/bin/bash",
                shell=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                stdin=subprocess.PIPE,
                encoding="utf-8",
            )

            out, err = proc.communicate()
            stdoutlines = out.strip().split("\n")
            stderrlines = err.strip().split("\n")

            for line in stderrlines:
                if not line or not line.strip():
                    stderrlines.remove(line)
                elif "type: unsetup: not found" in line:
                    self.print_log("w", line)
                    stderrlines.remove(line)
                elif re.search(
                    r"INFO: mrb v\d_\d\d_\d\d requires cetmodules >= \d\.\d\d\.\d\d to run: attempting to configure\.\.\.v\d_\d\d_\d\d OK",
                    line,
                ):
                    self.print_log("i", line)
                    stderrlines.remove(line)

#            if len(stderrlines) > 0:
#                raise Exception(
#                    'Error in %s: the command "%s" yields output to stderr:\n"%s"'
#                    % (
#                        self.fill_package_versions.__name__,
#                        cmd,
#                        "".join(stderrlines),
#                    )
#                )

            if len(stdoutlines) == 0:
                print(traceback.format_exc())
                raise Exception(
                    'Error in %s: the command "%s" yields no output to stdout'
                    % (self.fill_package_versions.__name__, cmd)
                )

            for line in stdoutlines:
                if re.search(r"^(%s)\s+" % ("|".join(needed_packages)), line):
                    (package, version) = line.split()[:2]

                    if not re.search(r"v[0-9]+_[0-9]+_[0-9]+.*", version):
                        raise Exception(
                            make_paragraph(
                                'Error in %s: the version of the package "%s" this function has determined, "%s", is not the expected v<int>_<int>_<int>optionalextension format'
                                % (
                                    self.fill_package_versions.__name__,
                                    package,
                                    version,
                                )
                            )
                        )
                    # print('package=%s type(package)=%s' % (package,type(package)))
                    self.package_versions[package.replace("-", "_")] = version

        for package in packages:
            if package not in self.package_versions:
                self.print_log(
                    "w",
                    'Warning: there was a problem trying to determine the version of package "%s"'
                    % (package),
                )

    def execute_trace_script(self, transition):

        if "DAQINTERFACE_TRACE_SCRIPT" not in os.environ:
            self.print_log(
                "d",
                make_paragraph(
                    "Environment variable DAQINTERFACE_TRACE_SCRIPT not defined; will not execute the would-be trace script pointed to by the variable"
                ),
                3,
            )
            return

        trace_script = os.environ["DAQINTERFACE_TRACE_SCRIPT"]

        if re.search(r"^%s" % (os.environ["ARTDAQ_DAQINTERFACE_DIR"]), trace_script):
            raise Exception(
                make_paragraph(
                    'The trace script referred to by the DAQINTERFACE_TRACE_SCRIPT environment variable, "%s", appears to be located inside the DAQInterface package itself. Please copy it somewhere else before using it, and revert any edits which may have been made to %s.'
                    % (trace_script, trace_script)
                )
            )

        if os.path.exists(trace_script):

            trace_file = ""
            with open(self.daq_setup_script) as inf:
                for line in inf.readlines():
                    res = re.search(r"^\s*export\s+TRACE_FILE=(\S+)", line)
                    if res:
                        trace_file = res.group(1)

            if trace_file == "":
                raise Exception(
                    make_paragraph(
                        'Exception in %s: unable to determine TRACE_FILE setting from "%s"'
                        % (self.execute_trace_script.__name__, self.daq_setup_script)
                    )
                )

            assert transition == "start" or transition == "stop"

            if transition == "start":
                self.procinfos_orig = list(self.procinfos)  # Deep copy, not a reference

            nodes_for_rgang = {}
            for procinfo in self.procinfos_orig:
                nodes_for_rgang[procinfo.host] = 1

            hosts_for_rgang = set()
            for key in nodes_for_rgang.keys():
                if host_is_local(key):
                    hosts_for_rgang.add("localhost")
                else:
                    hosts_for_rgang.add(key)

            cmd = '%s %s --run %d --transition %s --node-list="%s"' % (
                trace_script,
                trace_file,
                self.run_number,
                transition,
                " ".join(hosts_for_rgang),
            )
            self.print_log("d", 'Executing "%s"' % (cmd), 2)

            out = Popen(
                cmd,
                executable="/bin/bash",
                shell=True,
                stderr=subprocess.PIPE,
                stdout=subprocess.PIPE,
                encoding="utf-8",
            )

            out_stdout, out_stderr = out.communicate()

            status = out.returncode

            if status == 0:
                self.print_log("d", "\nSTDOUT from command: \n%s" % (out_stdout), 3)
                self.print_log("d", "\nSTDERR from command: \n%s" % (out_stderr), 3)
            else:
                self.print_log(
                    "e",
                    'Error: execution of "%s" yielded a nonzero return value' % (cmd),
                )
                self.print_log("e", "\nSTDOUT from command: \n%s" % (out_stdout))
                self.print_log("e", "\nSTDERR from command: \n%s" % (out_stderr))
                raise Exception(
                    '"%s" yielded a nonzero return value; scroll up for further info'
                    % (cmd)
                )

        else:  # trace script doesn't exist
            raise Exception(
                'Unable to find trace script referred to by environment variable DAQINTERFACE_TRACE_SCRIPT ("%s")'
                % (os.environ["DAQINTERFACE_TRACE_SCRIPT"])
            )

    # JCF, Nov-8-2015

    # The core functionality for "do_command" is that it will launch a
    # separate thread for each transition issued to an individual
    # artdaq process; for init, start, and resume it will send the
    # command simultaneously to the aggregators, wait for the threads
    # to join, and then do the same thing for the eventbuilders and
    # then the boardreaders. For stop and pause, it will do this in
    # reverse order of upstream/downstream.

    # Note that since "initialize", "start" and "stop" all require
    # additional actions besides simply sending transitions to
    # processes and waiting for their response, "do_command" is not
    # meant to be a replacement for "do_initialize",
    # "do_start_running" and "do_stop_running" the way it IS meant to
    # be a replacement for "do_pause_running", etc., but rather, is
    # meant to be called in the body of those functions. Thus, for
    # those transitions, some functionality (e.g., announding the
    # transition is underway at the beginning of the function, and
    # calling "complete_state_change" at the end) is not applied.

    def do_command(self, command):

        if command != "Start" and command != "Init" and command != "Stop":
            self.print_log(
                "i", "\n%s: %s transition underway" % (date_and_time(), command.upper())
            )

        # "process_command" is the function which will send a
        # transition to a single artdaq process, and be run on its own
        # thread so that transitions to different processes can be
        # sent simultaneously

        # Note that since Python is "pass-by-object-reference" (see
        # http://robertheaton.com/2014/02/09/pythons-pass-by-object-reference-as-explained-by-philip-k-dick/
        # for more), I pass it the index of the procinfo struct we
        # want, rather than the actual procinfo struct

        def process_command(self, procinfo_index, command):

            if self.exception:
                self.print_log(
                    "d",
                    "self.exception set to true at some point, won't send %s command to %s"
                    % (command, self.procinfos[procinfo_index].label),
                    2,
                )
                return

            timeout_dict = {
                "BoardReader": self.boardreader_timeout,
                "EventBuilder": self.eventbuilder_timeout,
                "DataLogger": self.datalogger_timeout,
                "Dispatcher": self.dispatcher_timeout,
                "RoutingManager": self.routingmanager_timeout,
            }
            timeout = timeout_dict[self.procinfos[procinfo_index].name]

            self.procinfos[procinfo_index].state = self.verbing_to_states[command]

            try:
                self.print_log(
                    "d",
                    "%s: Sending transition to %s"
                    % (
                        date_and_time_more_precision(),
                        self.procinfos[procinfo_index].label,
                    ),
                    3,
                )

                if command == "Init":
                    self.procinfos[procinfo_index].lastreturned = self.procinfos[
                        procinfo_index
                    ].server.daq.init(
                        self.procinfos[procinfo_index].fhicl_used, timeout
                    )
                elif command == "Start":

                    self.procinfos[procinfo_index].lastreturned = self.procinfos[
                        procinfo_index
                    ].server.daq.start(self.run_number, timeout)

                    # JCF, Jan-8-2019
                    # Ensure DAQInterface is backwards-compatible with artdaq
                    # code which predates Issue #23824

                    if (
                        "The start message requires the run number as an argument"
                        in self.procinfos[procinfo_index].lastreturned
                    ):
                        self.procinfos[procinfo_index].lastreturned = self.procinfos[
                            procinfo_index
                        ].server.daq.start(str(self.run_number))

                elif command == "Pause":
                    self.procinfos[procinfo_index].lastreturned = self.procinfos[
                        procinfo_index
                    ].server.daq.pause(timeout)
                elif command == "Resume":
                    self.procinfos[procinfo_index].lastreturned = self.procinfos[
                        procinfo_index
                    ].server.daq.resume(timeout)
                elif command == "Stop":
                    self.procinfos[procinfo_index].lastreturned = self.procinfos[
                        procinfo_index
                    ].server.daq.stop(timeout)
                elif command == "Shutdown":
                    self.procinfos[procinfo_index].lastreturned = self.procinfos[
                        procinfo_index
                    ].server.daq.shutdown(timeout)
                else:
                    assert False, "Unknown command"

                if "with ParameterSet" in self.procinfos[procinfo_index].lastreturned:
                    self.procinfos[procinfo_index].lastreturned = self.procinfos[
                        procinfo_index
                    ].lastreturned[
                        0:200
                    ] + " // REMAINDER TRUNCATED BY DAQINTERFACE, SEE %s FOR FULL FHiCL DOCUMENT" % (
                        self.tmp_run_record
                    )

                if (
                    self.procinfos[procinfo_index].lastreturned == "Success"
                    or self.procinfos[procinfo_index].lastreturned
                    == self.target_states[command]
                ):
                    self.procinfos[procinfo_index].state = self.target_states[command]

            except Exception:
                self.exception = True

                pi = self.procinfos[procinfo_index]

                if "timeout: timed out" in traceback.format_exc():
                    output_message = (
                        "\n%s: Timeout sending %s transition to artdaq process %s at %s:%s; try checking logfile %s for details\n"
                        % (
                            date_and_time(),
                            command,
                            pi.label,
                            pi.host,
                            pi.port,
                            self.determine_logfilename(pi),
                        )
                    )
                elif "[Errno 111] Connection refused" in traceback.format_exc():
                    output_message = (
                        "\n%s: artdaq process %s at %s:%s appears to have died (or at least refused the connection) when sent the %s transition; try checking logfile %s for details"
                        % (
                            date_and_time(),
                            pi.label,
                            pi.host,
                            pi.port,
                            command,
                            self.determine_logfilename(pi),
                        )
                    )
                else:
                    self.print_log("e", traceback.format_exc())

                    output_message = (
                        "Exception caught sending %s transition to artdaq process %s at %s:%s; try checking logfile %s for details\n"
                        % (
                            command,
                            pi.label,
                            pi.host,
                            pi.port,
                            self.determine_logfilename(pi),
                        )
                    )

                self.print_log("e", make_paragraph(output_message))

            return  # From process_command

        # JCF, Nov-8-2015

        # In the code below, transition commands are sent
        # simultaneously only to classes of artdaq type. So, e.g., if
        # we're stopping, first we send stop to all the boardreaders,
        # next we send stop to all the eventbuilders, and finally we
        # send stop to all the aggregators

        # ELF, Jul-17-2020
        # I've modified this code to do what John says above, but also in
        # subsystem order

        proctypes_in_order = [
            "RoutingManager",
            "Dispatcher",
            "DataLogger",
            "EventBuilder",
            "BoardReader",
        ]

        if command == "Stop" or command == "Pause" or command == "Shutdown":
            proctypes_in_order.reverse()

        # ELF, Jul-17-2020
        # Subsystems can form a tree from many sources to one final subsystem.
        # Order from leaves to trunk to ensure that
        # on stop, all of a given subsystem's sources are stopped first.
        subsystems_in_order = []
        while len(subsystems_in_order) < len(self.subsystems):
            for subsystem in self.subsystems:
                sources_copy = list(self.subsystems[subsystem].sources)
                for ordered_ss in subsystems_in_order:
                    if sources_copy.count(ordered_ss):
                        sources_copy.remove(ordered_ss)
                if len(sources_copy) == 0 and not subsystem in subsystems_in_order:
                    subsystems_in_order.append(subsystem)
                    break

        if command != "Stop" and command != "Pause" and command != "Shutdown":
            subsystems_in_order.reverse()

        starttime = time()

        self.print_log(
            "i",
            "\nSending %s transition to artdaq processes..." % (command.lower()),
            1,
            False,
        )
        self.print_log("d", "", 3)

        proc_starttimes = {}
        proc_endtimes = {}
        for subsystem in subsystems_in_order:
            for proctype in proctypes_in_order:

                priorities_used = {}

                for procinfo in self.procinfos:
                    if proctype in procinfo.name and procinfo.subsystem == subsystem:
                        priorities_used[procinfo.priority] = procinfo

                priority_rankings = sorted(priorities_used.keys())

                for priority in priority_rankings:
                    proc_threads = {}
                    for i_procinfo, procinfo in enumerate(self.procinfos):
                        if (
                            proctype in procinfo.name
                            and priority == procinfo.priority
                            and procinfo.subsystem == subsystem
                        ):
                            t = RaisingThread(
                                target=process_command, args=(self, i_procinfo, command)
                            )
                            proc_threads[procinfo.label] = t
                            proc_starttimes[procinfo.label] = time()
                            t.start()

                    for label in proc_threads:
                        proc_threads[label].join()
                        proc_endtimes[label] = time()

        if self.exception:
            raise Exception(
                make_paragraph(
                    "An exception was thrown during the %s transition." % (command)
                )
            )

        sleep(1)

        endtime = time()
        self.print_log("i", "done (%.1f seconds).\n" % (endtime - starttime))

        if self.debug_level >= 2 or len(
            [
                procinfo
                for procinfo in self.procinfos
                if procinfo.lastreturned != "Success"
            ]
        ):
            for procinfo in self.procinfos:
                total_time = "%.1f" % (
                    proc_endtimes[procinfo.label] - proc_starttimes[procinfo.label]
                )
                self.print_log(
                    "i",
                    "%s at %s:%s, after %s seconds returned string was:\n%s\n"
                    % (
                        procinfo.label,
                        procinfo.host,
                        procinfo.port,
                        total_time,
                        procinfo.lastreturned,
                    ),
                )
        else:
            slowest_process = ""
            max_time = 0
            for procinfo in self.procinfos:
                if (
                    proc_endtimes[procinfo.label] - proc_starttimes[procinfo.label]
                    > max_time
                ):
                    max_time = (
                        proc_endtimes[procinfo.label] - proc_starttimes[procinfo.label]
                    )
                    slowest_process = procinfo.label

            self.print_log(
                "i",
                "Longest individual transition was %s, which took %.1f seconds."
                % (slowest_process, max_time),
            )
            self.print_log("i", 'All artdaq processes returned "Success".\n')

        try:
            self.check_proc_transition(self.target_states[command])
        except Exception:
            raise Exception(
                make_paragraph(
                    "An exception was thrown during the %s transition as at least one of the artdaq processes didn't achieve its desired state."
                    % (command)
                )
            )

        if command != "Init" and command != "Start" and command != "Stop":

            verbing = ""

            if command == "Pause":
                verbing = "pausing"
            elif command == "Resume":
                verbing = "resuming"
            elif command == "Shutdown":
                verbing == "shutting"
            else:
                assert False

            self.complete_state_change(self.name, verbing)
            self.print_log(
                "i", "\n%s: %s transition complete" % (date_and_time(), command.upper())
            )

    def setdaqcomps(self, daq_comp_list):
        self.daq_comp_list = daq_comp_list
        self.print_log(
            "i",
            "%s called with %s"
            % (
                self.setdaqcomps.__name__,
                " ".join([compattr for compattr in self.daq_comp_list.keys()]),
            ),
        )

    def revert_failed_transition(self, failed_action):
        self.revert_state_change(self.name, self.state(self.name))
        self.print_log("e", (traceback.format_exc()))
        self.print_log(
            "e",
            make_paragraph(
                'An exception was thrown when %s; exception has been caught and system remains in the "%s" state'
                % (failed_action, self.state(self.name))
            ),
        )

    # labeled_fhicl_documents is actually a list of tuples of the form
    # [ ("label", "fhicl string") ] to be saved to the process indexed
    # in self.procinfos by procinfo_index via "add_config_archive_entry"

    def archive_documents(self, labeled_fhicl_documents):

        for procinfo_index in range(len(self.procinfos)):
            if (
                "EventBuilder" in self.procinfos[procinfo_index].name
                or "DataLogger" in self.procinfos[procinfo_index].name
            ):
                if fhicl_writes_root_file(self.procinfos[procinfo_index].fhicl_used):

                    for label, contents in labeled_fhicl_documents:

                        self.print_log(
                            "d",
                            "Saving FHiCL for %s to %s"
                            % (label, self.procinfos[procinfo_index].label),
                            3,
                        )
                        try:
                            self.procinfos[
                                procinfo_index
                            ].lastreturned = self.procinfos[
                                procinfo_index
                            ].server.daq.add_config_archive_entry(
                                label, contents
                            )
                        except:
                            self.print_log("d", traceback.format_exc(), 2)
                            self.alert_and_recover(
                                make_paragraph(
                                    "An exception was thrown when attempting to add archive entry for %s to %s"
                                    % (label, self.procinfos[procinfo_index].label)
                                )
                            )
                            return

                        if self.procinfos[procinfo_index].lastreturned != "Success":
                            raise Exception(
                                make_paragraph(
                                    "Attempt to add config archive entry for %s to %s was unsuccessful"
                                    % (label, self.procinfos[procinfo_index].label)
                                )
                            )

    def update_archived_metadata(self):
        with open(
            "%s/%s/metadata.txt" % (self.record_directory, str(self.run_number))
        ) as inf:
            contents = inf.read()
            contents = re.sub("'", '"', contents)
            contents = re.sub('"', '"', contents)

        self.archive_documents([("metadata", 'contents: "\n%s\n"\n' % (contents))])

    def add_ranks_from_ranksfile(self):

        ranksfile = "/tmp/ranks%s.txt" % (os.environ["DAQINTERFACE_PARTITION_NUMBER"])

        if not os.path.exists(ranksfile):
            raise Exception(
                "Error: DAQInterface run in external_run_control mode expects your experiment's run control to provide it with a file named %s"
                % (ranksfile)
            )

        with open(ranksfile) as inf:
            for line in inf.readlines():
                # port and rank are 2nd and 4th entries, and both integers...
                res = re.search(r"^\s*(\S+)\s+(\d+)\s+(\S+)\s+(\d+)", line)
                if res:
                    host = res.group(1)
                    port = res.group(2)
                    label = res.group(3)
                    rank = res.group(4)

                    matched = False
                    for i_proc, procinfo in enumerate(self.procinfos):
                        if procinfo.label == label:
                            matched = True
                            if host != procinfo.host or port != procinfo.port:
                                raise Exception(
                                    "Error: mismatch between values for process %s in DAQInterface's procinfo structure and the ranks file, %s"
                                    % (procinfo.label, ranksfile)
                                )
                            self.procinfos[i_proc].rank = int(rank)
                    if matched == False:
                        raise Exception(
                            "Error: expected to find a process with label %s in the ranks file %s, but none was found"
                            % (procinfo.label, ranksfile)
                        )

    def readjust_process_priorities(self, priority_list):
        for i_proc in range(len(self.procinfos)):
            if "BoardReader" in self.procinfos[i_proc].name:
                if priority_list is not None:
                    found_priority_ranking = False
                    for priority, regexp in enumerate(priority_list):
                        if re.search(regexp, self.procinfos[i_proc].label):
                            self.procinfos[i_proc].priority = priority
                            found_priority_ranking = True
                            break
                    if not found_priority_ranking:
                        raise Exception(
                            make_paragraph(
                                'Error: the process label "%s" didn\'t match with any of the regular expressions used to rank transition priorities in the settings file, %s'
                                % (
                                    self.procinfos[i_proc].label,
                                    os.environ["DAQINTERFACE_SETTINGS"],
                                )
                            )
                        )
                else:
                    self.procinfos[i_proc].priority = 999

    def check_run_record_integrity(self):
        inode_basename = ".record_directory_info"
        inode_fullname = "%s/%s" % (self.record_directory, inode_basename)
        if os.path.exists(inode_fullname):
            with open(inode_fullname) as inf:
                if not inf.read().strip() == record_directory_info(
                    self.record_directory
                ):
                    preface = make_paragraph(
                        "Contents of existing %s file and returned value of call to the %s function don't match. This suggests that since the %s file was created the run records directory has been unexpectedly altered. PLEASE INVESTIGATE WHETHER THERE ARE ANY MISSING RUN RECORDS AS THIS MAY RESULT IN RUN NUMBER DUPLICATION. Then replace the existing %s file by executing: "
                        % (
                            inode_fullname,
                            record_directory_info.__name__,
                            inode_fullname,
                            inode_fullname,
                        )
                    )
                    self.print_log(
                        "e",
                        preface
                        + "\n\n"
                        + "cd %s\nrm %s\npython %s/rc/control/utilities.py record_directory_info %s > %s\ncd %s\n"
                        % (
                            self.record_directory,
                            inode_fullname,
                            os.environ["ARTDAQ_DAQINTERFACE_DIR"],
                            self.record_directory,
                            inode_fullname,
                            os.getcwd(),
                        ),
                    )
                    raise Exception(
                        "Problem during run records check; scroll up for details"
                    )
        else:
            with open(inode_fullname, "w") as outf:
                outf.write(record_directory_info(self.record_directory))

            for runrec in glob.glob("%s/*" % (self.record_directory)):
                if re.search(r"/?[0-9]+$", runrec):
                    raise Exception(
                        make_paragraph(
                            "A run record (%s) was found in %s. This is unexpected as no %s file was found. A %s file has just been created, so the next time you try this you won't see this error - however, this situation suggests that the run records directory has been unexpectedly altered. PLEASE INVESTIGATE WHETHER THERE ARE ANY MISSING RUN RECORDS AS THIS MAY RESULT IN RUN NUMBER DUPLICATION."
                            % (
                                runrec,
                                self.record_directory,
                                inode_fullname,
                                inode_fullname,
                            )
                        )
                    )

    # Eric Flumerfelt, August 21, 2023: Yuck, package manager dependent stuff...
    def create_setup_fhiclcpp_if_needed(self):
        if not os.path.exists(os.environ["DAQINTERFACE_SETUP_FHICLCPP"]):
            self.print_log(
                "w",
                make_paragraph(
                    'File "%s", needed for formatting FHiCL configurations, does not appear to exist; will attempt to auto-generate one...'
                    % (os.environ["DAQINTERFACE_SETUP_FHICLCPP"])
                ),
            )
            with open(os.environ["DAQINTERFACE_SETUP_FHICLCPP"], "w") as outf:
                outf.write("\n".join(get_setup_commands(self.productsdir, self.spackdir)))
                outf.write("\n\n")
                if self.productsdir != None:
                    lines = Popen(
                        '%s;ups list -aK+ fhiclcpp | sort -n'
                        % (";".join(get_setup_commands(self.productsdir, self.spackdir))),
                        executable="/bin/bash",
                        shell=True,
                        stdout=subprocess.PIPE,
                        stderr=subprocess.STDOUT,
                    ).stdout.readlines()
                    if len(lines) > 0:
                        fhiclcpp_to_setup_line = lines[-1].decode("utf-8")
                    else:
                        os.unlink(os.environ["DAQINTERFACE_SETUP_FHICLCPP"])
                        raise Exception(
                            make_paragraph(
                                'Unable to find fhiclcpp ups product in products directory "%s" provided in the DAQInterface settings file, "%s"'
                                % (self.productsdir, os.environ["DAQINTERFACE_SETTINGS"])
                            )
                        )

                    outf.write(
                        "setup %s %s -q %s\n"
                        % (
                            fhiclcpp_to_setup_line.split()[0],
                            fhiclcpp_to_setup_line.split()[1],
                            fhiclcpp_to_setup_line.split()[3],
                        )
                    )
                elif self.spackdir != None:
                    outf.write("spack load --first fhicl-cpp")

            if os.path.exists(os.environ["DAQINTERFACE_SETUP_FHICLCPP"]):
                self.print_log(
                    "w",
                    '"%s" has been auto-generated; you may want to check to see that it correctly sets up the fhiclcpp package...'
                    % (os.environ["DAQINTERFACE_SETUP_FHICLCPP"]),
                )
            else:
                raise Exception(
                    make_paragraph(
                        'Error: was unable to find or create a file "%s"'
                        % (os.environ["DAQINTERFACE_SETUP_FHICLCPP"])
                    )
                )

    # do_boot(), do_config(), do_start_running(), etc., are the
    # functions which get called in the runner() function when a
    # transition is requested

    def do_boot(self, boot_filename=None):
        def revert_failed_boot(failed_action):
            self.reset_variables()
            self.revert_failed_transition(failed_action)

        if (
            not hasattr(self, "daq_comp_list")
            or self.daq_comp_list is None
            or len(self.daq_comp_list) == 0
        ):
            self.print_log(
                "e",
                make_paragraph(
                    'No components appear to have been requested; you need to first call setdaqcomps ("setdaqcomps.sh" at the command line). System remains in "stopped" state.'
                ),
            )
            self.revert_state_change(self.name, self.state(self.name))
            return

        self.print_log("i", "\n%s: BOOT transition underway" % (date_and_time()))

        self.reset_variables()
        os.chdir(self.daqinterface_base_dir)

        if not boot_filename:
            boot_filename = self.run_params["boot_filename"]

        if not os.path.exists(boot_filename):
            raise Exception(
                make_paragraph(
                    'Error: boot file requested on boot transition, "%s", does not appear to exist'
                    % (boot_filename)
                )
            )

        dummy, file_extension = os.path.splitext(boot_filename)

        if file_extension != ".fcl":
            self.boot_filename = boot_filename
        else:

            try:
                self.create_setup_fhiclcpp_if_needed()
            except:
                raise

            self.boot_filename = "/tmp/boot_%s_partition%s.txt" % (
                os.environ["USER"],
                os.environ["DAQINTERFACE_PARTITION_NUMBER"],
            )
            if os.path.exists(self.boot_filename):
                os.unlink(self.boot_filename)

            assert os.path.exists(
                "%s/bin/defhiclize_boot_file.sh"
                % (os.environ["ARTDAQ_DAQINTERFACE_DIR"])
            )
            cmd = "%s/bin/defhiclize_boot_file.sh %s > %s" % (
                os.environ["ARTDAQ_DAQINTERFACE_DIR"],
                boot_filename,
                self.boot_filename,
            )
            status = Popen(
                cmd,
                executable="/bin/bash",
                shell=True,
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
            ).wait()
            if status != 0:
                raise Exception('Error: the command "%s" returned nonzero' % cmd)

        try:
            self.get_boot_info(self.boot_filename)
            self.check_boot_info()
        except Exception:
            revert_failed_boot(
                'when trying to read the DAQInterface boot file "%s"'
                % (self.boot_filename)
            )
            return

        if (
            not hasattr(self, "daq_comp_list")
            or not self.daq_comp_list
            or self.daq_comp_list == {}
        ):
            revert_failed_boot(
                'when checking for the list of components meant to be provided by the "setdaqcomps" call'
            )
            return

        for boardreader_rank, compname in enumerate(self.daq_comp_list):

            boardreader_port = "-1"
            boardreader_subsystem = "1"
            boardreader_allowed_processors = "-1"
            boardreader_prepend = ""
            boardreader_target = "EventBuilder"

            if len(self.daq_comp_list[compname]) == 1:
                boardreader_host = self.daq_comp_list[compname]
            elif len(self.daq_comp_list[compname]) == 2:
                boardreader_host, boardreader_port = self.daq_comp_list[compname]
            elif len(self.daq_comp_list[compname]) == 3:
                (
                    boardreader_host,
                    boardreader_port,
                    boardreader_subsystem,
                ) = self.daq_comp_list[compname]
            elif len(self.daq_comp_list[compname]) == 4:
                (
                    boardreader_host,
                    boardreader_port,
                    boardreader_subsystem,
                    boardreader_allowed_processors,
                ) = self.daq_comp_list[compname]
            elif len(self.daq_comp_list[compname]) == 5:
                (
                    boardreader_host,
                    boardreader_port,
                    boardreader_subsystem,
                    boardreader_allowed_processors,
                    boardreader_prepend,
                ) = self.daq_comp_list[compname]
            else:
                raise Exception(
                    make_paragraph(
                        'There\'s an unexpected number of elements which were passed for component "%s" in the setdaqcomps call'
                        % (compname)
                    )
                )

            # Make certain the formula below for calculating the port
            # # matches with the formula used to calculate the ports
            # for the other artdaq processes when the boot file is
            # read in

            if boardreader_port == "-1":
                boardreader_port = str(
                    int(os.environ["ARTDAQ_BASE_PORT"])
                    + 100
                    + self.partition_number
                    * int(os.environ["ARTDAQ_PORTS_PER_PARTITION"])
                    + boardreader_rank
                )

            if boardreader_allowed_processors == "-1":
                boardreader_allowed_processors = None
            self.procinfos.append(
                self.Procinfo(
                    name="BoardReader",
                    rank=boardreader_rank,
                    host=boardreader_host,
                    port=boardreader_port,
                    label=compname,
                    subsystem=boardreader_subsystem,
                    allowed_processors=boardreader_allowed_processors,
                    target=boardreader_target,
                    prepend=boardreader_prepend,
                )
            )

        # See the Procinfo.__lt__ function for details on sorting

        self.procinfos.sort()

        for ss in sorted(self.subsystems):

            subsystem_line = "\nSubsystem %s: " % (ss)

            if len(self.subsystems[ss].sources) == 0:
                subsystem_line += "subsystem source(s): None"
            else:
                subsystem_line += "subsystem source(s): %s" % (
                    [", ".join(self.subsystems[ss].sources)]
                )

            if self.subsystems[ss].destination is None:
                subsystem_line += ", subsystem destination: None"
            else:
                subsystem_line += ", subsystem destination: %s" % (
                    self.subsystems[ss].destination
                )

            self.print_log("d", subsystem_line + "\n", 2)

        for ss in sorted(self.subsystems):
            for procinfo in self.procinfos:
                if procinfo.subsystem == ss:
                    self.print_log(
                        "d",
                        "%-20s at %s:%s, part of subsystem %s, has rank %d"
                        % (
                            procinfo.label,
                            procinfo.host,
                            procinfo.port,
                            procinfo.subsystem,
                            procinfo.rank,
                        ),
                        2,
                    )

        # WK 8/31/21
        # Startup msgviewer early. check on it later
        self.msgviewer_proc = None  # initialize
        if self.use_messageviewer:

            # Use messageviewer if it's available, i.e., if there's
            # one already up or if it's set up via the user-supplied
            # setup script

            try:

                if self.have_artdaq_mfextensions() and is_msgviewer_running():
                    self.print_log(
                        "i",
                        make_paragraph(
                            "An instance of messageviewer already appears to be running; "
                            + "messages will be sent to the existing messageviewer"
                        ),
                    )

                elif self.have_artdaq_mfextensions():
                    version, qualifiers = self.artdaq_mfextensions_info()

                    self.print_log(
                        "i",
                        make_paragraph(
                            "artdaq_mfextensions %s, %s, appears to be available; "
                            "if windowing is supported on your host you should see the "
                            "messageviewer window pop up momentarily"
                            % (version, qualifiers)
                        ),
                    )

                    self.msgviewer_proc = self.launch_msgviewer()

                else:
                    self.print_log(
                        "i",
                        make_paragraph(
                            "artdaq_mfextensions does not appear to be available; "
                            "unable to launch the messageviewer window. This will not affect"
                            " actual datataking, it just means you'll need to look at the"
                            " logfiles to see artdaq output."
                        ),
                    )

            except Exception:
                self.print_log("e", traceback.format_exc())
                self.alert_and_recover("Problem during messageviewer launch stage")
                return

        # JCF, Oct-18-2017

        # After a discussion with Ron about how trace commands need to
        # be run on the host that the artdaq process is running on, we
        # agreed it would be a good idea to do a pass in which the
        # setup script was sourced on all hosts which artdaq processes
        # ran on in case the setup script contained trace commands...

        # JCF, Jan-17-2018

        # It turns out that sourcing the setup script on hosts for
        # runs which use lots of nodes takes an onerously long
        # time. What we'll do now is source the script on just ONE
        # node, to make sure it's not broken. Note that this means you
        # may need to perform a second run after adding TRACE
        # functionality to your setup script; while a cost, the
        # benefit here seems to outweight the cost.

        if self.manage_processes:
            hosts = [procinfo.host for procinfo in self.procinfos]
            random_host = random.choice(hosts)

            ssh_timeout_in_seconds = 30
            starttime = time()
            random_node_source_debug_level = 3

            self.print_log(
                "i",
                "\nOn randomly selected node (%s), will confirm that the DAQ setup script \n%s\ndoesn't return a nonzero value when sourced..."
                % (random_host, self.daq_setup_script),
                1,
                False,
            )
            # self.print_log("d", "\n", random_node_source_debug_level)

            cmd = "%s ; . %s for_running" % (
                ";".join(get_setup_commands(self.productsdir, self.spackdir)),
                self.daq_setup_script,
            )

            if not host_is_local(random_host):
                cmd = "timeout %d ssh %s '%s'" % (
                    ssh_timeout_in_seconds,
                    random_host,
                    cmd,
                )

            out = Popen(
                cmd,
                executable="/bin/bash",
                shell=True,
                stderr=subprocess.PIPE,
                stdout=subprocess.PIPE,
                encoding="utf-8",
            )

            out_comm = out.communicate()

            if out_comm[0] is not None:
                out_stdout = out_comm[0]
                self.print_log(
                    "d",
                    "\nSTDOUT: \n%s" % (out_stdout),
                    random_node_source_debug_level,
                )
            if out_comm[1] is not None:
                out_stderr = out_comm[1]
                self.print_log(
                    "d",
                    "STDERR: \n%s" % (out_stderr),
                    random_node_source_debug_level,
                )
            status = out.returncode

            if status != 0:
                errmsg = (
                    '\nNonzero value (%d) returned in attempt to source script %s on host "%s"'
                    % (status, self.daq_setup_script, random_host)
                )
                if status != 124:
                    errmsg = "%s." % (errmsg)
                else:
                    errmsg = (
                        "%s; returned value suggests that the ssh call to %s timed out. Perhaps a lack of public/private ssh keys resulted in ssh asking for a password?"
                        % (errmsg, random_host)
                    )
                self.print_log("e", make_paragraph(errmsg))
                raise Exception(
                    "Problem source-ing %s on %s" % (self.daq_setup_script, random_host)
                )

            endtime = time()
            self.print_log("i", "done (%.1f seconds)." % (endtime - starttime))

            # Ensure the needed log directories are in place

            logdir_commands_to_run_on_host = []
            permissions = "0775"
            logdir_commands_to_run_on_host.append(
                "mkdir -p -m %s %s" % (permissions, self.log_directory)
            )

            for subdir in [
                "pmt",
                "boardreader",
                "eventbuilder",
                "dispatcher",
                "datalogger",
                "routingmanager",
            ]:
                logdir_commands_to_run_on_host.append(
                    "mkdir -p -m %s %s/%s" % (permissions, self.log_directory, subdir)
                )

            for host in set([procinfo.host for procinfo in self.procinfos]):
                logdircmd = construct_checked_command(logdir_commands_to_run_on_host)

                if not host_is_local(host):
                    logdircmd = "timeout %d ssh -f %s '%s'" % (
                        ssh_timeout_in_seconds,
                        host,
                        logdircmd,
                    )

                proc = Popen(
                    logdircmd,
                    executable="/bin/bash",
                    shell=True,
                    stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE,
                    encoding="utf-8",
                )
                out, err = proc.communicate()
                status = proc.returncode

                if status != 0:

                    self.print_log(
                        "e",
                        "\nNonzero return value (%d) resulted when trying to run the following on host %s:\n%s\n"
                        % (status, host, "\n".join(logdir_commands_to_run_on_host)),
                    )
                    self.print_log(
                        "e",
                        "STDOUT output: \n%s" % (out),
                    )
                    self.print_log(
                        "e",
                        "STDERR output: \n%s" % (err),
                    )
                    self.print_log(
                        "e",
                        make_paragraph(
                            "Returned value of %d suggests that the ssh call to %s timed out. Perhaps a lack of public/private ssh keys resulted in ssh asking for a password?"
                            % (status, host)
                        ),
                    )
                    raise Exception(
                        "Problem running mkdir -p for the needed logfile directories on %s; this is likely due either to an ssh issue or a directory permissions issue"
                        % (host)
                    )

            self.init_process_requirements()

            self.create_setup_fhiclcpp_if_needed()
            obtain_messagefacility_fhicl(self.have_artdaq_mfextensions())

            cmds = []
            cmds.append(
                "if [[ -z $( command -v fhicl-dump ) ]]; then %s; source %s; fi"
                % (";".join(get_setup_commands(self.productsdir, self.spackdir)), os.environ["DAQINTERFACE_SETUP_FHICLCPP"])
            )
            cmds.append(
                "if [[ $FHICLCPP_VERSION =~ v4_1[01]|v4_0|v[0123] ]]; then dump_arg=0;else dump_arg=none;fi"
            )
            cmds.append(
                "fhicl-dump -l $dump_arg -c %s"
                % (get_messagefacility_template_filename())
            )

            proc = Popen(
                "; ".join(cmds),
                executable="/bin/bash",
                shell=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                encoding="utf-8",
            )

            out, err = proc.communicate()
            status = proc.returncode

            if status != 0:
                self.print_log(
                    "e",
                    "\nNonzero return value (%d) resulted when trying to run the following:\n%s\n"
                    % (status, "\n".join(cmds)),
                )
                self.print_log(
                    "e",
                    "STDOUT output: \n%s" % (out),
                )
                self.print_log(
                    "e",
                    "STDERR output: \n%s" % (err),
                )
                self.print_log(
                    "e",
                    make_paragraph(
                        "The FHiCL code designed to control MessageViewer, found in %s, appears to contain one or more syntax errors (Or there was a problem running fhicl-dump)"
                        % (get_messagefacility_template_filename())
                    ),
                )

                raise Exception(
                    "The FHiCL code designed to control MessageViewer, found in %s, appears to contain one or more syntax errors (Or there was a problem running fhicl-dump)"
                    % (get_messagefacility_template_filename())
                )

            # Now, with the info on hand about the processes contained in
            # procinfos, actually launch them

            self.print_log("i", "\nLaunching the artdaq processes")
            self.called_launch_procs = True
            self.launch_procs_time = (
                time()
            )  # Will be used when checking logfile's timestamps

            try:
                launch_procs_actions = self.launch_procs()

                assert type(launch_procs_actions) is dict, make_paragraph(
                    "The launch_procs function needs to return a dictionary whose keys are the names of the hosts on which it ran commands, and whose values are those commands"
                )

            except Exception:
                self.print_log("e", traceback.format_exc())

                self.alert_and_recover(
                    "An exception was thrown in launch_procs(), see traceback above for more info"
                )
                return

            num_launch_procs_checks = 0

            while True:

                num_launch_procs_checks += 1

                self.print_log(
                    "i",
                    "Checking that processes are up (check %d of a max of %d checks)..."
                    % (num_launch_procs_checks, self.max_num_launch_procs_checks),
                    1,
                    False,
                )

                # "False" here means "don't consider it an error if all
                # processes aren't found"

                found_processes = self.check_proc_heartbeats(False)
                self.print_log(
                    "i",
                    "found %d of %d processes."
                    % (len(found_processes), len(self.procinfos)),
                )

                assert type(found_processes) is list, make_paragraph(
                    "check_proc_heartbeats needs to return a list of procinfos corresponding to the processes it found alive"
                )
                if len(found_processes) == len(self.procinfos):

                    self.print_log("i", "All processes appear to be up")

                    break
                else:
                    sleep(
                        self.launch_procs_wait_time / self.max_num_launch_procs_checks
                    )
                    if num_launch_procs_checks >= self.max_num_launch_procs_checks:
                        missing_processes = [
                            procinfo
                            for procinfo in self.procinfos
                            if procinfo not in found_processes
                        ]

                        print
                        self.print_log(
                            "e",
                            "The following desired artdaq processes failed to launch:\n%s"
                            % (
                                ", ".join(
                                    [
                                        "%s at %s:%s"
                                        % (procinfo.label, procinfo.host, procinfo.port)
                                        for procinfo in missing_processes
                                    ]
                                )
                            ),
                        )
                        self.print_log(
                            "e",
                            make_paragraph(
                                'In order to investigate what happened, you can try re-running with "debug level" in your boot file set to 4. If that doesn\'t help, you can directly recreate what DAQInterface did by doing the following:'
                            ),
                        )

                        for host in set(
                            [
                                procinfo.host
                                for procinfo in self.procinfos
                                if procinfo in missing_processes
                            ]
                        ):

                            self.print_log(
                                "i",
                                "\nPerform a clean login to %s, source the DAQInterface environment, and execute the following:\n%s"
                                % (host, "\n".join(launch_procs_actions[host])),
                            )

                        self.process_launch_diagnostics(missing_processes)

                        self.alert_and_recover(
                            'Problem launching the artdaq processes; scroll above the output from the "RECOVER" transition for more info'
                        )
                        return

            for procinfo in self.procinfos:

                if "BoardReader" in procinfo.name:
                    timeout = self.boardreader_timeout
                elif "EventBuilder" in procinfo.name:
                    timeout = self.eventbuilder_timeout
                elif "RoutingManager" in procinfo.name:
                    timeout = self.routingmanager_timeout
                elif "DataLogger" in procinfo.name:
                    timeout = self.datalogger_timeout
                elif "Dispatcher" in procinfo.name:
                    timeout = self.dispatcher_timeout

                try:
                    procinfo.server = TimeoutServerProxy(procinfo.socketstring, timeout)
                except Exception:
                    self.print_log("e", traceback.format_exc())

                    self.alert_and_recover(
                        'Problem creating server with socket "%s"'
                        % procinfo.socketstring
                    )
                    return

        if self.msgviewer_proc is not None:
            # now wait/check status from msgviewer
            if self.msgviewer_proc.wait() != 0:
                self.alert_and_recover(
                    'Status error raised in msgviewer call within Popen; tried the following commands: \n\n"%s"'
                    % " ;\n".join(cmds)
                )
                return

        if self.manage_processes:
            # JCF, 3/5/15

            # Get our hands on the name of logfile so we can save its
            # name for posterity. This is taken to be the most recent
            # logfile found in the log directory. There's a tiny chance
            # someone else's logfile could sneak in during the few seconds
            # taken during startup, but it's unlikely...

            starttime = time()
            self.print_log(
                "i",
                "\nDetermining logfiles associated with the artdaq processes...",
                1,
                False,
            )

            try:

                self.process_manager_log_filenames = (
                    self.get_process_manager_log_filenames()
                )
                self.get_artdaq_log_filenames()

            except Exception:
                self.print_log("e", traceback.format_exc())
                self.alert_and_recover(
                    "Unable to find logfiles for at least some of the artdaq processes"
                )
                return
            endtime = time()
            self.print_log("i", "done (%.1f seconds)." % (endtime - starttime))

        if (
            os.environ["DAQINTERFACE_PROCESS_MANAGEMENT_METHOD"]
            == "external_run_control"
        ):
            self.add_ranks_from_ranksfile()

        self.complete_state_change(self.name, "booting")

        self.print_log("i", "\n%s: BOOT transition complete" % (date_and_time()))

    def do_config(self, subconfigs_for_run=[]):

        self.print_log("i", "\n%s: CONFIG transition underway" % (date_and_time()))

        os.chdir(self.daqinterface_base_dir)

        if not subconfigs_for_run:
            self.subconfigs_for_run = self.run_params["config"]
        else:
            self.subconfigs_for_run = subconfigs_for_run

        self.subconfigs_for_run.sort()

        self.print_log("d", "Config name: %s" % (" ".join(self.subconfigs_for_run)), 1)

        starttime = time()
        self.print_log("i", "\nObtaining FHiCL documents...", 1, False)

        try:
            tmpdir_for_fhicl, self.fhicl_file_path = self.get_config_info()
            assert "/tmp" == tmpdir_for_fhicl[:4]
        except:
            self.revert_failed_transition("calling get_config_info()")
            return

        rootfile_cntr = 0

        filename_dictionary = {}  # If we find a repeated *.fcl file, that's an error

        for dummy, dummy, filenames in os.walk(tmpdir_for_fhicl):
            for filename in filenames:
                if filename.endswith(".fcl"):
                    if filename not in filename_dictionary:
                        filename_dictionary[filename] = True

                        # See Issue #20803.  Idea is that, e.g.,
                        # component01.fcl and component01_hw_cfg.fcl
                        # refer to the same thing

                        if filename.endswith("_hw_cfg.fcl"):
                            filename_dictionary[
                                filename.replace("_hw_cfg.fcl", ".fcl")
                            ] = True
                        else:
                            filename_dictionary[
                                filename.replace(".fcl", "_hw_cfg.fcl")
                            ] = True
                    else:
                        raise Exception(
                            make_paragraph(
                                'Error: filename "%s" found more than once given the set of requested subconfigurations "%s" (see %s)'
                                % (
                                    filename,
                                    " ".join(self.subconfigs_for_run),
                                    tmpdir_for_fhicl,
                                )
                            )
                        )

        for i_proc in range(len(self.procinfos)):

            matching_filenames = ["%s.fcl" % self.procinfos[i_proc].label]
            if (
                "BoardReader" in self.procinfos[i_proc].name
            ):  # For backwards compatibility (see Issue #20803)
                matching_filenames.append(
                    "%s_hw_cfg.fcl" % self.procinfos[i_proc].label
                )

            found_fhicl = False
            for dirname, dummy, filenames in os.walk(tmpdir_for_fhicl):
                for filename in filenames:
                    if filename in matching_filenames:
                        fcl = "%s/%s" % (dirname, filename)
                        found_fhicl = True

            if not found_fhicl:
                self.print_log(
                    "e",
                    make_paragraph(
                        'Unable to find a FHiCL document for %s in configuration "%s"; either remove the request for %s in the setdaqcomps.sh command (boardreader) or boot file (other artdaq process types) and redo the transitions or choose a new configuration'
                        % (
                            self.procinfos[i_proc].label,
                            " ".join(self.subconfigs_for_run),
                            self.procinfos[i_proc].label,
                        )
                    ),
                )
                self.revert_failed_transition("looking for all needed FHiCL documents")
                return

            try:
                self.procinfos[i_proc].ffp = self.fhicl_file_path
                self.procinfos[i_proc].update_fhicl(fcl)
            except Exception:
                self.print_log("e", traceback.format_exc())
                self.alert_and_recover(
                    "An exception was thrown when creating the process FHiCL documents; see traceback above for more info"
                )
                return

            if not self.disable_unique_rootfile_labels and (
                "EventBuilder" in self.procinfos[i_proc].name
                or "DataLogger" in self.procinfos[i_proc].name
            ):
                fhicl_before_sub = self.procinfos[i_proc].fhicl_used

                rootfile_cntr_prefix = "dl"

                self.procinfos[i_proc].fhicl_used = re.sub(
                    r"(\n\s*[^#\s].*)\.root",
                    r"\1" + "_dl" + str(rootfile_cntr + 1) + ".root",
                    self.procinfos[i_proc].fhicl_used,
                )

                if self.procinfos[i_proc].fhicl_used != fhicl_before_sub:
                    rootfile_cntr += 1

        endtime = time()
        self.print_log("i", "done (%.1f seconds)." % (endtime - starttime))

        for procinfo in self.procinfos:
            assert not procinfo.fhicl is None and not procinfo.fhicl_used is None

        assert "/tmp" == tmpdir_for_fhicl[:4] and len(tmpdir_for_fhicl) > 4
        shutil.rmtree(tmpdir_for_fhicl)

        starttime = time()
        self.print_log("i", "Reformatting the FHiCL documents...", 1, False)

        try:
            self.create_setup_fhiclcpp_if_needed()
        except:
            raise

        reformatted_fhicl_documents = reformat_fhicl_documents(
            os.environ["DAQINTERFACE_SETUP_FHICLCPP"], self.procinfos
        )

        for i_proc, reformatted_fhicl_document in enumerate(
            reformatted_fhicl_documents
        ):
            self.procinfos[i_proc].fhicl_used = reformatted_fhicl_document

        endtime = time()
        self.print_log("i", "done (%.1f seconds)." % (endtime - starttime))

        starttime = time()
        self.print_log("i", "Bookkeeping the FHiCL documents...", 1, False)

        try:
            self.bookkeeping_for_fhicl_documents()
        except Exception:
            self.print_log("e", traceback.format_exc())
            self.alert_and_recover(
                "An exception was thrown when performing bookkeeping on the process FHiCL documents; see traceback above for more info"
            )
            return
        endtime = time()
        self.print_log("i", "done (%.1f seconds)." % (endtime - starttime))

        self.tmp_run_record = "/tmp/run_record_attempted_%s/%s" % (
            os.environ["USER"],
            os.environ["DAQINTERFACE_PARTITION_NUMBER"],
        )

        self.semipermanent_run_record = "/tmp/run_record_attempted_%s/%s" % (
            os.environ["USER"],
            Popen(
                "date +%a_%b_%d_%H:%M:%S.%N",
                executable="/bin/bash",
                shell=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                encoding="utf8",
            )
            .stdout.readlines()[0]
            .strip(),
        )

        assert not os.path.exists(self.semipermanent_run_record)

        if os.path.exists(self.tmp_run_record):
            shutil.rmtree(self.tmp_run_record)

        starttime = time()
        self.print_log("i", "Saving the run record...", 1, False)
        # self.print_log("d", "\n", 2)

        try:
            self.save_run_record()
        except Exception:
            self.print_log("w", traceback.format_exc())
            self.print_log(
                "w",
                make_paragraph(
                    "WARNING: an exception was thrown when attempting to save the run record. While datataking may be able to proceed, this may also indicate a serious problem"
                ),
            )

        endtime = time()
        self.print_log("i", "done (%.1f seconds)." % (endtime - starttime))

        try:
            self.check_config()
        except Exception:
            self.print_log("w", traceback.format_exc())
            self.revert_failed_transition(
                "calling experiment-defined function check_config()"
            )
            return

        if self.manage_processes:

            self.readjust_process_priorities(self.boardreader_priorities_on_config)

            try:
                self.do_command("Init")
            except Exception:
                self.print_log("d", traceback.format_exc(), 2)
                self.alert_and_recover(
                    'An exception was thrown when attempting to send the "init" transition to the artdaq processes; see messages above for more info'
                )
                return

            starttime = time()

            self.print_log(
                "i",
                "Ensuring FHiCL documents will be archived in the output *.root files...",
                1,
                False,
            )
            self.print_log("d", "\n", 3)

            labeled_fhicl_documents = []

            for procinfo_with_fhicl_to_save in self.procinfos:
                labeled_fhicl_documents.append(
                    (
                        procinfo_with_fhicl_to_save.label,
                        re.sub("'", '"', procinfo_with_fhicl_to_save.fhicl_used),
                    )
                )

            for filestub in ["metadata", "boot"]:
                with open("%s/%s.txt" % (self.tmp_run_record, filestub)) as inf:
                    contents = inf.read()
                    contents = re.sub("'", '"', contents)
                    contents = re.sub('"', '"', contents)
                    labeled_fhicl_documents.append(
                        (filestub, 'contents: "\n%s\n"\n' % (contents))
                    )

            self.archive_documents(labeled_fhicl_documents)

            endtime = time()
            self.print_log("i", "done (%.1f seconds)." % (endtime - starttime))

        self.complete_state_change(self.name, "configuring")

        if self.manage_processes:
            self.print_log(
                "i",
                str(
                    "\nProcess manager logfiles (if applicable):\n%s"
                    % (", ".join(self.process_manager_log_filenames))
                ),
            )

        self.print_log("i", "\n%s: CONFIG transition complete" % (date_and_time()))

    def do_start_running(self, run_number=None):

        if not run_number:
            self.run_number = self.run_params["run_number"]
        else:
            self.run_number = run_number

        self.print_log(
            "i",
            "\n%s: START transition underway for run %d"
            % (date_and_time(), self.run_number),
        )

        self.check_run_record_integrity()

        if str(self.run_number) in [
            subdir.split("/")[-1]
            for subdir in glob.glob("%s/[0-9]*" % (self.record_directory))
        ]:
            raise Exception(
                make_paragraph(
                    'Error: requested run number "%s" is found to already exist in the run records directory "%s"; run duplicates are not allowed.'
                    % (str(self.run_number), self.record_directory)
                )
            )

        if os.path.exists(self.tmp_run_record):
            run_record_directory = "%s/%s" % (
                self.record_directory,
                str(self.run_number),
            )

            try:
                shutil.copytree(self.tmp_run_record, run_record_directory)
            except:
                self.print_log("e", traceback.format_exc())
                self.alert_and_recover(
                    make_paragraph(
                        'Error: Attempt to copy temporary run record "%s" into permanent run record "%s" didn\'t work; most likely reason is that you don\'t have write permission to %s, but it may also mean that your experiment\'s reusing a run number. Scroll up past the Recover transition output for further troubleshooting information.'
                        % (
                            self.tmp_run_record,
                            run_record_directory,
                            self.record_directory,
                        )
                    )
                )
                return
            Popen(
                "touch %s" % (run_record_directory),
                executable="/bin/bash",
                shell=True,
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
            )
            os.chmod(run_record_directory, 0o555)

            assert re.search(r"^/tmp/\S", self.semipermanent_run_record)
            if os.path.exists(self.semipermanent_run_record):
                shutil.rmtree(self.semipermanent_run_record)

        else:
            self.alert_and_recover(
                "Error in DAQInterface: unable to find temporary run records directory %s"
                % self.tmp_run_record
            )
            return

        try:
            self.put_config_info()
        except Exception:
            self.print_log("e", traceback.format_exc())
            self.alert_and_recover(
                "An exception was thrown when trying to save configuration info; see traceback above for more info"
            )
            return

        if os.environ[
            "DAQINTERFACE_PROCESS_MANAGEMENT_METHOD"
        ] == "external_run_control" and os.path.exists(
            "/tmp/info_to_archive_partition%d.txt" % (self.partition_number)
        ):

            os.chmod(run_record_directory, 0o755)
            copyfile(
                "/tmp/info_to_archive_partition%d.txt" % (self.partition_number),
                "%s/rc_info_start.txt" % (run_record_directory),
            )
            os.chmod(run_record_directory, 0o555)

            if not os.path.exists("%s/rc_info_start.txt" % (run_record_directory)):
                self.alert_and_recover(
                    make_paragraph(
                        "Problem copying /tmp/info_to_archive_partition%d.txt into %s/rc_info_start.txt; does original file exist?"
                        % (self.partition_number, run_record_directory)
                    )
                )

        self.execute_trace_script("start")

        if self.manage_processes:

            self.readjust_process_priorities(self.boardreader_priorities_on_start)

            try:
                self.do_command("Start")
            except Exception:
                self.print_log("d", traceback.format_exc(), 2)
                self.alert_and_recover(
                    'An exception was thrown when attempting to send the "start" transition to the artdaq processes; see messages above for more info'
                )
                return

        self.start_datataking()

        self.save_metadata_value(
            "DAQInterface start time",
            Popen(
                "date --utc",
                executable="/bin/bash",
                shell=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
            )
            .stdout.readlines()[0]
            .strip()
            .decode("utf-8"),
        )

        if self.manage_processes:
            starttime = time()
            self.print_log(
                "i,",
                "\nAttempting to provide run-numbered softlinks to the logfiles...",
                1,
                False,
            )
            self.print_log("d", "", 2)
            self.softlink_logfiles()
            endtime = time()
            self.print_log("i", "done (%.1f seconds)." % (endtime - starttime))

        self.print_log(
            "i", "\nRun info can be found locally at %s\n" % (run_record_directory)
        )

        self.complete_state_change(self.name, "starting")
        self.print_log(
            "i",
            "\n%s: START transition complete for run %d"
            % (date_and_time(), self.run_number),
        )

    def do_stop_running(self):

        self.print_log(
            "i",
            "\n%s: STOP transition underway for run %d"
            % (date_and_time(), self.run_number),
        )

        self.save_metadata_value(
            "DAQInterface stop time",
            Popen(
                "date --utc",
                executable="/bin/bash",
                shell=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
            )
            .stdout.readlines()[0]
            .strip()
            .decode("utf-8"),
        )

        try:
            self.put_config_info_on_stop()
        except Exception:
            self.print_log("e", traceback.format_exc())
            self.alert_and_recover(
                "An exception was thrown when trying to save configuration info; see traceback above for more info"
            )
            return

        self.stop_datataking()

        if os.environ[
            "DAQINTERFACE_PROCESS_MANAGEMENT_METHOD"
        ] == "external_run_control" and os.path.exists(
            "/tmp/info_to_archive_partition%d.txt" % (self.partition_number)
        ):
            run_record_directory = "%s/%s" % (
                self.record_directory,
                str(self.run_number),
            )
            os.chmod(run_record_directory, 0o755)

            copyfile(
                "/tmp/info_to_archive_partition%d.txt" % (self.partition_number),
                "%s/rc_info_stop.txt" % (run_record_directory),
            )
            os.chmod(run_record_directory, 0o555)

            if not os.path.exists("%s/rc_info_stop.txt" % (run_record_directory)):
                self.alert_and_recover(
                    make_paragraph(
                        "Problem copying /tmp/info_to_archive_partition%d.txt into %s/rc_info_stop.txt; does original file exist?"
                        % (self.partition_number, run_record_directory)
                    )
                )

        if self.manage_processes:

            self.readjust_process_priorities(self.boardreader_priorities_on_stop)

            try:
                self.do_command("Stop")
            except Exception:
                self.print_log("d", traceback.format_exc(), 2)
                self.alert_and_recover(
                    'An exception was thrown when attempting to send the "stop" transition to the artdaq processes; see messages above for more info'
                )
                return

        self.execute_trace_script("stop")

        self.complete_state_change(self.name, "stopping")
        self.print_log(
            "i",
            "\n%s: STOP transition complete for run %d"
            % (date_and_time(), self.run_number),
        )

    def do_terminate(self):

        self.print_log("i", "\n%s: TERMINATE transition underway" % (date_and_time()))

        print

        if self.manage_processes:

            self.process_manager_cleanup()

            starttime = time()
            self.print_log(
                "i", "Sending shutdown transition to artdaq processes...", 1, False
            )

            proc_starttimes = {}
            proc_endtimes = {}

            for procinfo in self.procinfos:

                procinfo.state = self.verbing_to_states["Shutdown"]

                try:
                    proc_starttimes[procinfo.label] = time()
                    procinfo.lastreturned = procinfo.server.daq.shutdown()
                    proc_endtimes[procinfo.label] = time()
                except Exception:
                    self.print_log(
                        "e",
                        "An exception was thrown when shutdown was issued to %s"
                        % (procinfo.label),
                    )
                    self.print_log("e", traceback.format_exc())

                    self.alert_and_recover(
                        "An exception was thrown during the terminate transition"
                    )
                    return
                else:
                    if (
                        procinfo.lastreturned == "Success"
                        or procinfo.lastreturned == self.target_states["Shutdown"]
                    ):
                        procinfo.state = self.target_states["Shutdown"]

            endtime = time()
            self.print_log("i", "done (%.1f seconds)." % (endtime - starttime))

            if self.debug_level >= 2 or len(
                [
                    dummy
                    for procinfo in self.procinfos
                    if procinfo.lastreturned != "Success"
                ]
            ):
                for procinfo in self.procinfos:
                    total_time = (
                        proc_endtimes[procinfo.label] - proc_starttimes[procinfo.label]
                    )
                    self.print_log(
                        "i",
                        "%s at %s:%s, after %.1f seconds returned string was:\n%s\n"
                        % (
                            procinfo.label,
                            procinfo.host,
                            procinfo.port,
                            total_time,
                            procinfo.lastreturned,
                        ),
                    )
            else:
                self.print_log("i", '\nAll artdaq processes returned "Success".\n')

            try:
                self.kill_procs()
            except Exception:
                self.print_log(
                    "e", "DAQInterface caught an exception in " "do_terminate()"
                )
                self.print_log("e", traceback.format_exc())
                self.alert_and_recover("An exception was thrown " "within kill_procs()")
                return

        self.complete_state_change(self.name, "terminating")

        self.print_log("i", "\n%s: TERMINATE transition complete" % (date_and_time()))

        if self.manage_processes:
            self.print_log(
                "i",
                "Process manager logfiles (if applicable): %s"
                % (",".join(self.process_manager_log_filenames)),
            )

    def do_recover(self):
        run_number_string = f" for run {self.run_number}" if self.run_number else ""
        print
        self.print_log(
            "w",
            "\n%s: RECOVER transition underway%s"
            % (date_and_time(), run_number_string),
        )

        self.in_recovery = True

        if not self.called_launch_procs:
            self.print_log(
                "i",
                "DAQInterface does not appear to have gotten to the point of launching the artdaq processes",
            )

        if self.disable_recovery or not self.called_launch_procs:
            self.print_log(
                "i",
                "Skipping cleanup of artdaq processes, this recover step is effectively a no-op",
            )

            self.in_recovery = False
            self.complete_state_change(self.name, "recovering")
            self.print_log(
                "i",
                "\n%s: RECOVER transition complete%s"
                % (date_and_time(), run_number_string),
            )
            return

        if self.state(self.name) == "running" or self.state(self.name) == "stopping":
            try:
                self.execute_trace_script("stop")
            except Exception:
                pass

        def attempted_stop(self, procinfo):

            pid = self.get_pid_for_process(procinfo)

            if pid is None:
                if self.debug_level >= 2 or not self.heartbeat_failure:
                    self.print_log(
                        "d",
                        "Didn't find PID for %s at %s:%s"
                        % (procinfo.label, procinfo.host, procinfo.port),
                        2,
                    )
                return

            def send_recover_command(command):

                procinfo.state = self.verbing_to_states[command]
                try:
                    transition_starttime = time()
                    if command == "Stop":
                        procinfo.lastreturned = procinfo.server.daq.stop()
                    elif command == "Shutdown":
                        procinfo.lastreturned = procinfo.server.daq.shutdown()
                    else:
                        assert False
                    transition_endtime = time()

                    self.print_log(
                        "d",
                        'Called %s on %s at %s:%s without an exception; after %.1f seconds returned string was "%s"'
                        % (
                            command,
                            procinfo.label,
                            procinfo.host,
                            procinfo.port,
                            transition_endtime - transition_starttime,
                            procinfo.lastreturned,
                        ),
                        2,
                    )
                except Exception:
                    raise

                if (
                    procinfo.lastreturned == "Success"
                    or procinfo.lastreturned == self.target_states[command]
                ):
                    self.print_log(
                        "d",
                        "Successful %s sent to %s at %s:%s"
                        % (command, procinfo.label, procinfo.host, procinfo.port),
                        2,
                    )
                    procinfo.state = self.target_states[command]
                else:
                    raise Exception(
                        make_paragraph(
                            "Attempted %s sent to artdaq process %s "
                            % (command, procinfo.label)
                            + "at %s:%s during recovery procedure"
                            % (procinfo.host, procinfo.port)
                            + ' returned "%s"' % (procinfo.lastreturned)
                        )
                    )

            try:
                procinfo.lastreturned = procinfo.server.daq.status()
            except Exception:
                msg = (
                    "Unable to determine state of artdaq process %s at %s:%s; will not be able to complete its stop-and-shutdown"
                    % (procinfo.label, procinfo.host, procinfo.port)
                )
                if (
                    self.state(self.name) != "stopped"
                    and self.state(self.name) != "booting"
                    and self.state(self.name) != "terminating"
                ):
                    self.print_log("e", make_paragraph(msg))
                else:
                    self.print_log("d", make_paragraph(msg), 2)

                return
            else:
                procinfo.state = procinfo.lastreturned

            if procinfo.state == "Running":

                try:
                    send_recover_command("Stop")
                except Exception:
                    if "ProtocolError" not in traceback.format_exc():
                        self.print_log("e", traceback.format_exc())
                    self.print_log(
                        "e",
                        make_paragraph(
                            "Exception caught during stop transition sent to artdaq process %s "
                            % (procinfo.label)
                            + "at %s:%s during recovery procedure;"
                            % (procinfo.host, procinfo.port)
                            + " it's possible the process no longer existed\n"
                        ),
                    )

                    return

                try:
                    procinfo.lastreturned = procinfo.server.daq.status()
                except Exception:
                    self.print_log(
                        "e",
                        "Unable to determine state of artdaq process %s at %s:%s; will not be able to complete its stop-and-shutdown"
                        % (procinfo.label, procinfo.host, procinfo.port),
                    )
                    return
                else:
                    procinfo.state = procinfo.lastreturned

            if procinfo.state == "Ready":

                try:
                    send_recover_command("Shutdown")
                except Exception:
                    if "ProtocolError" not in traceback.format_exc():
                        self.print_log("e", traceback.format_exc())
                    self.print_log(
                        "e",
                        make_paragraph(
                            "Exception caught during shutdown transition sent to artdaq process %s "
                            % (procinfo.label)
                            + "at %s:%s during recovery procedure;"
                            % (procinfo.host, procinfo.port)
                            + " it's possible the process no longer existed\n"
                        ),
                    )
                    return

            return

        if self.manage_processes:

            # JCF, Feb-1-2017

            # If an artdaq process has died, the others might follow
            # soon after - if this is the case, then wait a few
            # seconds to give them a chance to die before trying to
            # send them transitions (i.e., so they don't die AFTER a
            # transition is sent, causing more errors)

            if self.heartbeat_failure:
                sleep_on_heartbeat_failure = 0

                self.print_log(
                    "d",
                    make_paragraph(
                        "A process previously was found to be missing; "
                        + "therefore will wait %d seconds before attempting to send the normal transitions as part of recovery"
                        % (sleep_on_heartbeat_failure)
                    ),
                    2,
                )
                sleep(sleep_on_heartbeat_failure)

            print
            for name in [
                "BoardReader",
                "EventBuilder",
                "DataLogger",
                "Dispatcher",
                "RoutingManager",
            ]:

                self.print_log(
                    "i",
                    "%s: Attempting to cleanly wind down the %ss if they (still) exist"
                    % (date_and_time(), name),
                )

                threads = []
                priorities_used = {}

                for procinfo in self.procinfos:
                    if name in procinfo.name:
                        priorities_used[
                            procinfo.priority
                        ] = "We only care about the key in the dict"

                for priority in sorted(priorities_used.keys(), reverse=True):
                    for procinfo in self.procinfos:
                        if name in procinfo.name and priority == procinfo.priority:
                            t = RaisingThread(
                                target=attempted_stop, args=(self, procinfo)
                            )
                            threads.append(t)
                            t.start()

                    for thread in threads:
                        thread.join()

        if self.manage_processes:
            print
            self.print_log(
                "i",
                "%s: Attempting to kill off the artdaq processes from this run if they still exist"
                % (date_and_time()),
            )
            try:
                self.kill_procs()
            except Exception:
                self.print_log("e", traceback.format_exc())
                self.print_log(
                    "e",
                    make_paragraph(
                        "An exception was thrown "
                        "within kill_procs(); artdaq processes may not all have been killed"
                    ),
                )

        self.in_recovery = False

        # JCF, Oct-15-2019

        # Make sure that the runner function won't just proceed with a
        # transition "in the queue" despite DAQInterface being in the
        # Stopped state after we've finished this recover

        self.__do_boot = (
            self.__do_shutdown
        ) = (
            self.__do_config
        ) = (
            self.__do_recover
        ) = (
            self.__do_start_running
        ) = (
            self.__do_stop_running
        ) = (
            self.__do_terminate
        ) = (
            self.__do_pause_running
        ) = (
            self.__do_resume_running
        ) = (
            self.__do_enable
        ) = (
            self.__do_disable
        ) = self.do_trace_get_boolean = self.do_trace_set_boolean = False

        self.complete_state_change(self.name, "recovering")

        self.print_log(
            "i",
            "\n%s: RECOVER transition complete%s"
            % (date_and_time(), run_number_string),
        )

    def artdaq_process_info(self, name, quiet=False):

        try:
            self.procinfos
        except:
            return self.state(
                name
            )  # OK if we haven't yet created the list of Procinfo structures
        else:
            tmpfile = "/tmp/artdaq_process_info_%s_partition%s" % (
                os.environ["USER"],
                os.environ["DAQINTERFACE_PARTITION_NUMBER"],
            )
            infostring = ""
            for procinfo in self.procinfos:
                host = procinfo.host
                if host == "localhost":
                    host = os.environ["HOSTNAME"]
                infostring += "%s at %s:%s (subsystem %s, rank %s): %s\n" % (
                    procinfo.label,
                    host,
                    procinfo.port,
                    procinfo.subsystem,
                    procinfo.rank,
                    procinfo.state,
                )

            if not quiet:
                with open(tmpfile, "w") as outf:
                    outf.write(infostring)

                self.print_log("d", infostring, 5)

        return infostring

    # Override of the parent class Component's runner function. As of
    # 5/30/14, called every 1s by control.py

    def runner(self):

        """
        Component "ops" loop.  Called at threading hearbeat frequency,
        currently 1/sec.
        """

        try:

            if self.in_recovery:
                pass

            if self.exception:
                raise Exception(
                    "Error: at some point DAQInterface set an exception state"
                )

            elif self.__do_boot:
                self.__do_boot = False
                self.do_boot()

            elif self.__do_shutdown:
                self.__do_shutdown = False
                self.do_command("Shutdown")

            elif self.__do_config:
                self.__do_config = False
                self.do_config()

            elif self.__do_recover:
                self.__do_recover = False
                self.do_recover()

            elif self.__do_start_running:
                self.__do_start_running = False
                self.do_start_running()

            elif self.__do_stop_running:
                self.__do_stop_running = False
                self.do_stop_running()

            elif self.__do_terminate:
                self.__do_terminate = False
                self.do_terminate()

            elif self.__do_pause_running:
                self.__do_pause_running = False
                self.do_command("Pause")

            elif self.__do_resume_running:
                self.__do_resume_running = False
                self.do_command("Resume")

            elif self.__do_enable:
                self.__do_enable = False
                self.do_enable()

            elif self.__do_disable:
                self.__do_disable = False
                self.do_disable()

            elif self.do_trace_get_boolean:
                self.do_trace_get_boolean = False
                self.do_trace_get()

            elif self.do_trace_set_boolean:
                self.do_trace_set_boolean = False
                self.do_trace_set()

            elif (
                self.manage_processes
                and self.state(self.name) != "stopped"
                and self.state(self.name) != "booting"
                and self.state(self.name) != "terminating"
            ):
                self.check_proc_heartbeats()
                self.check_proc_exceptions()
                self.perform_periodic_action()

        except Exception:
            self.in_recovery = True
            self.alert_and_recover(traceback.format_exc())
            self.in_recovery = False
            self.exception = False


def get_args():  # no-coverage
    parser = argparse.ArgumentParser(description="DAQInterface")
    parser.add_argument(
        "-n", "--name", type=str, dest="name", default="daqint", help="Component name"
    )
    parser.add_argument(
        "-p",
        "--partition-number",
        type=int,
        dest="partition_number",
        default=888,
        help="Partition number",
    )
    parser.add_argument(
        "-r", "--rpc-port", type=int, dest="rpc_port", default=5570, help="RPC port"
    )
    parser.add_argument(
        "-H",
        "--rpc-host",
        type=str,
        dest="rpc_host",
        default="localhost",
        help="This hostname/IP addr",
    )
    parser.add_argument(
        "-c",
        "--control-host",
        type=str,
        dest="control_host",
        default="localhost",
        help="Control host",
    )

    return parser.parse_args()


def main():  # no-coverage

    if "DAQINTERFACE_STANDARD_SOURCEFILE_SOURCED" not in os.environ.keys():
        print(
            make_paragraph(
                'Won\'t launch DAQInterface; you first need to run "source $ARTDAQ_DAQINTERFACE_DIR/source_me"'
            )
        )
        print
        return

    if "DAQINTERFACE_SETTINGS" not in os.environ.keys():
        print(
            make_paragraph(
                "Need to have the DAQINTERFACE_SETTINGS environment variable set to refer to the DAQInterface settings file"
            )
        )
        print
        return

    if not os.path.exists(os.environ["DAQINTERFACE_SETTINGS"]):
        print(
            make_paragraph(
                'The file referred to by the DAQINTERFACE_SETTINGS environment variable, "%s", does not appear to exist'
                % (os.environ["DAQINTERFACE_SETTINGS"])
            )
        )
        print
        return

    if "DAQINTERFACE_KNOWN_BOARDREADERS_LIST" not in os.environ.keys():
        print(
            make_paragraph(
                "Need to have the DAQINTERFACE_KNOWN_BOARDREADERS_LIST environment variable set to refer to the list of boardreader types DAQInterface can use"
            )
        )
        print
        return

    process_management_methods = ["direct", "pmt", "external_run_control"]
    if "DAQINTERFACE_PROCESS_MANAGEMENT_METHOD" not in os.environ.keys():
        raise Exception(
            make_paragraph(
                "Need to have the DAQINTERFACE_PROCESS_MANAGEMENT_METHOD set so DAQinterface knows what method to use to control the artdaq processes (%s, etc.)"
                % (",".join(['"' + pmm + '"' for pmm in process_management_methods]))
            )
        )
    else:
        legal_method_found = False
        for pmm in process_management_methods:
            if os.environ["DAQINTERFACE_PROCESS_MANAGEMENT_METHOD"] == pmm:
                legal_method_found = True

        if not legal_method_found:
            raise Exception(
                make_paragraph(
                    'DAQInterface can\'t interpret the current value of the DAQINTERFACE_PROCESS_MANAGEMENT_METHOD environment variable ("%s"); legal values include %s'
                    % (
                        os.environ["DAQINTERFACE_PROCESS_MANAGEMENT_METHOD"],
                        ",".join(
                            ['"' + pmm + '"' for pmm in process_management_methods]
                        ),
                    )
                )
            )

    if not os.path.exists(os.environ["DAQINTERFACE_KNOWN_BOARDREADERS_LIST"]):
        print(
            make_paragraph(
                'The file referred to by the DAQINTERFACE_KNOWN_BOARDREADERS_LIST environment variable, "%s", does not appear to exist'
                % (os.environ["DAQINTERFACE_KNOWN_BOARDREADERS_LIST"])
            )
        )
        print
        return

    if not "HOSTNAME" in os.environ:
        print
        print(
            make_paragraph(
                'WARNING: the "HOSTNAME" environment variable does not appear to be defined (or, at least, does not appear in the os.environ dictionary). Will internally set it using the system\'s "hostname" command'
            )
        )
        os.environ["HOSTNAME"] = (
            Popen(
                "hostname",
                executable="/bin/bash",
                shell=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                encoding="UTF-8"
            )
            .stdout.readlines()[0]
            .strip()
        )
        print

    args = get_args()

    # Make sure the requested partition number is in a desired range,
    # and that it isn't already being used

    max_partitions = 10
    assert "partition_number" in vars(args)
    partition_number = vars(args)["partition_number"]
    if partition_number < 0 or partition_number > max_partitions - 1:
        print
        print(
            make_paragraph(
                "Error: requested partition has the value %d while it needs to be between 0 and %d, inclusive; please set the DAQINTERFACE_PARTITION_NUMBER environment variable accordingly and try again"
                % (partition_number, max_partitions - 1)
            )
        )
        return

    greptoken = "python.*daqinterface.py.*--partition-number\s\+%d\s\+" % (
        partition_number
    )
    pids = get_pids(greptoken)
    if len(pids) > 1:
        print(
            make_paragraph(
                'There already appears to be a DAQInterface instance running on the requested partition number (%s); please either kill the instance (if it\'s yours) or use a different partition. Run "listdaqinterfaces.sh" for more info.'
                % (partition_number)
            )
        )
        kill_tail_f()  # Because tail -f is launched before this script is launched
        return

    def handle_kill_signal(signum, stack):
        daqinterface_instance.print_log(
            "e",
            "%s: DAQInterface on partition %s caught kill signal %d"
            % (date_and_time(), partition_number, signum),
        )
        daqinterface_instance.recover()

        timeout = 180  # Because the recover() call above is non-blocking
        starttime = time()
        while daqinterface_instance.state(daqinterface_instance.name) != "stopped":
            if int(time() - starttime) > timeout:
                daqinterface_instance.print_log(
                    "e",
                    "DAQInterface signal handler recovery attempt timed out after %d seconds; DAQInterface is in the %s state rather than the stopped state"
                    % (
                        timeout,
                        daqinterface_instance.state(daqinterface_instance.name),
                    ),
                )
                break

            sleep(10)

        line = "%s: exiting..." % (date_and_time())
        print(line)

        daqinterface_instance.__del__()

        if signum == signal.SIGTERM:
            default_sigterm_handler
        elif signum == signal.SIGHUP:
            default_sighup_handler
        elif signum == signal.SIGINT:
            default_sigint_handler
        else:
            assert False

        # JCF, Mar-25-2019
        # os._exit is harder than sys.exit; see
        # https://stackoverflow.com/questions/9591350/what-is-difference-between-sys-exit0-and-os-exit
        os._exit(1)

    default_sigterm_handler = signal.signal(signal.SIGTERM, handle_kill_signal)
    default_sighup_handler = signal.signal(signal.SIGHUP, handle_kill_signal)
    default_sigint_handler = signal.signal(signal.SIGINT, handle_kill_signal)

    with DAQInterface(
        logpath=os.path.join(os.environ["HOME"], ".lbnedaqint.log"), **vars(args)
    ) as daqinterface_instance:

        while True:
            sleep(100)


if __name__ == "__main__":
    main()

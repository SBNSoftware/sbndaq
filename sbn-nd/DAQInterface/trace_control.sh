#!/bin/sh
 # This file (trace_control.sh) was created by Ron Rechenmacher <ron@fnal.gov> on
 # Sep 12, 2018. "TERMS AND CONDITIONS" governing this file are in the README
 # or COPYING file. If you do not have such a file, one can be obtained by
 # contacting Ron or Fermi Lab in Batavia IL, 60510, phone: 630-840-3000.
 # $RCSfile: trace_control.sh,v $
 # rev='$Revision: 1.4 $$Date: 2018/09/13 15:10:41 $'

#cat <<EOF >&2

#Before using this script in DAQInterface, you'll want to:

#1) Make sure you're using a copy of the original located in
#$ARTDAQ_DAQINTERFACE_DIR, and not the original itself. The copy should
#*not* be in $ARTDAQ_DAQINTERFACE_DIR

#2) Alter user-specific code in the script (references to "biery" and ProtoDUNE-cluster-specific paths)

#3) Eliminate this error message as well as the "exit 1" right after it in the script

#EOF

#exit 1
# Program defaults
# output file - eval'd locally (to resolve $run); escaping hostname moves
# it's execution to remote nodes
#echo "$(hostname -s).hello.$(date) " >> ~/trace.log

trace_control_tshow_outfile='/scratch_local/traces/r$run.$hostname.trc'
trace_control_logfile='/scratch_local/traces/r$run.$transition'
trace_control_nodelist='localhost'
trace_control_upsdb=/daq/software/products
trace_control_trace_version=v3_17_09
trace_control_run_records_dir=/daq/run_records
RGANG=`which rgang`
test -z "$RGANG" && RGANG=`which rgang.py`
cfg_file="`dirname $0`/`basename $0 .sh`.cfg"
test -f "$cfg_file" && . "$cfg_file"


USAGE="\
   usage: `basename $0` [opts] <trace_file>
examples:
`basename $0` /tmp/trace_dune-artdaq_artdaq_v3_02_01_testing \\
--run=4567 --transition=start \\
--node-list=np04-srv-014,np04-srv-011,np04-srv-001,np04-srv-002,np04-srv-011
`basename $0` /tmp/trace_buffer_\`whoami\` -r345 --nodes=mu2edaq\\{04,07,10,12} \\
--log-dir=\$PWD --out-dir=\$PWD --upsdb=/mu2e/ups -tstop

Options:          Note: \"run\" option is required.
-r,--run=         run number -- used in tshow output file name and log file name
-t,--transition=  Currently \"start\" or \"stop\". Default: start
--node-list=      comma or space separated list of nodes.
--nodes=          same as --node-list
-o,--out-file=    tshow output file. default: $trace_control_tshow_outfile
--out-dir=        just change the tshow out
-l,--log-file=    log file for output from this program (e.g. /dev/tty)
                  default: $trace_control_tshow_outfile
--log-dir=        just change the directory of the log-file
--upsdb=          ups db - default $trace_control_upsdb
-n,--dry-run      do nothing, except create log file.
"
VUSAGE=""

# Process script arguments and options
op1chr='rest=`expr "$op" : "[^-]\(.*\)"`; test -n "$rest" && set -- "-$rest" "$@"'
op1arg='rest=`expr "$op" : "[^-]\(.*\)"`; test -n "$rest" && set -- "$rest"  "$@"'
reqarg="$op1arg;"'test -z "${1+1}" &&echo opt -$op requires arg. &&echo "$USAGE" &&exit'
args= do_help= opt_v=0
while [ -n "${1-}" ];do
    if expr "x${1-}" : 'x-' >/dev/null;then
        op=`expr "x$1" : 'x-\(.*\)'`; shift   # done with $1
        leq=`expr "x$op" : 'x-[^=]*\(=\)'` lev=`expr "x$op" : 'x-[^=]*=\(.*\)'`
        test -n "$leq"&&eval "set -- \"\$lev\" \"\$@\""&&op=`expr "x$op" : 'x\([^=]*\)'`
        case "$op" in
        \?*|h*)     eval $op1chr; do_help=1;;
        v*)         eval $op1chr; opt_v=`expr $opt_v + 1`;;
        x*)         eval $op1chr; test $opt_v -ge 1 && set -xv || set -x;;
        n*|-dry-run)    eval $op1chr; do_nothing=1;;
        -node*)         eval $reqarg; nodelist=$1;                    shift;;
        r*|-run)        eval $reqarg; run=$1;                         shift;;
        t*|-transition) eval $reqarg; transition=$1;                  shift;;
        -rgang)         eval $reqarg; RGANG=$1;                       shift;;
        -log-dir)       eval $reqarg; logdir=$1;                      shift;;
        l*|-log*)       eval $reqarg; trace_control_logfile=$1;       shift;;
        -out-dir)       eval $reqarg; tshow_outdir=$1;                shift;;
        o*|-out*)       eval $reqarg; trace_control_tshow_outfile=$1; shift;;
        -upsdb)         eval $reqarg; trace_control_upsdb=$1;         shift;;
        *)          echo unknown option -$op$leq$lev; do_help=1;; # see dash_opts5.sh for mix {,un}known
        esac
    else # allow mix of opts and arg (i.e. opts after args)
        aa=`echo "$1" | sed -e "s/'/'\"'\"'/g"` args="$args '$aa'"; shift
    fi
done
eval "set -- $args \"\$@\""; unset args aa
test $# -ne 1 && echo 'Exactly one argument (trace_file) required. $#='$# && do_help=1

test -z "$RGANG" && { echo rgang not found; do_help=1; }
test -z "${run-}" && { echo Must use --run option.; do_help=1; }

test -n "${do_help-}" && { echo "$USAGE";test $opt_v -ge 1 && echo "$VUSAGE"; exit; }
set -u

trace_file=$1

test -z "${transition-}" && transition=start
test -n "${nodelist-}"   && do_nodelist=$nodelist     || do_nodelist=$trace_control_nodelist
do_nodelist=`echo $do_nodelist | sed 's/ /,/g'`
num_files=`$RGANG --list $do_nodelist 2>/dev/null | wc -l`
test $num_files -eq 0 && { echo "Invalid nodelist ($do_nodelist)"; exit; }

mv_backup() { # $1 is file to mv
  if [ -f "$1.~1~" ];then
     # NOTE: this does not strictly require ~N~, just ~N
     last=`/bin/ls "$1.~"[1-9]* | tail -1`
     nextn=`expr "$last" : '.*\.~\([0-9]*\)' + 1`
  else
     nextn=1
  fi
  mv "$1" "$1".~$nextn~
}


# these can have "$run" "$hostname" and "$transition" in them
hostname=`hostname -s`
if [ -n "${logdir-}" ];then
    base=`echo "$trace_control_logfile" | sed -e 's|.*/||'` # basename no worky with to-be-eval'd
    trace_control_logfile="$logdir/$base"
fi
eval "logfile=\"$trace_control_logfile\""
test -n "$logfile" && { test -f $logfile && mv_backup $logfile; exec >$logfile 2>&1; }
if [ -n "${tshow_outdir-}" ];then
    base=`echo "$trace_control_tshow_outfile" | sed -e 's|.*/||'` # basename no worky with to-be-eval'd
    trace_control_tshow_outfile="$tshow_outdir/$base"
fi
eval "tshow_out=\"$trace_control_tshow_outfile\""

boot_txt="$trace_control_run_records_dir/$run/boot.txt"
if [ -f "$boot_txt" ];then
    grep partition "$boot_txt"
fi

#echo "$(hostname -s).$run.$transition.$(date) " >> ~/trace.log
case $transition in
start)  rgcmd=". $trace_control_upsdb/setup"
        rgcmd="$rgcmd; setup TRACE $trace_control_trace_version"
        rgcmd="$rgcmd; export TRACE_FILE=$trace_file"
        rgcmd="$rgcmd; treset; tmodeM 1;true"
        test -n "${do_nothing-}" \
            && echo $RGANG $do_nodelist "$rgcmd" \
            || $RGANG $do_nodelist "$rgcmd"
        ;;
stop)
        rgcmd=". $trace_control_upsdb/setup"
        rgcmd="$rgcmd; setup TRACE $trace_control_trace_version"
        rgcmd="$rgcmd; export TRACE_FILE=$trace_file"
        rgcmd="$rgcmd; tshow >$tshow_out 2>&1 <&- &"
        test -n "${do_nothing-}" \
            && echo $RGANG $do_nodelist "$rgcmd" \
            || $RGANG $do_nodelist "$rgcmd"
        ;;
status)
        rgcmd=". $trace_control_upsdb/setup"
        rgcmd="$rgcmd; setup TRACE $trace_control_trace_version"
        rgcmd="$rgcmd; export TRACE_FILE=$trace_file"
        rgcmd="$rgcmd; tinfo|egrep 'entri|full|mode'"
        test -n "${do_nothing-}" \
            && echo $RGANG $do_nodelist "$rgcmd" \
            || $RGANG $do_nodelist "$rgcmd"
        ;;
*)      echo "Invalid transition ($transition) specified.";
esac

status=$?
echo; echo "exiting with status $status"
exit $status

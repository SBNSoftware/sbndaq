#!/usr/bin/env /usr/bin/bash
#export NOXWINDOW=true 
#set -v
###############################################################################
###                           RUN CONFIG PARAMS                             ###
###############################################################################
#----------------------------------------------------------------
# Current default configuration parameters, which can be 
# overriden in $HOME/artdaq_config.env file if it exits. 
#----------------------------------------------------------------

#selected_config=PhysCrateData00002
#selected_config=PhysCrateFakeData00001
selected_config=dabtest
selected_components="tpc01"
selected_boot_config="boot.txt"
temp_dir=/tmp
daq_setup_script_name=setup_icarusdaq.sh

###############################################################################
###                           MAIN PROGRAM                                  ###
###############################################################################
daq_setup_params=$HOME/artdaq_config.env
timestamp=$(date -d "today" +"%Y%m%d%H%M%S")
start_time=$(date +%s)

printf "\nStarted running runConsoleDAQ.sh\n"
printf "Date:  $(date)\n"
printf "Host:  $(hostname -s)\n"
printf "User:  $(whoami)\n"

if [ ! -f ${daq_setup_params} ]; then
  printf "\nWarning: ${daq_setup_params} is not found!\nUsing reasonable defaults.\n"; else
  printf "Found ${daq_setup_params} found! Sourcing it.\n"
  printf "#-----------------------file contents begin----------------------\n"
  cat ${daq_setup_params}
  printf "#-----------------------file contents end------------------------\n"  
  source <(sed -E -n 's/[^#]+/export &/ p' ${daq_setup_params})
fi

logs_file_pattern="${temp_dir}/*-$(hostname -s)-*"

session_nane=$(hostname -s)-$(whoami)
script_full_path=$(readlink --canonicalize-existing $BASH_SOURCE)
script_start_dir=$(dirname ${script_full_path})
daq_setup_script_path=${script_start_dir}/${daq_setup_script_name}

printf "\n\nSelected components: ${selected_components}\n"
printf "Selected run config: ${selected_config}\n"
printf "Selected boot config: ${selected_boot_config}\n"

rc_success=1 
rc_failure=0
user_prompts=true

function ask_for_user_input(){
printf "\n\n$1 "
while $user_prompts; do
    read answer
    case $answer in
        [Yy]* ) return $rc_success;;
        [Tt]* ) return $rc_failure;;
        * ) echo "Press \"y\" to continue, or \"t\" to terminate.";;
    esac
done

}

function goto(){
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}

if  ask_for_user_input "Continue?"; then exit 0; fi
  
function create_bashrc() {
local bash_rc=$(mktemp -u -p ${temp_dir}  -t bashrc.XXXXXXXXXXXX)
cat > ${bash_rc} <<END
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$HOME/bin
alias ll="ls -lrth"

function pmt_log_tail(){ 
  tail -100 \$(ls -t ${temp_dir}/pmt/pmt-*.log |head -1)
}

function report_daq_status(){
status.sh | grep String
}

export PS1="\\$ "
END
echo ${bash_rc}
}

function create_tmuxtheme() {
local tmux_theme=$(mktemp -u -p ${temp_dir}  -t tmuxtheme.XXXXXXXXXXXX)
cat > ${tmux_theme} <<END
tm_color_active=colour32
tm_color_inactive=colour241
tm_color_feature=colour206
tm_color_music=colour215
tm_active_border_color=colour240
set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5
set-option -g status-fg \$tm_color_active
set-option -g status-bg default
set-option -g status-attr default
set-window-option -g window-status-fg \$tm_color_inactive
set-window-option -g window-status-bg default
set -g window-status-format "#I #W"
set-window-option -g window-status-current-fg \$tm_color_active
set-window-option -g window-status-current-bg default
set-window-option -g  window-status-current-format "#[bold]#I #W"
set-option -g pane-border-fg \$tm_color_inactive
set-option -g pane-active-border-fg \$tm_active_border_color
set-option -g message-bg default
set-option -g message-fg \$tm_color_active
set-option -g display-panes-active-colour \$tm_color_active
set-option -g display-panes-colour \$tm_color_inactive
set-window-option -g clock-mode-colour \$tm_color_active
tm_date="#[fg=\$tm_color_inactive] %R %d %b"
tm_host="#[fg=\$tm_color_feature,bold]#h"
tm_session_name="#[fg=\$tm_color_feature,bold]#S"
set -g status-left "\$tm_session_name"
set -g status-right "\$tm_date \$tm_host"
END
echo ${tmux_theme}
}

function create_tmuxconf() {
export TERM="xterm-color"
local tmux_conf=$(mktemp -u -p ${temp_dir}  -t tmuxconf.XXXXXXXXXXXX)
tmux_theme=$(create_tmuxtheme)
cat > ${tmux_conf} <<END
set -g history-limit 1000
setw -g automatic-rename off
setw -g allow-rename off
set -g renumber-windows on
unbind C-b
set -g prefix C-a
bind C-a send-prefix
bind-key a send-prefix
setw -g aggressive-resize on
set -g base-index 1
setw -g pane-base-index 1
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind -n M-Left select-pane -L 
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D
bind -r C-h select-window -t :-
bind -r C-l select-window -t :+
bind -n C-Left  select-window -t :-
bind -n C-Right select-window -t :+

source ${tmux_theme}
END
echo ${tmux_conf}
}

bash_rc=$(create_bashrc)
exec_bash="/usr/bin/env -i  HOME=\"${HOME}\" HOSTNAME=\"${HOSTNAME}\" USER=\"${USER}\" DISPLAY=\"${DISPLAY}\"  /usr/bin/bash --rcfile ${bash_rc}"
#exec_bash="/usr/bin/bash --rcfile ${bash_rc}"

tmux_conf=$(create_tmuxconf)
exec_tmux="/usr/bin/env -i  HOME=\"${HOME}\" HOSTNAME=\"${HOSTNAME}\" USER=\"${USER}\" DISPLAY=\"${DISPLAY}\" /usr/bin/tmux -u -f ${tmux_conf}"
#exec_tmux="/usr/bin/tmux -u -f ${tmux_conf}"

exec_tmux_noenv="/usr/bin/tmux -u -f ${tmux_conf}"

function pop_xfce4_terminal(){
  xfce4-terminal \
    -T tmux-${session_nane} \
    --geometry 160x60+50+50 \
    --working-directory=${HOME} \
    -e "${exec_tmux_noenv} attach -t ${session_nane}" &
}

function pop_mate_terminal(){
  mate-terminal \
    -t tmux-${session_nane} \
    --geometry 160x60+50+50 \
    --working-directory=${HOME} \
    -e "${exec_tmux_noenv} attach -t ${session_nane}" &
}




#printf "bash:    ${exec_bash}\n"
printf "TMUX session: ${session_nane}\n"

#tmux windows
daq_session="-t ${session_nane}" 
main_window="-t ${session_nane}:1"
interface_pane="-t ${session_nane}:1.1"
control_pane="-t ${session_nane}:1.2"
trace_pane="-t ${session_nane}:1.3"
trace_window="-t ${session_nane}:2"
conf_window="-t ${session_nane}:3"
log_window="-t ${session_nane}:4"

${exec_tmux} kill-session ${daq_session}

${exec_tmux} new-session -x 160 -y 60 -d -n main -s ${session_nane} "${exec_bash}"


if [ -z "${NOXWINDOW+xxx}" ]; then
  pop_mate_terminal 
else
  echo "Login to $(hostname -s) as $(whoami) and run the command below."

  echo "${exec_tmux_noenv} attach -t ${session_nane}" 
  echo "${exec_tmux_noenv} attach -t ${session_nane}" > ${HOME}/tas.sh
  chmod a+x ${HOME}/tas.sh
  if  ask_for_user_input "Continue?"; then exit 0; fi
fi

printf "\nInitializing...takes around 30 seconds...\n"
${exec_tmux} select-window ${main_window}
${exec_tmux} split-window -v "${exec_bash}"
${exec_tmux} split-window -v "${exec_bash}"

${exec_tmux} send-keys ${interface_pane} "source ${daq_setup_script_path}"  C-m
${exec_tmux} send-keys ${interface_pane} "load_trace"  C-m
${exec_tmux} send-keys ${interface_pane} "config_trace"  C-m
${exec_tmux} send-keys ${interface_pane} "treset"  C-m
sleep 1s

${exec_tmux} send-keys ${control_pane} "source ${daq_setup_script_path}" C-m

${exec_tmux} send-keys ${trace_pane} "source ${daq_setup_script_path}" C-m
${exec_tmux} send-keys ${trace_pane} "load_trace"  C-m

${exec_tmux} select-pane ${control_pane}  

${exec_tmux} new-window ${daq_session} -n TRACE "${exec_bash}"
${exec_tmux} send-keys  ${trace_window} "source ${daq_setup_script_path}" C-m
${exec_tmux} send-keys  ${trace_window} "load_trace; tlvls" C-m

${exec_tmux} send-keys ${interface_pane} "DAQInterface "  C-m

${exec_tmux} new-window  ${daq_session} -n config "${exec_bash}"
${exec_tmux} send-keys   ${conf_window} "echo tmux help && cat ${tmux_conf}"  C-m

${exec_tmux} new-window  ${daq_session} -n pmtlog "${exec_bash}"
#${exec_tmux} list-windows  ${daq_session}
${exec_tmux} select-window ${trace_window}
sleep 10s # sleep a bit to allow daqinterface to start

daq_interface_port=$(ps aux | grep "python.*daqinterface.py" | grep -v grep | awk '{print $NF}' | sort | tail -1)
#daq_interface_port=5720
echo "DAQINTERFACE_PORT=${daq_interface_port}"

${exec_tmux} send-keys ${control_pane} "export DAQINTERFACE_PORT=${daq_interface_port}" C-m
${exec_tmux} send-keys ${trace_pane} "export DAQINTERFACE_PORT=${daq_interface_port}" C-m
${exec_tmux} send-keys ${trace_window} "export DAQINTERFACE_PORT=${daq_interface_port}" C-m
${exec_tmux} send-keys ${log_window} "export DAQINTERFACE_PORT=${daq_interface_port}" C-m

${exec_tmux} select-window ${main_window}
${exec_tmux} send-keys ${control_pane} "status.sh" C-m
sleep 2s

${exec_tmux} select-window ${trace_window}
${exec_tmux} send-keys  ${trace_window} "tshow -F" C-m
sleep 3s

${exec_tmux} select-window ${main_window}
${exec_tmux} send-keys ${control_pane} "listdaqcomps.sh" C-m
${exec_tmux} send-keys ${control_pane} "setdaqcomps.sh ${selected_components} " C-m
sleep 1s

printf "\nBooting...takes around 30 seconds...\n"
${exec_tmux} send-keys ${control_pane} "send_transition.sh boot ${selected_boot_config}" C-m
${exec_tmux} send-keys ${trace_pane} "while /bin/true; do report_daq_status; sleep 0.5s; done" C-m

sleep 3s
${exec_tmux} select-window ${log_window}
${exec_tmux} send-keys ${log_window} "for i in \$(seq 1 20); do sleep 1s ; pmt_log_tail;  echo \$i; done" C-m
sleep 2s

daq_logs=$(for d in  $(ls -d ${logs_file_pattern}); do echo $d/$(ls -t $d|head -1);done)
for logfile in $daq_logs; do
  ${exec_tmux} new-window  ${daq_session} -n proc "tail -100f $logfile"
  sleep 1s
done;
sleep 1s

${exec_tmux} select-window ${log_window}
sleep 23s

if ask_for_user_input "Configure?"; then goto terminate_and_cleanup; fi
printf "\nConfiguring...takes around 30 seconds...\n"
${exec_tmux} send-keys ${log_window} "tail -60f $(ls -t ${temp_dir}/pmt/pmt-*.log |head -1)" C-m
${exec_tmux} send-keys ${control_pane} "send_transition.sh config ${selected_config}" C-m

sleep 5s 

if  ask_for_user_input "Run?"; then goto terminate_and_cleanup; fi
printf "\nRuning...\n"
${exec_tmux} send-keys ${control_pane} "send_transition.sh start" C-m
sleep 1s
${exec_tmux} select-window ${main_window}
sleep 1s

${exec_tmux} new-window  ${daq_session} -n data "while /bin/true; do ls -lt ${temp_dir}/*.root |head -1 ; sleep 1s;done;"
sleep 2s
${exec_tmux} select-window ${log_window}
sleep 3s
${exec_tmux} select-window ${main_window}
sleep 2s
${exec_tmux} select-window ${log_window}


if  ask_for_user_input "Stop?"; then goto terminate_and_cleanup; fi
goto terminate_and_cleanup

terminate_and_cleanup:
printf "\nStopping run...takes around 30 seconds...\n"
${exec_tmux} send-keys ${control_pane} "send_transition.sh stop" C-m
sleep 20s
${exec_tmux} send-keys ${control_pane} "send_transition.sh terminate" C-m
sleep 2s
${exec_tmux} send-keys ${control_pane} "status.sh" C-m
sleep 2s
${exec_tmux} send-keys ${interface_pane} C-c
${exec_tmux} send-keys ${control_pane} "status.sh" C-m
${exec_tmux} send-keys ${trace_window} C-c
${exec_tmux} send-keys ${trace_pane} C-c

rm -r  ${bash_rc} ${tmux_conf} ${tmux_theme}


kill -INT  $(ps aux |grep -v grep |egrep -e "^$(whoami).*art -c.*" |awk '{print $2}') >/dev/null 2>&1
sleep 2s
kill -TERM $(ps aux |grep -v grep |egrep -e "^$(whoami).*art -c.*" |awk '{print $2}') >/dev/null 2>&1

ipcrm -a >/dev/null 2>&1

printf "Running time: $(( $(date +%s) -start_time )) seconds\n"
printf "Date:  $(date)\n"
printf "\nFinished running runConsoleDAQ.sh\n"

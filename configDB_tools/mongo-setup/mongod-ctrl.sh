#!/bin/bash

rc_success=0
rc_failure=1

unset http_proxy
unset https_proxy

my_artdaq_database_install_path=/scratch_local/artdaq_database_new/

source ${my_artdaq_database_install_path}/icarus_v4x_db/mongod.env

if [ -z ${MONGOD_DATABASE_NAME+x} ]; then
        echo "Error: MONGOD_DATABASE_NAME is unset. Aborting."; exit $rc_failure;  else
        echo "Info: MONGOD_DATABASE_NAME is set to '$MONGOD_DATABASE_NAME'";
fi

if [ -z ${MONGOD_BASE_DIR+x} ]; then
        echo "Error: MONGOD_BASE_DIR is unset. Aborting."; exit $rc_failure;  else
        echo "Info: MONGOD_BASE_DIR is set to '$MONGOD_BASE_DIR'";
fi

MONGOD_ENV_FILE=${MONGOD_BASE_DIR}/${MONGOD_DATABASE_NAME}/mongod.env

if [ ! -f ${MONGOD_ENV_FILE} ]; then
        echo "Error: ${MONGOD_ENV_FILE} not found! Aborting."; exit $rc_failure ; else
        source ${MONGOD_ENV_FILE}
fi

if [ -z ${MONGOD_UPS_VER+x} ]; then
        echo "Error: MONGOD_UPS_VER is unset. Aborting.";exit $rc_failure;  else
        echo "Info: MONGOD_UPS_VER is set to '$MONGOD_UPS_VER'";
fi

if [ -z ${MONGOD_UPS_QUAL+x} ]; then
        echo "Error: MONGOD_UPS_QUAL is unset. Aborting.";exit $rc_failure;  else
        echo "Info: MONGOD_UPS_QUAL is set to '$MONGOD_UPS_QUAL'";
fi

if [ -z ${MONGOD_PORT+x} ]; then
        echo "Error: MONGOD_PORT is unset. Aborting.";exit $rc_failure;  else
        echo "Info: MONGOD_PORT is set to '$MONGOD_PORT'";
fi

if ! [[ ${MONGOD_PORT} == ?(-)+([0-9]) ]]; then
	echo "Error: MONGOD_PORT is Not a number"; exit $rc_failure;
fi


if [ -z ${MONGOD_BINDIP+x} ]; then
        MONGOD_BINDIP="$(/sbin/ip addr |grep -E -o "inet 131\.([0-9]{1,3}[\.]){2}[0-9]{1,3}"|cut -d" " -f2)"
	[[ "$MONGOD_BINDIP" != "" ]] && MONGOD_BINDIP=",${MONGOD_BINDIP}"
fi


MONGOD_HOSTNAME=$(hostname -s)

source /software/products/setup
source ${my_artdaq_database_install_path}/initd_functions
unsetup_all  >/dev/null 2>&1
setup mongodb ${MONGOD_UPS_VER} -q ${MONGOD_UPS_QUAL}
RC=$?
if [ $RC -ne 0 ]; then
	echo "Error: Failed setting mongodb. Aborting. "; exit $rc_failure;
fi

mongod_bin=$(command -v mongod)
if [ -z "$mongo_bin" ] &&  [ ! -x ${mongod_bin} ]; then
	echo "Error: mongodb was not setup. Aborting."; exit $rc_failure; else
        echo "Info: mongod found: '${mongod_bin}'";
fi

MONGOD_PID=${MONGOD_BASE_DIR}/${MONGOD_DATABASE_NAME}/var/tmp/mongod-${MONGOD_HOSTNAME}.pid

MONGOD_DIR=$(dirname ${MONGOD_PID})

if [ ! -d ${MONGOD_DIR} ]; then
	mkdir -p ${MONGOD_DIR} >/dev/null 2>&1
fi

MONGOD_DATA_DIR=$(dirname ${MONGOD_ENV_FILE})/data-${MONGOD_HOSTNAME}

if [ ! -d ${MONGOD_DATA_DIR} ]; then
        mkdir -p ${MONGOD_DATA_DIR} >/dev/null 2>&1
fi

MONGOD_LOGS_DIR=$(dirname ${MONGOD_ENV_FILE})/logs-${MONGOD_HOSTNAME}

if [ ! -d ${MONGOD_LOGS_DIR} ]; then
        mkdir -p ${MONGOD_LOGS_DIR} >/dev/null 2>&1
fi

MONGOD_LOG=${MONGOD_LOGS_DIR}/mongod-$(date -d "today" +"%Y%m%d%H%M").log

MONGOD_KEY=${MONGOD_BASE_DIR}/${MONGOD_DATABASE_NAME}/mongod.keyfile

if [ ! -f ${MONGOD_KEY} ]; then
   echo "Warning: Mongod key file not found. Generating a new key file."
   openssl rand -base64 756 > ${MONGOD_KEY}
   chmod 400 ${MONGOD_KEY}
fi

echo "Info: logfile=${MONGOD_LOG}"

MONGOD_LOCK=${MONGOD_DIR}/mongod-${MONGOD_HOSTNAME}.lock



start()
{
#  ulimit -f unlimited
#  ulimit -t unlimited
#  ulimit -v unlimited
#  ulimit -n 64000
#  ulimit -m unlimited
#  ulimit -u 64000

  echo -n $"Starting mongod: "

  ${MONGOD_NUMA_CTRL} ${mongod_bin}          \
        --dbpath=${MONGOD_DATA_DIR}          \
        --pidfilepath=${MONGOD_PID}          \
        --port=${MONGOD_PORT}                \
        --wiredTigerCacheSizeGB=1            \
        --bind_ip=127.0.0.1${MONGOD_BINDIP}  \
        --logpath=${MONGOD_LOG}              \
        --logappend                          \
        --fork                               \
        --replSet rs0                        \
        --keyFile ${MONGOD_KEY}


  RETVAL=$?
  echo
  [ $RETVAL -eq 0 ] && touch ${MONGOD_LOCK}
}

start_configure()
{
#  ulimit -f unlimited
#  ulimit -t unlimited
#  ulimit -v unlimited
#  ulimit -n 64000
#  ulimit -m unlimited
#  ulimit -u 64000

  echo -n $"Configuring mongod: "

  ${MONGOD_NUMA_CTRL} ${mongod_bin}          \
        --dbpath=${MONGOD_DATA_DIR}          \
        --pidfilepath=${MONGOD_PID}          \
        --port=${MONGOD_PORT}                \
        --wiredTigerCacheSizeGB=1            \
        --bind_ip=127.0.0.1                  \
        --logpath=${MONGOD_LOG}              \
        --logappend                          \
        --fork

  RETVAL=$?
  echo
  [ $RETVAL -eq 0 ] && touch ${MONGOD_LOCK}
}

start_arbiter()
{
#  ulimit -f unlimited
#  ulimit -t unlimited
#  ulimit -v unlimited
#  ulimit -n 64000
#  ulimit -m unlimited
#  ulimit -u 64000

  echo -n $"Starting mongo arbiter: "


  if [ ! -d ${MONGOD_DATA_DIR}-arb ]; then
        mkdir -p ${MONGOD_DATA_DIR}-arb >/dev/null 2>&1
  fi

  ${MONGOD_NUMA_CTRL} ${mongod_bin}             \
        --dbpath=${MONGOD_DATA_DIR}-arb         \
        --pidfilepath=${MONGOD_PID%.*}-arb.pid  \
        --port=$(( ${MONGOD_PORT} + 1 ))        \
        --bind_ip=127.0.0.1${MONGOD_BINDIP}     \
        --wiredTigerCacheSizeGB=1               \
        --logpath=${MONGOD_LOG%.*}-arb.log      \
        --logappend                             \
        --fork                                  \
        --replSet rs0                           \
        --keyFile ${MONGOD_KEY}


  RETVAL=$?
  echo
  [ $RETVAL -eq 0 ] && touch ${MONGOD_LOCK%.*}-arb.lock
}

stop()
{
  echo -n $"Stopping mongod: "
  _killproc ${MONGOD_PID} ${mongod_bin}
  RETVAL=$?
  echo
  [ $RETVAL -eq 0 ] && rm -f ${MONGOD_LOCK}
}

stop_arbiter()
{
  echo -n $"Stopping mongo arbiter: "
  _killproc ${MONGOD_PID%.*}-arb.pid ${mongod_bin}
  RETVAL=$?
  echo
  [ $RETVAL -eq 0 ] && rm -f ${MONGOD_LOCK%.*}-arb.lock
}

restart () {
        stop
        start
}

_killproc()
{
  local pid_file=$1
  local procname=$2
  local -i delay=300
  local -i duration=10
  local pid=`pidofproc -p "${pid_file}" ${procname}`

  kill -TERM $pid >/dev/null 2>&1
  usleep 100000
  local -i x=0
  while [ $x -le $delay ] && checkpid $pid; do
    sleep $duration
    x=$(( $x + $duration))
  done

  kill -KILL $pid >/dev/null 2>&1
  usleep 100000

  checkpid $pid # returns 0 only if the process exists
  local RC=$?
  [ "$RC" -eq 0 ] && failure "${procname} shutdown" || rm -f "${pid_file}"; success "${procname} shutdown"
  RC=$((! $RC)) # invert return code so we return 0 when process is dead.
  return $RC
}


RETVAL=0

case "$1" in
  start)
    start
    ;;
  start_arbiter)
    start_arbiter
    ;;
  configure)
    start_configure
    ;;
  stop)
    stop
    ;;
  stop_arbiter)
    stop_arbiter
    ;;
  restart)
    restart
    ;;
  status)
    status -p ${MONGOD_PID} ${mongod_bin}
    RETVAL=$?
    ;;
  status_arbiter)
    status -p ${MONGOD_PID%.*}-arb.pid ${mongod_bin}
    RETVAL=$?
    ;;
  *)
    echo "Usage: $0 {start|stop|status|restart}"
    RETVAL=1
esac

exit $RETVAL


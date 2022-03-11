#!/bin/bash

experiment=changeme

#crontab
#10 22 * * 0  pduser /scratch_local/artdaq_database/backup_artdaq_database.sh <database> >>/scratch_local/artdaq_database/database-backup.log 2>&1
#examples:
#10 01 * * * /scratch_local/artdaq_database/backup_artdaq_database.sh ${experiment}_v4x_db  >>/scratch_local/artdaq_database/database-backup-${experiment}_v4x_db.log 2>&1
#30 01 * * * /scratch_local/artdaq_database/backup_artdaq_database.sh ${experiment}_v4x_db >>/scratch_local/artdaq_database/database-backup-${experiment}_v4x_db.log 2>&1

this_daq_password="changeme"
this_admin_password="changeme$this_daq_password"


rc_success=0
rc_failure=1

echo "Backup started: $(date)"
echo "Running: $0 $@"

MONGOD_BASE_DIR=$(dirname $(readlink -f "$0") )

MONGOD_DATABASE_NAME=$1

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

WEBEDITOR_ENV_FILE=${MONGOD_BASE_DIR}/${MONGOD_DATABASE_NAME}/webconfigeditor.env

if [ ! -f ${WEBEDITOR_ENV_FILE} ]; then
        echo "Error: ${WEBEDITOR_ENV_FILE} not found! Aborting."; exit $rc_failure ; else
        source ${WEBEDITOR_ENV_FILE}
fi

if [ -z ${WEBEDITOR_UPS_VER+x} ]; then
        echo "Error: WEBEDITOR_UPS_VER is unset. Aborting.";exit $rc_failure;  else
        echo "Info: WEBEDITOR_UPS_VER is set to '$WEBEDITOR_UPS_VER'";
fi

source /software/products/setup
setup artdaq_database v1_04_89 -q "e19:py2:s97:prof"
RC=$?
if [ $RC -ne 0 ]; then
        echo "Error: Failed setting artdaq_database. Aborting. "; exit $rc_failure;
fi

ups active |grep artdaq_database

conftool_bin=$(command -v conftool.py)
if [ -z "$node_bin" ] &&  [ ! -x ${node_bin} ]; then
        echo "Error: conftool.py was not setup. Aborting."; exit $rc_failure; else
        echo "Info: conftool.py found: '${conftool_bin}'";
fi


DBBACKUP_DIR="${MONGOD_BASE_DIR}/${MONGOD_DATABASE_NAME}/backup/$(date +%Y%m%d%H%M%S)"
DBBACKUP_LIST="${experiment}_db ${experiment}_db_archive"

#exit $rc_failure
unset http_proxy
unset https_proxy

echo "DATABASE_NAME is ${MONGOD_DATABASE_NAME}"
for dbname in ${DBBACKUP_LIST};
do
  export ARTDAQ_DATABASE_URI="mongodb://changeme"
  mkdir -p ${DBBACKUP_DIR}/${dbname}
  cd $DBBACKUP_DIR/$dbname
  echo "Backing up ${ARTDAQ_DATABASE_URI} to ${DBBACKUP_DIR}/${dbname}"

  [[ $dbname == *_db  ]] && conftool.py exportDatabase
  mongodump --uri=$ARTDAQ_DATABASE_URI --gzip
done

[[ ! -d /software/backup/${experiment}_v4x_db ]] && mkdir -p /software/backup/${experiment}_v4x_db

rsync -av /scratch_local/artdaq_database/${experiment}_v4x_db/backup /software/backup/${experiment}_v4x_db/
echo  "Backup ended: $(date)"
echo


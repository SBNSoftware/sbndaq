#----------------------------------------------------------------
# Current default configuration parameters, which can be 
# overriden in $HOME/artdaq_database.env file if it exits. 
# Main program starts at the bottom of this file.
#----------------------------------------------------------------
ARTDAQ_UPS_QUAL="e15:prof:s64"
ARTDAQ_DB_UPS_VER=v1_04_46
WEBEDITOR_UPS_VER=v1_00_14

ARTDAQ_BASE_DIR=/tmp/artdaq
ARTDAQ_DB_NAME=cern_pddaq_v3x_db

#----------------------------------------------------------------
# Optional configuration parameters, which can be 
# overriden in $HOME/artdaq_database.env file if it exits. 
# Main program starts at the bottom of this file.
#----------------------------------------------------------------

MONGOD_PORT=27037
WEBEDITOR_BASE_PORT=8880

INACTIVE_DATABASES="cern_pddaq_v2_db cern_pddaq_v3_db"

ARTDAQ_DB_PULLPRODUCTS="slf7 artdaq_database-${ARTDAQ_DB_UPS_VER} $(echo $ARTDAQ_UPS_QUAL | cut -d":" -f3 )-$(echo $ARTDAQ_UPS_QUAL | cut -d":" -f1 ) $(echo $ARTDAQ_UPS_QUAL | cut -d":" -f2 )"

#----------------------------------------------------------------
# Implementaion
# Main program starts at the bottom of this file.
#----------------------------------------------------------------

TMP_PAR_LIST=(${ARTDAQ_DB_PULLPRODUCTS})

if [[ "${TMP_PAR_LIST[0]}" == "slf7" ]]; then
  this_ups_flavor="Linux64bit+3.10-2.17"
else
  this_ups_flavor="Linux64bit+2.6-2.12"
fi
 
ARTDAQ_DB_MANIFEST="artdaq_database-$(echo $ARTDAQ_DB_UPS_VER|sed 's/_/./g'|sed -e 's/^v//')-${this_ups_flavor}-${TMP_PAR_LIST[2]}-${TMP_PAR_LIST[3]}_MANIFEST.txt"

ARTDAQ_DB_MANIFEST_RAW="artdaq_database-build-${this_ups_flavor}-${TMP_PAR_LIST[2]}-${TMP_PAR_LIST[3]}_MANIFEST.txt"

#ARTDAQ_DB_MANIFEST="artdaq_database-build-Linux64bit+3.10-2.17-s50-e14-prof_MANIFEST.txt"
ARTDAQ_DB_MANIFESTURL="https://cdcvs.fnal.gov/redmine/projects/artdaq-utilities/repository/database/revisions/${ARTDAQ_DB_UPS_VER}/raw/built-in/manifests/${ARTDAQ_DB_MANIFEST_RAW}"



WEBEDITOR_UPS_QUAL=${ARTDAQ_UPS_QUAL}
ARTDAQ_DB_UPS_QUAL=${ARTDAQ_UPS_QUAL}

required_tools_list=(wget tar bzip2 gunzip sed find id basename crontab cat cut uniq tee)

#----------------------------------------------------------------
rc_success=0 
rc_failure=1
user_prompts=true

timestamp=$(date -d "today" +"%Y%m%d%H%M%S")
dblist=(${INACTIVE_DATABASES} ${ARTDAQ_DB_NAME})

run_as_user=$(id -u -n )
run_as_group=$(id -g -n ${run_as_user})

source ${PRODUCTS_BASE_DIR}/setup
unsetup_all  >/dev/null 2>&1 

function have_artdaq_database() {
#----------------------------------------------------------------
#----------------------------------------------------------------
printf "\nInfo: Verifying availability of artdaq_database\n"
#----------------------------------------------------------------

if [ -z ${ARTDAQ_DB_NAME+x} ]; then
        printf "Error: ARTDAQ_DB_NAME is unset. Aborting.\n";return $rc_failure;  else
        printf "Info: ARTDAQ_DB_NAME is set to '${ARTDAQ_DB_NAME}'\n"
fi

if [ -z ${ARTDAQ_DB_UPS_VER+x} ]; then
        printf "Error: ARTDAQ_DB_UPS_VER is unset. Aborting.\n";return $rc_failure;  else
        printf "Info: ARTDAQ_DB_UPS_VER is set to '${ARTDAQ_DB_UPS_VER}'\n"
fi

if [ -z ${ARTDAQ_DB_UPS_QUAL+x} ]; then
        printf "Error: ARTDAQ_DB_UPS_QUAL is unset. Aborting.\n";return $rc_failure;  else
        printf "Info: ARTDAQ_DB_UPS_QUAL is set to '${ARTDAQ_DB_UPS_QUAL}'\n"
fi

setup artdaq_database ${ARTDAQ_DB_UPS_VER} -q ${ARTDAQ_DB_UPS_QUAL} 
RC=$?
if [ $RC -ne 0 ]; then
	printf "Error: Failed setting artdaq_database. Aborting.\n"; return $rc_failure;
fi

conftool_bin=$(command -v conftool)
if [ -z "conftool_bin" ] &&  [ ! -x ${conftool_bin} ]; then
	printf "Error: conftool was not setup. Aborting.\n"; return $rc_failure; else
        printf "Info: conftool found: '${conftool_bin}'\n"
fi

return $rc_success
}

function have_artdaq_node_server(){
#----------------------------------------------------------------
#----------------------------------------------------------------
printf "\nInfo: Verifying availability of artdaq_node_server\n"
#----------------------------------------------------------------

if [ -z ${WEBEDITOR_UPS_VER+x} ]; then
        printf "Error: WEBEDITOR_UPS_VER is unset. Aborting.\n";return $rc_failure;  else
        printf "Info: WEBEDITOR_UPS_VER is set to '${WEBEDITOR_UPS_VER}'\n"
fi

if [ -z ${WEBEDITOR_UPS_QUAL+x} ]; then
        printf "Error: WEBEDITOR_UPS_QUAL is unset. Aborting.\n";return $rc_failure;  else
        printf "Info: WEBEDITOR_UPS_QUAL is set to '${WEBEDITOR_UPS_QUAL}'\n"
fi

setup artdaq_node_server ${WEBEDITOR_UPS_VER} -q ${WEBEDITOR_UPS_QUAL} 
RC=$?
if [ $RC -ne 0 ]; then
	printf "Error: Failed setting artdaq_node_server. Aborting.\n"; return $rc_failure;
fi

node_bin=$(command -v node)
if [ -z "$node_bin" ] &&  [ ! -x ${node_bin} ]; then
	printf "Error: node was not setup. Aborting.\n"; return $rc_failure; else
        printf "Info: node found: '${node_bin}'\n"
fi

return $rc_success
}

function disable_services(){
local disable_services_file="/tmp/disable_services-${timestamp}.sh"
#----------------------------------------------------------------
#----------------------------------------------------------------
printf "\nInfo: Creating ${disable_services_file}\n"
#----------------------------------------------------------------

echo "#!/bin/bash" > ${disable_services_file}
for db in ${dblist[@]}
  do for action in stop status disable 
    do for service in webconfigeditor mongodbserver
      do echo systemctl ${action} ${service}@${db}.service >> ${disable_services_file}
    done
  done
done
chmod a+x  ${disable_services_file}
printf "#-----------------------file contents begin----------------------\n"
cat ${disable_services_file}
printf "#-----------------------file contents end------------------------\n"

printf "\nInfo: Open another shell and run ${disable_services_file} as root.\n"

while $user_prompts; do
    read -p "Did you run ${disable_services_file} as root?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) return $rc_failure;;
        * ) echo "Please answer yes or no.";;
    esac
done

return $rc_success
}

function create_database_dirs(){
#----------------------------------------------------------------
#----------------------------------------------------------------
printf "\nInfo: Configuring artdaq_database and artdaq_node_server\n"
#----------------------------------------------------------------
if [ -d ${DATABASE_BASE_DIR} ]; then
  mv ${DATABASE_BASE_DIR} ${DATABASE_BASE_DIR}.${timestamp}
  RC=$?
  if [ $RC -ne 0 ]; then
    printf "Error: Failed moving ${DATABASE_BASE_DIR} to ${DATABASE_BASE_DIR}.${timestamp}  Aborting.\n"; return $rc_failure;else
    printf "Info: Moved ${DATABASE_BASE_DIR} to ${DATABASE_BASE_DIR}.${timestamp}\n"
  fi
fi

mkdir -p ${DATABASE_BASE_DIR}
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed creating ${DATABASE_BASE_DIR}. Aborting.\n"; return $rc_failure; else
    printf "Info: Created ${DATABASE_BASE_DIR}"
fi

mkdir -p ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/{systemd,var/tmp,logs,data,webconfigeditor}
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed creating subdirectories in ${DATABASE_BASE_DIR}. Aborting.\n"; return $rc_failure; else
    printf "Info: Created subdirectories in ${DATABASE_BASE_DIR}:\n"
    printf "$(find ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME} -type d -print)\n"
fi

return $rc_success
}


function create_database_configs(){
#----------------------------------------------------------------
#-----------------------mongod.env-------------------------------
filename="${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/mongod.env"
#----------------------------------------------------------------
touch ${filename}
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed creating ${filename}. Aborting.\n"; return $rc_failure;
fi
cat <<EOF > ${filename}
MONGOD_DATABASE_NAME=${ARTDAQ_DB_NAME}
MONGOD_BASE_DIR=${DATABASE_BASE_DIR}
MONGOD_PORT=${MONGOD_PORT}
MONGOD_UPS_VER=v3_4_6c
MONGOD_UPS_QUAL="e15:prof"
#MONGOD_NUMA_CTRL="numactl --interleave=all"
EOF
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed creating ${filename}. Aborting.\n"; return $rc_failure; else
    printf "\nInfo: Created  ${filename}\n"
    printf "#-----------------------file contents begin----------------------\n"
    cat ${filename}
    printf "#-----------------------file contents end------------------------\n"
fi

#----------------------------------------------------------------
#-----------------------webconfigeditor.env----------------------
filename="${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/webconfigeditor.env"
#----------------------------------------------------------------
touch ${filename}
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed creating ${filename}. Aborting.\n"; return $rc_failure;
fi

cat <<EOF > ${filename}
MONGOD_DATABASE_NAME=${ARTDAQ_DB_NAME}
MONGOD_BASE_DIR=${DATABASE_BASE_DIR}
MONGOD_PORT=${MONGOD_PORT}
WEBEDITOR_BASE_PORT=${WEBEDITOR_BASE_PORT}
WEBEDITOR_UPS_VER=${WEBEDITOR_UPS_VER}
WEBEDITOR_UPS_QUAL=${WEBEDITOR_UPS_QUAL}
EOF
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed creating ${filename}. Aborting.\n"; return $rc_failure; else
    printf "\nInfo: Created  ${filename}\n"
    printf "#-----------------------file contents begin----------------------\n"
    cat ${filename}
    printf "#-----------------------file contents end------------------------\n"
fi

return $rc_success
}

function create_database_services(){
printf "Info: Configuring artdaq_database services to run using the following credentials:\n"
printf "\t\tuser=${run_as_user}, group=${run_as_group}\n";

#----------------------------------------------------------------
#-----------------------webconfigeditor@.service-----------------
filename="${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/systemd/webconfigeditor@${ARTDAQ_DB_NAME}.service"
#----------------------------------------------------------------
touch ${filename}
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed creating ${filename}. Aborting.\n"; return $rc_failure;
fi
cat <<EOF > ${filename}
# Quick HowTo:
# 1. Copy this file to /etc/systemd/system/webconfigeditor@${ARTDAQ_DB_NAME}.service
# 2. Run "systemctl daemon-reload"
# 3. Run "systemctl enable webconfigeditor@${ARTDAQ_DB_NAME}.service"
# 5. Run "systemctl start webconfigeditor@${ARTDAQ_DB_NAME}.service"
# 
# 6. Check status "systemctl status webconfigeditor@${ARTDAQ_DB_NAME}.service"
# 7. Stop "systemctl stop webconfigeditor@${ARTDAQ_DB_NAME}.service"

[Unit]
Description=WebConfigEditor service
After=syslog.target network.target

[Service]
Type=forking
User=${run_as_user}
Group=${run_as_group}

EnvironmentFile=${DATABASE_BASE_DIR}/%i/webconfigeditor.env
#Environment=NODE_ENV=production
#ExecStartPre=${DATABASE_BASE_DIR}/webconfigeditor-ctrl.sh clean 
ExecStart=${DATABASE_BASE_DIR}/webconfigeditor-ctrl.sh start 
ExecStop=${DATABASE_BASE_DIR}/webconfigeditor-ctrl.sh stop 
#ExecStopPost=${DATABASE_BASE_DIR}/webconfigeditor-ctrl.sh clean 
PIDFile=${DATABASE_BASE_DIR}/%i/var/tmp/webconfigeditor.pid


Restart=always
RestartSec=120

[Install]
WantedBy=multi-user.target

EOF
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed creating ${filename}. Aborting.\n"; return $rc_failure; else
    printf "\nInfo: Created  ${filename}\n"
    printf "#-----------------------file contents begin----------------------\n"
    cat ${filename}
    printf "#-----------------------file contents end------------------------\n"
fi


#----------------------------------------------------------------
#-----------------------mongodbserver@.service-----------------
filename="${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/systemd/mongodbserver@${ARTDAQ_DB_NAME}.service"
#----------------------------------------------------------------
touch ${filename}
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed creating ${filename}. Aborting.\n"; return $rc_failure;
fi
cat <<EOF > ${filename}
# The mongodbserver service unit file
#
# Quick HowTo:
# 1. Copy this file to /etc/systemd/system/mongodbserver@${ARTDAQ_DB_NAME}.service
# 2. Run "systemctl daemon-reload"
# 3. Run "systemctl enable mongodbserver@${ARTDAQ_DB_NAME}.service"
# 5. Run "systemctl start mongodbserver@${ARTDAQ_DB_NAME}.service"
# 
# 6. Check status "systemctl status mongodbserver@${ARTDAQ_DB_NAME}.service"
# 7. Stop "systemctl stop mongodbserver@${ARTDAQ_DB_NAME}.service"


[Unit]
Description=Mongo database service
After=syslog.target network.target

[Service]
Type=forking
User=${run_as_user}
Group=${run_as_group}

EnvironmentFile=${DATABASE_BASE_DIR}/%i/mongod.env
#ExecStartPre=${DATABASE_BASE_DIR}/mongod-ctrl.sh clean 
ExecStart=${DATABASE_BASE_DIR}/mongod-ctrl.sh start 
ExecStop=${DATABASE_BASE_DIR}/mongod-ctrl.sh stop 
#ExecStopPost=${DATABASE_BASE_DIR}/mongod-ctrl.sh clean 
PIDFile=${DATABASE_BASE_DIR}/%i/var/tmp/mongod.pid


Restart=always
RestartSec=300

[Install]
WantedBy=multi-user.target


EOF
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed creating ${filename}. Aborting.\n"; return $rc_failure; else
    printf "\nInfo: Created  ${filename}\n"
    printf "#-----------------------file contents begin----------------------\n"
    cat ${filename}
    printf "#-----------------------file contents end------------------------\n"
fi

return $rc_success
}

function copy_shell_scripts(){
#----------------------------------------------------------------
#-----------------------copy shell scripts-----------------------
filenames=(${ARTDAQ_DATABASE_DIR}/deployment-scripts/artdaq-database/\
{initd_functions,backup_artdaq_database.sh,webconfigeditor-ctrl.sh,mongod-ctrl.sh,setup_database.sh})
#----------------------------------------------------------------
for filename in ${filenames[@]}
do 
    if [ ! -f ${filename} ]; then
        printf "Error: ${filename} is not found! Aborting.\n"; return $rc_failure ; else
        cp ${filename} ${DATABASE_BASE_DIR}
        printf "Info: coppied ${filename} to ${DATABASE_BASE_DIR}"
    fi
done

cp ${HOME}/DAQInterfaceIcarus/setup_database.sh ${DATABASE_BASE_DIR}/

chmod a+rx ${DATABASE_BASE_DIR}/*.sh >/dev/null 2>&1
find ${DATABASE_BASE_DIR} -name  "*.sh" -type f -print |\
  xargs -n 1 sed -i "s|/daq/artdaq|${ARTDAQ_BASE_DIR}|g; \
		     s|/daq/database|${DATABASE_BASE_DIR}|g;\
		     s|cern_pddaq_v2_db|${ARTDAQ_DB_NAME}|g"
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed migrating systemd shell scripts. Aborting.\n"; return $rc_failure;else
    printf "Info: Migrated systemd shell scripts $(find ${DATABASE_BASE_DIR} -name  "*.sh" -type f -print)\n"
fi

return $rc_success
}

function start_mongod_instance(){
printf "Info: Starting mongod server instance\n"

source <(sed -E -n 's/[^#]+/export &/ p'  ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/mongod.env)

${DATABASE_BASE_DIR}/mongod-ctrl.sh start
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed calling mongod-ctrl.sh start. Aborting.\n"; return $rc_failure;
fi

return $rc_success
}

function start_webeditor_instance(){
printf "Info: Starting webconfigeditor instance\n"

source <(sed -E -n 's/[^#]+/export &/ p'  ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/webconfigeditor.env)
cd ${ARTDAQ_NODE_SERVER_DIR}
chmod a+x ${ARTDAQ_NODE_SERVER_DIR}/setupNodeServer.sh
${ARTDAQ_NODE_SERVER_DIR}/setupNodeServer.sh
${DATABASE_BASE_DIR}/webconfigeditor-ctrl.sh start
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed calling webconfigeditor-ctrl.sh start. Aborting.\n"; return $rc_failure;
fi

return $rc_success
}


function check_mongod_instance(){
export ARTDAQ_DATABASE_URI="mongodb://127.0.0.1:${MONGOD_PORT}/cern_pddaq_db"
source <(sed -E -n 's/[^#]+/export &/ p'  ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/mongod.env)

conftool_bin=$(command -v conftool.py)
if [ -z "conftool_bin" ] &&  [ ! -x ${conftool_bin} ]; then
	printf "Error: conftool.py was not setup. Aborting.\n"; return $rc_failure; else
        printf "Info: conftool found: '${conftool_bin}'\n"
fi

failed_test_count=0
conftool_commands=(readDatabaseInfo listDatabases)
for conftool_command in ${conftool_commands[@]};do 
conftool_response=$(conftool.py ${conftool_command})
RC=$?
if [ $RC -ne 0 ]; then
    failed_test_count=$((failed_test_count+1))
    printf "Error: Failed calling conftool.py ${conftool_command} "; 
    printf "#-----------------------conftool.py ${conftool_command} begin---------------------\n"
    echo ${conftool_response}
    printf "#-----------------------conftool.py ${conftool_command} end-----------------------\n"
else
    printf "#-----------------------conftool.py ${conftool_command} begin---------------------\n"
    echo ${conftool_response}
    printf "#-----------------------conftool.py ${conftool_command} end-----------------------\n"
fi
done

if [ $failed_test_count -ne 0 ]; then
   printf "Error: Failed connecting to the running database instance.\n"
   return $rc_failure
fi

return $rc_success
}

function check_webeditor_instance(){
printf "Info: Checking webconfigeditor instance\n"
source <(sed -E -n 's/[^#]+/export &/ p'  ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/webconfigeditor.env)

${DATABASE_BASE_DIR}/webconfigeditor-ctrl.sh status
RC=$?
if [ $RC -ne 0 ]; then
   printf "Error: Failed connecting to the running webconfigeditor instance.\n"
   return $rc_failure
fi

return $rc_success
}


function run_conftool_tests(){
export ARTDAQ_DATABASE_URI="mongodb://127.0.0.1:${MONGOD_PORT}/cern_pddaq_db"
#rm -rf ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/var/tmp/artdaqdb_test_data-*
rm -rf /tmp/artdaqdb_test_data-*

printf "\nInfo: Initializing database\n"

conftool_bin=$(command -v conftool.py)
if [ -z "conftool_bin" ] &&  [ ! -x ${conftool_bin} ]; then
	printf "Error: conftool.py was not setup. Aborting.\n"; return $rc_failure; else
        printf "Info: conftool found: '${conftool_bin}'\n"
fi

tmpdir="/tmp/artdaqdb_test_data-${timestamp}"
for testfile in $(find ${ARTDAQ_DATABASE_DIR}/testdata -name  "np04_teststand*taz" -type f -print);do 
  tmpname=$(basename ${testfile})
  tmpname=${tmpname%.taz}
  mkdir -p ${tmpdir}/${tmpname}
  
  printf "\nInfo: Unpacking ${tmpname} to ${tmpdir}/${tmpname}\n"
  cp ${ARTDAQ_DATABASE_FQ_DIR}/conf/schema.fcl ${tmpdir}/${tmpname}/  
  tar xfz ${testfile} -C ${tmpdir}/${tmpname} --no-acls --no-selinux --no-selinux
  sync
  
  cd ${tmpdir}/${tmpname}

  printf "Info: Importing test configuration ${tmpname} from $(pwd)\n"
  printf "Info: Current directory $(pwd) has $(find . -type f -name "*.fcl" -print |wc -l) fcl files\n"

  conftool.py importConfiguration ${tmpname}
  RC=$?
  if [ $RC -ne 0 ]; then
    printf "Error: Failed calling conftool.py importConfiguration ${tmpname}. "
  fi
  
  printf "Info: Exporting test configuration  ${tmpname}00001 to ${tmpdir}/${tmpname}-export\n"
  mkdir -p ${tmpdir}/${tmpname}-export
  cd ${tmpdir}/${tmpname}-export

  conftool.py exportConfiguration ${tmpname}00001
  RC=$?
  if [ $RC -ne 0 ]; then
    printf "Error: Failed calling conftool.py exportConfiguration ${tmpname}00001.\n"
  fi
  printf "Info: Current directory $(pwd) has $(find . -name "*.fcl" |wc -l) fcl files\n"

  printf "Info: Comparing comparing the original with the exported files.\n"
  printf "#----------------------- compare begin--------------------------------------------\n"
  diff -I "\s*#.*" -BZNb -W 80 -q  -r --suppress-common-lines ${tmpdir}/${tmpname} ${tmpdir}/${tmpname}-export
  printf "#----------------------- compare details-------------------------------------------\n"
  diff -I "\s*#.*" -BZNb -W 80 -y -r --suppress-common-lines ${tmpdir}/${tmpname} ${tmpdir}/${tmpname}-export  
  printf "#----------------------- compare end----------------------------------------------\n"  
done

printf "\nInfo: Running conftool.py tests\n"
  
test1=("\"listCollections\"" "\"SystemLayout\nRCEs\nSSPs\nexpert_options\nComponents\nTiming\nAggregators\nEventBuilders\ncommon_code\"")
test2=("\"listDatabases\"" "\"cern_pddaq_db\"")
test3=("\"getListOfAvailableRunConfigurationPrefixes\"" "\"np04_teststand_tests\"")
test4=("\"getListOfAvailableRunConfigurations\"" "\"np04_teststand_tests00001\"")
test5=("\"getListOfAvailableRunConfigurations np04_teststand\"" "\"np04_teststand_tests00001\"")


tests=(test1[@] test2[@] test3[@] test4[@] test5[@])
test_cout=${#tests[@]};failed_test_count=0
for ((i=0; i<${test_cout}; i++)); do
  tmp=${!tests[i]}
  conftool_command=$(echo $tmp |  cut -d\" -f2)
  conftool_expected_responce=$(printf $(echo $tmp |  cut -d\" -f4))
  
  printf "\nTest #$i \"conftool.py $conftool_command\"\n"
  conftool_response=$(conftool.py ${conftool_command})
  RC=$?
  if [ $RC -ne 0 ]; then
    printf "Error: Failed calling conftool.py ${conftool_command}\n"
    printf "#-----------------------conftool.py ${conftool_command} begin---------------------\n"
    printf "${conftool_response}\n"
    printf "#-----------------------conftool.py ${conftool_command} end-----------------------\n"
    failed_test_count=$((failed_test_count+1))
  else
    if [ ! "$conftool_expected_responce" == "$conftool_response" ]; then
       failed_test_count=$((failed_test_count+1))
       printf "Warning: Wrong responce\n"
       printf "#----------------------- expected responce begin----------------------------------\n"
       echo "${conftool_expected_responce}\n"
       printf "#----------------------- expected responce end------------------------------------\n"
    fi
    printf "#-----------------------conftool.py ${conftool_command} begin---------------------\n"
    echo "${conftool_response}\n"
    printf "#-----------------------conftool.py ${conftool_command} end-----------------------\n"
  fi
done  

if [ $failed_test_count -ne 0 ]; then
   printf "Error: Deployment error, $failed_test_count test(s) failed.\n"
   return $rc_failure
fi

return $rc_success
}

function stop_mongod_instance(){
printf "Info: Stopping mongod server instance\n"
source <(sed -E -n 's/[^#]+/export &/ p'  ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/mongod.env)

${DATABASE_BASE_DIR}/mongod-ctrl.sh stop
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed calling mongod-ctrl.sh stop.\n"
    killall mongod
    printf "Info: Killed all mongod running instances.\n"
fi

return $rc_success
}

function stop_webeditor_instance(){
printf "Info: Stopping webconfigeditor instance\n"
source <(sed -E -n 's/[^#]+/export &/ p'  ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/webconfigeditor.env)

${DATABASE_BASE_DIR}/webconfigeditor-ctrl.sh stop
RC=$?
if [ $RC -ne 0 ]; then
    printf "Error: Failed calling webconfigeditor-ctrl.sh stop.\n"
    killall node
    printf "Info: Killed all node running instances.\n"
fi

return $rc_success
}

function enable_services(){
local enable_services_file="/tmp/enable_services-${timestamp}.sh"
#----------------------------------------------------------------
#----------------------------------------------------------------
printf "\nInfo: Creating ${enable_services_file}\n"
#----------------------------------------------------------------
echo "#!/bin/bash" > ${enable_services_file}
for service in webconfigeditor mongodbserver; do
  echo "cp ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/systemd/${service}@${ARTDAQ_DB_NAME}.service /etc/systemd/system/" >> ${enable_services_file}
  echo "systemctl daemon-reload" >> ${enable_services_file}  
  for action in enable start status; do
      echo systemctl ${action} ${service}@${ARTDAQ_DB_NAME}.service >> ${enable_services_file}
  done
done

chmod a+x  ${enable_services_file}
printf "#-----------------------file contents begin----------------------\n"
cat ${enable_services_file}
printf "#-----------------------file contents end------------------------\n"

printf "\nInfo: Open another shell and run ${enable_services_file} as root.\n"

while $user_prompts; do
    read -p "Did you run ${enable_services_file} as root?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) return $rc_failure;;
        * ) echo "Please answer yes or no.";;
    esac
done

return $rc_success
}

function update_crontab(){
  printf "\nInfo: Updating user's crontab\n"  
  local crontab_file="/tmp/artdaq_database-${timestamp}.crontab"
  
  crontab_bin=$(command -v crontab)
  if [ -z "$crontab_bin" ] &&  [ ! -x ${crontab_bin} ]; then
	printf "Error: crontab was not installed. Aborting.\n"; return $rc_failure; else
        printf "Info: crontab found: '${crontab_bin}'\n"
  fi
  
  printf "#-----------------------old crontab begin------------------------\n"
  cat ${crontab_file}
  printf "#-----------------------old contents end-------------------------\n"

  crontab -l > ${crontab_file}
  
  cat ${crontab_file} | grep -v backup_artdaq_database.sh > ${crontab_file}.new
  echo "30 01 * * * ${DATABASE_BASE_DIR}/backup_artdaq_database.sh ${ARTDAQ_DB_NAME} >>${DATABASE_BASE_DIR}/database-backup-${ARTDAQ_DB_NAME}.log 2>&1" >> ${crontab_file}.new
  #echo "*/5 * * * * ${DATABASE_BASE_DIR}/backup_artdaq_database.sh ${ARTDAQ_DB_NAME} >>${DATABASE_BASE_DIR}/database-backup-${ARTDAQ_DB_NAME}.log 2>&1" >> ${crontab_file}.new
  printf "#-----------------------new crontab begin------------------------\n"
  cat ${crontab_file}.new
  printf "#-----------------------new contents end-------------------------\n"
  crontab -r
  crontab ${crontab_file}.new
  printf "#-----------------------current crontab begin------------------------\n"
  crontab -l
  printf "#-----------------------current contents end-------------------------\n"
  
  printf "Info: Performing inital backup\n"
  ${DATABASE_BASE_DIR}/backup_artdaq_database.sh ${ARTDAQ_DB_NAME} >>${DATABASE_BASE_DIR}/database-backup-${ARTDAQ_DB_NAME}.log
  printf "Info: Backup size \n$(du -hs ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/backup/*)\n"
  printf "Info: Listing archive files\n"
  ls -al $(find ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/backup ./ -name "*tar-bzip2-base64") 
  
  local file_cout=$(find ${DATABASE_BASE_DIR}/${ARTDAQ_DB_NAME}/backup ./ -name "*tar-bzip2-base64" |wc -l)
  
  if [ $file_cout -ne 9 ]; then
     printf "Error: Partial backup.\n"
     return $rc_failure
  fi

  return $rc_success;
}

function apply_patches(){
  local products_dir=${ARTDAQ_BASE_DIR}/products

  mongo_table=$(find  ${products_dir}/mongodb/ -name mongodb.table)

  printf "Info: pathing ${mongo_table}\n"

patch -b ${mongo_table}  <<EOF
--- ./products/mongodb/v3_4_6a/ups/mongodb.table  2018-02-01 09:27:56.000000000 -0600
+++ ./products/mongodb/v3_4_6a/ups/mongodb.table.patched  2018-03-08 13:23:16.758754330 -0600
@@ -81,6 +81,7 @@
 
     # add the bin directory to the path
     pathPrepend(PATH, \${\${UPS_PROD_NAME_UC}_FQ_DIR}/bin )
+    pathPrepend(PATH, \${\${UPS_PROD_NAME_UC}_FQ_DIR} )
 
 
 End:
EOF

  if [[ $? -ne $rc_success ]]; then 
    echo -e "\e[31;7;5mError: Failed patching mongodb.table.\e[0m"; return $rc_failure
  fi
}

function main_program(){
printf "\nInfo: Running main_program\n"

have_artdaq_database
if [[ $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: artdaq_database product is not installed.\e[0m"; return $rc_failure
fi

have_artdaq_node_server
if [[ $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: have_artdaq_node_server product is not installed.\e[0m"; return $rc_failure
fi

disable_services
if [[ $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: failed disabling services.\e[0m"; return $rc_failure
fi

create_database_dirs
if [[ $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: failed creating working database directories.\e[0m"; return $rc_failure
fi

create_database_configs
if [[ $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: failed creating database config files.\e[0m"; return $rc_failure
fi

create_database_services
if [[  $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: failed creating database service configuration files.\e[0m"; return $rc_failure
fi

copy_shell_scripts
if [[  $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: failed copping database shell scripts.\e[0m"; return $rc_failure
fi

start_mongod_instance
if [[  $? -ne $rc_success ]]; then
  echo -e "\e[31;7;5mError: failed starting mongo database.\e[0m"
  stop_mongod_instance
  return $rc_failure; else
  
  check_mongod_instance
  if [[  $? -ne $rc_success ]]; then 
      echo -e "\e[31;7;5mError: failed accessing mongo database.\e[0m"
#     read -p "Resume script ? " answer
      stop_mongod_instance
      return $rc_failure
  fi 
fi

run_conftool_tests
if [[  $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: Deployment error.\e[0m"
   stop_mongod_instance
   return $rc_failure
fi

start_webeditor_instance
if [[  $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: failed starting webconfigeditor.\e[0m"
   stop_webeditor_instance
   stop_mongod_instance
   return $rc_failure;else

   local retry_counter=0
   local max_retry_count=6
   
   until check_webeditor_instance || [ $retry_counter -eq $max_retry_count ]; do
      sleep $(( retry_counter++ ))
   done

   check_webeditor_instance
   if [[  $? -ne $rc_success ]]; then    
      echo -e "\e[31;7;5mError: failed accessing webconfigeditor.\e[0m"
      stop_webeditor_instance
      stop_mongod_instance
      return $rc_failure
   fi 
fi

update_crontab
if [[ $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: failed updating crontab.\e[0m"; return $rc_failure
fi


local error_count=0

#read -p "Resume script ? " answer

stop_webeditor_instance
if [[  $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: failed stopping webconfigeditor.\e[0m"
   error_count=$((error_count+1))

fi 

stop_mongod_instance
if [[  $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: failed stopping mongo database.\e[0m"
   error_count=$((error_count+1))
fi 

if [ $error_count -ne 0 ]; then
   echo -e "\e[31;7;5mError: Some of the services did not stop gracefully.\e[0m"
   return $rc_failure
fi

enable_services
if [[ $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: failed enabling services.\e[0m"; return $rc_failure
fi

local retry_counter=0
local max_retry_count=6
   
until check_webeditor_instance || [ $retry_counter -eq $max_retry_count ]; do
   sleep $(( retry_counter++ ))
done

check_webeditor_instance
if [[  $? -ne $rc_success ]]; then 
    echo -e "\e[31;7;5mError: failed accessing webconfigeditor.\e[0m"
    return $rc_failure
fi 

echo -e "\e[0;7;5mInfo: Installation succeeded.\e[0m"

return $rc_success
}


function pull_products(){
local download_dir=${ARTDAQ_BASE_DIR}/download
local products_dir=${ARTDAQ_BASE_DIR}/products

wget "http://scisoft.fnal.gov"
if [ $? -ne 0 ]; then
  printf "Error: scisoft.fnal.gov is not accessible, configure your webproxy settings and try again.\n"
  printf "Examples: export http_proxy=http://np04-webgw1.cern.ch:3128\n"
  printf "	    export https_proxy=https://np04-webgw1.cern.ch:3128\n"
  return $rc_failure; else
  rm -f index.html*
fi

for tool_name in ${required_tools_list[@]} ; do
  tool_bin=$(command -v ${tool_name})
  if [ -z "${tool_bin}" ] &&  [ ! -x ${tool_bin} ]; then
	printf "Error: ${tool_name} was not installed. Aborting.\n"; return $rc_failure
  fi
done

if [ -z ${ARTDAQ_DB_MANIFESTURL+x} ]; then
   printf "Error: ARTDAQ_DB_MANIFESTURL is unset. Aborting.\n";return $rc_failure;  else
   echo "Info: ARTDAQ_DB_MANIFESTURL is set to '${ARTDAQ_DB_MANIFESTURL}'"
fi

if [ -z ${ARTDAQ_DB_PULLPRODUCTS+x} ]; then
   printf "Error: ARTDAQ_DB_PULLPRODUCTS is unset. Aborting.\n";return $rc_failure;  else
   printf "Info: ARTDAQ_DB_PULLPRODUCTS is set to '${ARTDAQ_DB_PULLPRODUCTS}'\n"
fi

if [ ! -d ${products_dir} ]; then 
  mkdir -p ${products_dir}
  if [ $? -ne 0 ]; then
    printf "Error: Failed creating ${products_dir}. Aborting.\n"; return $rc_failure
  fi
fi
  
if [ ! -d ${download_dir} ]; then 
  mkdir -p ${download_dir}
  if [ $? -ne 0 ]; then
    printf "Error: Failed creating ${download_dir}. Aborting.\n"; return $rc_failure
  fi  
fi

cd ${download_dir}

if [ ! -f ${download_dir}/pullProducts ]; then
  echo "Info: ${download_dir}/pullProducts is not found! Downloading."
  wget http://scisoft.fnal.gov/scisoft/bundles/tools/pullProducts
  chmod a+x pullProducts 
  if [ $? -ne 0 ]; then
    printf "Error: Failed creating ${download_dir}/pullProducts. Aborting.\n"; return $rc_failure
  fi
fi

echo "Info: Downloading a local copy of the artdaq_database product manifest."
rm ${download_dir}/artdaq_database*_MANIFEST.txt*
wget ${ARTDAQ_DB_MANIFESTURL}
if [ $? -ne 0 ]; then
  printf "Error: Failed downloading ${ARTDAQ_DB_MANIFESTURL}. Aborting.\n"; return $rc_failure
fi

local ups_tar_suffix=${TMP_PAR_LIST[0]}-x86_64-$(echo $ARTDAQ_UPS_QUAL | cut -d":" -f1 )-$(echo $ARTDAQ_UPS_QUAL | cut -d":" -f3 )-$(echo $ARTDAQ_UPS_QUAL | cut -d":" -f2 )
echo "artdaq_database      ${ARTDAQ_DB_UPS_VER}        artdaq_database-$(echo $ARTDAQ_DB_UPS_VER|sed 's/_/./g'|sed -e 's/^v//')-${ups_tar_suffix}.tar.bz2     -f ${this_ups_flavor}    -q ${ARTDAQ_UPS_QUAL}" > ${ARTDAQ_DB_MANIFEST}
echo "artdaq_node_server   ${WEBEDITOR_UPS_VER}        artdaq_node_server-$(echo $WEBEDITOR_UPS_VER|sed 's/_/./g'|sed -e 's/^v//')-${ups_tar_suffix}.tar.bz2  -f ${this_ups_flavor}    -q ${ARTDAQ_UPS_QUAL}" >>${ARTDAQ_DB_MANIFEST}

cat ${ARTDAQ_DB_MANIFEST_RAW} >> ${ARTDAQ_DB_MANIFEST}
if [ $? -ne 0 ]; then
  printf "Error: Failed moving ${ARTDAQ_DB_MANIFEST_RAW} to ${ARTDAQ_DB_MANIFEST}. Aborting.\n"; return $rc_failure
fi

printf "#-----------------------ARTDAQ DATABASE MANIFEST-------------------\n"
cat ${ARTDAQ_DB_MANIFEST}
printf "\n#-----------------------ARTDAQ DATABASE MANIFEST-------------------\n"


rm ${download_dir}/artdaq_database-*.tar.bz2   >/dev/null 2>&1 
rm ${download_dir}/artdaq_node_server-*.tar.bz2   >/dev/null 2>&1 

./pullProducts -l ../products ${ARTDAQ_DB_PULLPRODUCTS}
if [ $? -ne 0 ]; then
  printf "Error: Failed pulling artdaq_database product bundle. Aborting.\n"; return $rc_failure
fi

 
local ARTDAQ_DB_CUR_VER=$(grep artdaq_database ${products_dir}/artdaq_node_server/${WEBEDITOR_UPS_VER}/ups/artdaq_node_server.table |cut -d' ' -f7|uniq)

if [ ! "${ARTDAQ_DB_CUR_VER}" == "${ARTDAQ_DB_UPS_VER}" ]; then
  printf "Info: Updating the version of artdaq_database in artdaq_node_server.table from ${ARTDAQ_DB_CUR_VER} to ${ARTDAQ_DB_UPS_VER}.\n" 

  sed -i "s/${ARTDAQ_DB_CUR_VER}/${ARTDAQ_DB_UPS_VER}/g" ${products_dir}/artdaq_node_server/${WEBEDITOR_UPS_VER}/ups/artdaq_node_server.table
  if [ $? -ne 0 ]; then
    printf "Error: Failed updating the version of artdaq_database in artdaq_node_server.table. Do this manually. Aborting.\n"; return $rc_failure
  fi

  ARTDAQ_DB_CUR_VER=$(grep artdaq_database ${products_dir}/artdaq_node_server/${WEBEDITOR_UPS_VER}/ups/artdaq_node_server.table |cut -d' ' -f7|uniq)

  if [ "${ARTDAQ_DB_CUR_VER}" == "${ARTDAQ_DB_UPS_VER}" ]; then
    printf "Info: Update succeeded.\n"; else
    printf "Error: Failed updating the version of artdaq_database in artdaq_node_server.table. Do this manually. Aborting.\n"; return $rc_failure
  fi
fi
  
sed -i "s/8080/${WEBEDITOR_BASE_PORT}/g" ${products_dir}/artdaq_node_server/${WEBEDITOR_UPS_VER}/config.json

source ${PRODUCTS_BASE_DIR}/setup
unsetup_all  >/dev/null 2>&1 


have_artdaq_database
if [[ $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: artdaq_database product is not installed.\e[0m"; return $rc_failure
fi

have_artdaq_node_server
if [[ $? -ne $rc_success ]]; then 
   echo -e "\e[31;7;5mError: have_artdaq_node_server product is not installed.\e[0m"; return $rc_failure
fi
}


#----------------------------------------------------------------
# Main program starts here.
#----------------------------------------------------------------

ARTDAQ_DB_ENV="$HOME/artdaq_database.env"

reset
printf "#-----------------------INSTALLING ARTDAQ DATABASE-----------------\n"

if [ ! -f ${ARTDAQ_DB_ENV} ]; then
  echo "Warning: ${ARTDAQ_DB_ENV} is not found! Using reasonable defaults."; else
  echo "Info: Found ${ARTDAQ_DB_ENV} found! Sourcing it."
  printf "#-----------------------file contents begin----------------------\n"
  cat ${ARTDAQ_DB_ENV}
  printf "#-----------------------file contents end------------------------\n"  
  source <(sed -E -n 's/[^#]+/export &/ p' ${ARTDAQ_DB_ENV})
fi

printf "\n\nAre you capturing the output with tee?\n Example: ./install_artdaq_database.sh | tee install.log\n"
printf "\nPlease answer \"YesIam!\" or \"no\"."

while $user_prompts; do
    read answer
    case $answer in
        [YesIam!]* ) break;;
        [Nn]* ) echo "Aborting installation...."; exit $rc_failure;;
        * ) echo "Please answer \"YesIam!\" or \"no\".";;
    esac
done

printf "\n\n"
printf "During the installation you will be prompted to run two shell scripts as root.\n"
printf "Open another console and run them before resuming this script.\n"
printf "Review the output from both scripts.\n"
printf "Confirm that webconfigeditor and mongodbserver services are reported as \"active (running)\"\n"
printf "after you have ran the second script (/tmp/enable_services-${timestamp}.sh).\n"
printf "\n\n"

read -p "Press CTRL-C to abort or any other key to resume this script." answer

DATABASE_BASE_DIR=$(dirname ${ARTDAQ_BASE_DIR})/database
PRODUCTS_BASE_DIR=${ARTDAQ_BASE_DIR}/products

pull_products
if [[ $? -ne $rc_success ]]; then 
  exit $?
fi

#apply_patches
#if [[ $? -ne $rc_success ]]; then
#   exit $?
#fi

printf "Info: Configuring artdaq_database services to run using the following credentials:\n"
printf "\t\tuser=${run_as_user}, group=${run_as_group}\n"

main_program
exit $?


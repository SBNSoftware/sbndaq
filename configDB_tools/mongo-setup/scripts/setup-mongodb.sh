#!/bin/bash
exit 1
this_sbnddaq_password="changeme"
this_admin_password="changeme$this_sbnddaq_password"

rc_success=0
rc_failure=1


this_dir=$(pwd)
[[ ! -f ${this_dir}/setup_database.sh ]] && echo "Error: Missing file ${this_dir}/setup_database.sh" && exit $rc_failure
source  ${this_dir}/setup_database.sh
[[ $? != 0 ]] && "Error: Got non-zero return code from setup_database.sh" && exit $rc_failure

[[ ! -f ${this_dir}/mongod-ctrl.sh ]] && echo "Error: Missing file ${this_dir}/mongod-ctrl.sh" && exit $rc_failure
chmod a+x ${this_dir}/mongod-ctrl.sh
${this_dir}/mongod-ctrl.sh stop

#rm -rf /data/artdaq_database/sbnd_v4x_db/data-sbnddaq13

${this_dir}/mongod-ctrl.sh configure
sleep 2

mongo 127.0.0.1:28047 <<EOF

let db_name='sbnd_db';

let db_list=[db_name, db_name+'_archive'];

use admin;

db.createUser({'user': 'admin', 'pwd': '$this_admin_password', 'roles':[{'role': 'root', 'db': 'admin'}]});
db.createUser({'user': 'sbnddaq', 'pwd': '$this_sbnddaq_password', 'roles':[]});

for( var i =0; i< db_list.length; i++) {
  db.grantRolesToUser('sbnddaq',[{'role':'dbOwner', 'db': db_list[i]}]);
}

use admin;
db.getUser('sbnddaq');

EOF

echo mongo -u admin -p $this_admin_password --authenticationDatabase admin  127.0.0.1:28047

${this_dir}/mongod-ctrl.sh stop
sleep 2

${this_dir}/mongod-ctrl.sh start

mongo -u admin -p $this_admin_password --authenticationDatabase admin  127.0.0.1:28047  <<EOF

let db_list=['any-db01:28047','any-db02:28047'];
let arb_list=['any-db02:28048'];

rs.initiate({_id : 'rs0', members: [ { '_id': 0, 'host':db_list[0] } ] });

for ( var i=1; i< db_list; i++) {
  rs.add(db_list[i]);
}

for (var i=0; i< arb_list; i++){
  rs.addArb(arb_list[i] );
}

rs.conf();

rs.status();

EOF

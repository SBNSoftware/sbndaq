# basic source code CMakeLists.txt

#install_python(SCRIPTS markConfigActive.py markConfigInactive.py markOlderConfigsInactive.py
#	       MODULES configDB_Utilities
#)
install_scripts(LIST
  ./markConfigActive.py
  ./markConfigInactive.py
  ./markOlderConfigsInactive.py
  )

install(
  FILES
   ./migrateConfigs.sh
   ./importRunHistory2ArtdaqDB.sh
   ./importRunHistory2ArtdaqDB-cron.sh
   ./setup_database.sh
   ./copyRunHistory2UconDB.sh
   ./copyRunHistory2UconDB-cron.sh
   ./disk_monitor.sh
   ./disk_monitor.py
   ./runrecords_monitor_with_partition.py
   ./runrecords_monitor.py
   ./runrecords_monitor.sh
  DESTINATION
   configDB_tools
    PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ GROUP_EXECUTE GROUP_READ WORLD_READ WORLD_EXECUTE
  )
install(DIRECTORY config-migration-scripts  DESTINATION configDB_tools)
install(DIRECTORY config DESTINATION configDB_tools)


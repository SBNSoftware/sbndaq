#!/bin/sh

RUN_NUMBER=$1
EVENTS_TO_RUN=$2
DESCRIPTION=$3

echo "\n\nExecuting run number $RUN_NUMBER with $EVENTS_TO_RUN events and file descriptor $DESCRIPTION"

cp $SBNDAQ_DIR/fcl/ICARUS_TPC_VST_driver.fcl ./local_vst_driver.fcl

echo "\n\nSetting outputs.rootout.fileName: \"/home/nfs/icarus/VST_Data/data_run%R_%#_${DESCRIPTION}_%to.root\""

echo "outputs.rootout.fileName: \"/home/nfs/icarus/VST_Data/data_run%R_%#_${DESCRIPTION}_%to.root\"" >> local_vst_driver.fcl
echo "event_builder.events_expected_in_SimpleQueueReader: ${EVENTS_TO_RUN}" >> local_vst_driver.fcl
echo "run_number: ${RUN_NUMBER}" >> local_vst_driver.fcl
echo "fragment_receiver.RunNumber: ${RUN_NUMBER}" >> local_vst_driver.fcl
echo "events_to_generate: ${EVENTS_TO_RUN}" >> local_vst_driver.fcl

echo "\n\nExecuting artdaqDriver -c local_vst_driver.fcl"

artdaqDriver -c local_vst_driver.fcl

echo "\n\nDONE!"

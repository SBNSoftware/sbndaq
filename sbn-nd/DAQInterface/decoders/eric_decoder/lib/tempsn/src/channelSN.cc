#include "channelSN.hh"

void channelSN::pushROITimestamp(unsigned short roiTimestamp) {
	roiTimestamps_.push_back(roiTimestamp);
}

void channelSN::pushROIADCLastSample(unsigned short roiADCLastSample) {
	roiADCLastSamples_.push_back(roiADCLastSample);
}

void channelSN::pushROIID(unsigned int roiID) {
	roiIDs_.push_back(roiID);
}

void channelSN::pushROIADC(unsigned short roiADC) {
	roiADCs_.push_back(roiADC);
}

void channelSN::pushROISampleNum(unsigned short roiSampleNum) {
	roiSampleNums_.push_back(roiSampleNum);
}

void channelSN::clearROITimestamps() {
	roiTimestamps_.clear();
}

void channelSN::clearROIADCLastSamples() {
	roiADCLastSamples_.clear();
}

void channelSN::clearROIIDs() {
	roiIDs_.clear();
}

void channelSN::clearROIADCs() {
	roiADCs_.clear();
}

void channelSN::clearROISampleNums() {
	roiSampleNums_.clear();
}

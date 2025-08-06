#include "channelSN.hh"

void channelSN::pushROI(ROI roi) {
	roi_.emplace_back(roi);
}

void channelSN::clearROI() {
	roi_.clear();
}

ClassImp(channelSN)

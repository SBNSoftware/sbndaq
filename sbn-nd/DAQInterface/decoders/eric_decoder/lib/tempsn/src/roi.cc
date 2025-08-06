#include "roi.hh"

void ROI::pushADC(unsigned short adc) {
	adc_.push_back(adc);
}

void ROI::pushSampleNum(unsigned short sampleNum) {
	sampleNum_.push_back(sampleNum);
}

void ROI::clearADC() {
	adc_.clear();
}

void ROI::clearSampleNum() {
	sampleNum_.clear();
}

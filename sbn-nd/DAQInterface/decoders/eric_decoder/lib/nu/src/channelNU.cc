#include "channelNU.hh"

void channelNU::pushADC(unsigned short adc) {
	adcs_.push_back(adc);
}

void channelNU::pushSampleNum(unsigned short sampleNum) {
	sampleNums_.push_back(sampleNum);
}

void channelNU::clearADCs() {
	adcs_.clear();
}

void channelNU::clearSampleNums() {
	sampleNums_.clear();
}

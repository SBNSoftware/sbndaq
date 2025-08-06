#ifndef DECODER_ROI_H
#define DECODER_ROI_H

#include <cstdint>
#include <vector>

#include "TObject.h"

class ROI : public TObject {

public:
	// constructor
	ROI(unsigned short timestamp) : timestamp_(timestamp) {};
	ROI() {};

	// setters
	void setTimestamp(unsigned short timestamp) { timestamp_ = timestamp; }
	void setADCLastSample(unsigned short adcLastSample) { adcLastSample_ = adcLastSample; }
	
	// getters
	unsigned short getTimestamp() const { return timestamp_; }
	unsigned short getADCLastSample() const { return adcLastSample_; }
	unsigned int getADCCnt() const { return adc_.size(); }
	unsigned int getSampleNumCnt() const { return sampleNum_.size(); }
	std::vector<unsigned short> getADC() const { return adc_; }
	std::vector<unsigned short> getSampleNum() const { return sampleNum_; }

	void pushADC(unsigned short adc);
	void pushSampleNum(unsigned short sampleNum);
	void clearADC();
	void clearSampleNum();

	// destructor
	~ROI() {};

	ClassDef(ROI, 1)

protected:

private:
	unsigned short timestamp_;
	unsigned short adcLastSample_;
	std::vector<unsigned short> adc_;
	std::vector<unsigned short> sampleNum_;

};

#endif //DECODER_ROI_H

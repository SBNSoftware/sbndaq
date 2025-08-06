#ifndef DECODER_CHANNEL_SN_H
#define DECODER_CHANNEL_SN_H

#include <cstdint>
#include <vector>

#include "roi.hh"

#include "TObject.h"

class channelSN : public TObject {

public:
	// constructor
	channelSN(unsigned short channelNum, unsigned short frameNum) : channelNum_(channelNum), frameNum_(frameNum) {};
	channelSN() {};

	// setters
	void setChannelNum(unsigned short channelNum) { channelNum_ = channelNum; }
	void setFrameNum( unsigned short frameNum) { frameNum_ = frameNum; }
	
	// getters
	unsigned short getChannelNum() const { return channelNum_; }
	unsigned short getFrameNum() const { return frameNum_; }
	unsigned int getROICnt() const { return roi_.size(); }
	std::vector<ROI> getROI() const { return roi_; }

	void pushROI(ROI roi);
	void clearROI();

	// destructor
	~channelSN() {};

	ClassDef(channelSN, 1)

protected:

private:
	unsigned short channelNum_;
	unsigned short frameNum_;
	std::vector<ROI> roi_;

};

#endif //DECODER_CHANNEL_SN_H

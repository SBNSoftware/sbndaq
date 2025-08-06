#ifndef DECODER_CHANNEL_SN_H
#define DECODER_CHANNEL_SN_H

#include <cstdint>
#include <vector>

class channelSN {

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
	unsigned int getROICnt() const { return roiTimestamps_.size(); }
	const std::vector<unsigned short>& getROITimestamps() const { return roiTimestamps_; }
	const std::vector<unsigned short>& getROIADCLastSamples() const { return roiADCLastSamples_; }
	const std::vector<unsigned int>& getROIIDs() const { return roiIDs_; }
	const std::vector<unsigned short>& getROIADCs() const { return roiADCs_; }
	const std::vector<unsigned short>& getROISampleNums() const { return roiSampleNums_; }

	void pushROITimestamp(unsigned short roiTimestamp);
	void pushROIADCLastSample(unsigned short roiADCLastSample);
	void pushROIID(unsigned int roiID);
	void pushROIADC(unsigned short roiADC);
	void pushROISampleNum(unsigned short roiSampleNum);
	void clearROITimestamps();
	void clearROIADCLastSamples();
	void clearROIIDs();
	void clearROIADCs();
	void clearROISampleNums();

	// destructor
	~channelSN() {};

protected:

private:
	unsigned short channelNum_;
	unsigned short frameNum_;
	std::vector<unsigned short> roiTimestamps_;
	std::vector<unsigned short> roiADCLastSamples_;
	std::vector<unsigned int> roiIDs_;
	std::vector<unsigned short> roiADCs_;
	std::vector<unsigned short> roiSampleNums_;

};

#endif //DECODER_CHANNEL_SN_H

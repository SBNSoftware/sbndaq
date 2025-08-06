#ifndef DECODER_FEM_NU_H
#define DECODER_FEM_NU_H

#include <cstdint>
#include <vector>

#include "channelNU.hh"

class femNU {

public:
	// constructor
	femNU(unsigned short femSlot, unsigned short femID) : femSlot_(femSlot), femID_(femID) {};
	femNU() {};

	// setters
	void setFEMSlot(unsigned short femSlot) { femSlot_ = femSlot; }
	void setFEMID(unsigned short femID) { femID_ = femID; }
	void setADCCntTrue(unsigned int adcCntTrue) { adcCntTrue_ = adcCntTrue; }
	void setEventNum(unsigned int eventNum) { eventNum_ = eventNum; }
	void setEventFrameNum(unsigned int eventPacketFrameNum) { eventPacketFrameNum_ = eventPacketFrameNum; }
	void setADCChecksumTrue(unsigned int adcChecksumTrue) { adcChecksumTrue_ = adcChecksumTrue; }
	void setTrigFrameNum(unsigned int trigFrameNum) { trigFrameNum_ = trigFrameNum; }
	void setSampleNum(unsigned short sampleNum) { sampleNum_ = sampleNum; }
	void setADCCntReco(unsigned int adcCntReco) { adcCntReco_ = adcCntReco; }
	void setADCChecksumReco(unsigned int adcChecksumReco) { adcChecksumReco_ = adcChecksumReco; }
	
	// getters
	unsigned short getFEMSlot() const { return femSlot_; }
	unsigned short getFEMID() const { return femID_; }
	unsigned int getADCntTrue() const { return adcCntTrue_; }
	unsigned int getEventNum() const { return eventNum_; }
	unsigned int getEventFrameNum() const { return eventPacketFrameNum_; }
	unsigned int getADCChecksumTrue() const { return adcChecksumTrue_; }
	unsigned int getTrigFrameNum() const { return trigFrameNum_; }
	unsigned short getSampleNum() const { return sampleNum_; }
	unsigned int getChannelCnt() const { return channels_.size(); }
	std::vector<channelNU>& getChannels() { return channels_; }
	unsigned int getADCntReco() const { return adcCntReco_; }
	unsigned int getADCChecksumReco() const { return adcChecksumReco_; }

	void pushChannel(channelNU channel);
	void clearChannels();
	channelNU& getChannel(unsigned short channelNum);

	// destructor
	~femNU() {};

protected:

private:
	unsigned short femSlot_;
	unsigned short femID_;
	unsigned int adcCntTrue_;
	unsigned int eventNum_;
	unsigned int eventPacketFrameNum_;
	unsigned int adcChecksumTrue_;
	unsigned int trigFrameNum_;
	unsigned short sampleNum_;
	std::vector<channelNU> channels_;
	unsigned int adcCntReco_;
	unsigned int adcChecksumReco_;

};

#endif //DECODER_FEM_NU_H

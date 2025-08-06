#ifndef DECODER_FEM_SN_H
#define DECODER_FEM_SN_H

#include <cstdint>
#include <vector>

#include "channelSN.hh"

class femSN {

public:
	// constructor
	femSN(unsigned short femSlot, unsigned short femID, bool test, bool overflow, bool full) : femSlot_(femSlot), femID_(femID), test_(test), overflow_(overflow), full_(full) {};
	femSN() {};

	// setters
	void setFEMSlot(unsigned short femSlot) { femSlot_ = femSlot; }
	void setFEMID(unsigned short femID) { femID_ = femID; }
	void setTest(bool test) { test_ = test; }
	void setOverflow(bool overflow) { overflow_ = overflow; }
	void setFull(bool full) { full_ = full; }
	void setADCCntTrue(unsigned int adcCntTrue) { adcCntTrue_ = adcCntTrue; }
	void setEventNum(unsigned int eventNum) { eventNum_ = eventNum; }
	void setEventFrameNum(unsigned int eventPacketFrameNum) { eventPacketFrameNum_ = eventPacketFrameNum; }
	void setADCChecksumTrue(unsigned int adcChecksumTrue) { adcChecksumTrue_ = adcChecksumTrue; }
	void setSampleNumErr(bool sampleNumErr) { sampleNumErr_ = sampleNumErr; }
	void setADCCntReco(unsigned int adcCntReco) { adcCntReco_ = adcCntReco; }
	void setADCChecksumReco(unsigned int adcChecksumReco) { adcChecksumReco_ = adcChecksumReco; }
	
	// getters
	unsigned short getFEMSlot() const { return femSlot_; }
	unsigned short getFEMID() const { return femID_; }
	bool getTest() const { return test_; }
	bool getOverflow() const { return overflow_; }
	bool getFull() const { return full_; }
	unsigned int getADCntTrue() const { return adcCntTrue_; }
	unsigned int getEventNum() const { return eventNum_; }
	unsigned int getEventFrameNum() const { return eventPacketFrameNum_; }
	unsigned int getADCChecksumTrue() const { return adcChecksumTrue_; }
	bool getSampleNumErr() const { return sampleNumErr_; }
	unsigned int getChannelCnt() const { return channels_.size(); }
	std::vector<channelSN>& getChannels() { return channels_; }
	unsigned int getADCntReco() const { return adcCntReco_; }
	unsigned int getADCChecksumReco() const { return adcChecksumReco_; }

	void pushChannel(channelSN channel);
	void clearChannels();
	channelSN& getChannel(unsigned short channelNum);

	// destructor
	~femSN() {};

protected:

private:
	unsigned short femSlot_;
	unsigned short femID_;
	bool test_;
	bool overflow_;
	bool full_;
	unsigned int adcCntTrue_;
	unsigned int eventNum_;
	unsigned int eventPacketFrameNum_;
	unsigned int adcChecksumTrue_;
	bool sampleNumErr_;
	std::vector<channelSN> channels_;
	unsigned int adcCntReco_;
	unsigned int adcChecksumReco_;

};

#endif //DECODER_FEM_SN_H

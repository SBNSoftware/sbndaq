#ifndef DECODER_FEM_SN_H
#define DECODER_FEM_SN_H

#include <cstdint>
#include <array>

#include "channelSN.hh"

class femSN {

public:
	// constructor
	femSN(unsigned short femSlot, unsigned short femID, bool test, bool overflow, bool full) : femSlot_(femSlot), femID_(femID), test_(test), overflow_(overflow), full_(full) {};
	femSN() {};

	// setters
	void setFEMSlot(unsigned short femSlot) { femSlot_ = femSlot; }
	void setFEMID( unsigned short femID) { femID_ = femID; }
	void setTest(bool test) { test_ = test; }
	void setOverflow(bool overflow) { overflow_ = overflow; }
	void setFull(bool full) { full_ = full; }
	void setADCCnt(unsigned int adcCnt) { adcCnt_ = adcCnt; }
	void setEventNum(unsigned int eventNum) { eventNum_ = eventNum; }
	void setEventFrameNum(unsigned int eventFrameNum) { eventFrameNum_ = eventFrameNum; }
	void setADCChecksum(unsigned int adcChecksum) { adcChecksum_ = adcChecksum; }
	
	// getters
	unsigned short getFEMSlot() const { return femSlot_; }
	unsigned short getFEMID() const { return femID_; }
	bool getTest() const { return test_; }
	bool getOverflow() const { return overflow_; }
	bool getFull() const { return full_; }
	unsigned int getADCnt() const { return adcCnt_; }
	unsigned int getEventNum() const { return eventNum_; }
	unsigned int getEventFrameNum() const { return eventFrameNum_; }
	unsigned int getADCChecksum() const { return adcChecksum_; }
	unsigned int getChannelCnt() const { return channels_.size(); }
	std::array<channelSN, 64>& getChannels() { return channels_; }

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
	unsigned int adcCnt_;
	unsigned int eventNum_;
	unsigned int eventFrameNum_;
	unsigned int adcChecksum_;
	std::array<channelSN, 64> channels_;

};

#endif //DECODER_FEM_SN_H

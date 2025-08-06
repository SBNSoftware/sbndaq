#include "femSN.hh"

channelSN& femSN::getChannel(unsigned short channelNum) {
	return channels_.at(channelNum);
}

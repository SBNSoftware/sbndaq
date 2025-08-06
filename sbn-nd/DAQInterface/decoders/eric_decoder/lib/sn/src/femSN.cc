#include "femSN.hh"

void femSN::pushChannel(channelSN channel) {
	channels_.emplace_back(channel);
}

void femSN::clearChannels() {
	channels_.clear();
}

channelSN& femSN::getChannel(unsigned short channelNum) {
	return channels_.at(channelNum);
}

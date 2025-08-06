#include "femNU.hh"

void femNU::pushChannel(channelNU channel) {
	channels_.emplace_back(channel);
}

void femNU::clearChannels() {
	channels_.clear();
}

channelNU& femNU::getChannel(unsigned short channelNum) {
	return channels_.at(channelNum);
}

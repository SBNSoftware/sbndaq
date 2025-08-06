#include "femSN.hh"

void femSN::pushChannel(channelSN channel) {
	channel_.emplace_back(channel);
}

void femSN::clearChannel() {
	channel_.clear();
}

ClassImp(femSN)

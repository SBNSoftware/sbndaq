#include <iostream>
#include <iomanip>
#include <fstream>
#include <unistd.h>
#include <cstdlib>
#include <cstdint>
#include <string>
#include <vector>
#include <array>
#include <map>
#include <stack>
#include <set>
#include <tuple>
#include <utility>
#include <bitset>
#include <cmath>

#include "femNU.hh"
#include "utility.hh"

#include "TFile.h"
#include "TTree.h"
#include "TObject.h"
#include "TString.h"

using namespace std;

enum class STATE : unsigned char {
	WAIT_EVENT_START,
	WAIT_FEM_HEADER,
	GET_ADC_WORD_CNT,
	GET_EVENT_NUM,
	GET_EVENT_PACKET_FRAME_NUM,
	GET_ADC_WORD_CHECKSUM,
	GET_SAMPLE_NUM,
	WAIT_CHANNEL_START,
	WAIT_CHANNEL_END,
	GET_FEM_HEADER_L,
	GET_EVENT_END
};

int main(int argc, char* argv[]) {
	
	string fin, dout;
	bool debug = false;
	bool progressBar = false;

	// read options from input command
  char option;
  while ((option = getopt(argc, argv, "i:o:pdh")) != -1) {
    switch (option) {
      case 'i':
        fin = optarg;
        break;
      case 'o':
        dout = optarg;
        break;
      case 'p':
        progressBar = true;
        break;
      case 'd':
        debug = true;
        break;
      case 'h':
        cout << "USAGE: " << argv[0] << "\nOPTIONS\n"
                  << "-i : input file\n"
                  << "-o : output directory\n"
                  << "-p : display progress bar\n"
                  << "-d : debug mode\n";
        break;
      default:
        return 0;
    }
  }

	if (fin.empty()) {
    cout << "No input file" << endl;
    return 1;
  }
	else if (fin.find(".dat") == string::npos) {
    cout << "Input file must be a .dat file" << endl;
    return 1;
  }
  else if (dout.empty()) {
    cout << "No output directory" << endl;
    return 1;
  }

  ifstream fbin(fin, ios::in | ios::binary | ios::ate);

  if (!fbin.is_open()) {
    cout << fin << " can't be opened" << endl;
    return 1;
  }

	string fout = fin.substr((fin.find_last_of("/") + static_cast<int>((dout.back()=='/'))));
	string rootname = dout + fout.replace(fout.find(".dat"), 4, ".root");
	string logname = dout + fout.replace(fout.find(".root"), 5, ".log");

	cout << "Input binary file: " << fin << endl;
	cout << "Output root file: " << rootname << endl;
	cout << "Output log file: " << logname << endl;

	STATE state = STATE::WAIT_EVENT_START;

	unsigned int word32b;
	unsigned short word16b;

  map<unsigned short, femNU*> fems;
	channelNU *channel = new channelNU();
	unsigned short currFEMSlot, currADC;
	unsigned int currSampleNumCnt;

	TFile *froot = new TFile(rootname.c_str(), "RECREATE");
	TTree *event = new TTree("events", "events");

	bool skip_first = true;
	bool event_new;

	unsigned int event_num;
	event->Branch("eventNumber", &event_num, "eventNumber/i");

	vector<unsigned int> eventEndMiss;
	vector<map<unsigned short, unsigned short
	map<unsigned short, array<vector<unsigned int>, 64>> channelStartMiss;
	vector<int> deltaEventNumOver;
	map<unsigned short, unsigned int> firstEventNum;
	map<unsigned short, unsigned int> lastEventNum;
	map<unsigned short, vector<unsigned int>> adcChecksumMismatch;
	map<unsigned short, vector<unsigned int>> adcCntMismatch;	
	map<unsigned short, vector<unsigned int>> femHeaderMiss;	

	streamsize totalSize = fbin.tellg();
	fbin.seekg(0, ios::beg);
	streamsize bytesRead = 0;

  while (fbin) {
	  switch (state) {
		  case STATE::WAIT_EVENT_START: {
				fbin.read(reinterpret_cast<char*>(&word32b), sizeof(word32b));
				if (debug) cout << "WAIT_EVENT_START: " << "0x" << uppercase << hex << word32b << endl;
				if (word32b == EVENT_START) {
					if (!skip_first) {
						event->Fill();
						if (event_end_miss) ++nEventEndMiss;
					}
					skip_first = false;
					event_new = true;
					event_end_miss = true;
					state = STATE::WAIT_FEM_HEADER;
				}
				else state = STATE::WAIT_EVENT_START;
				break;
			}
		  case STATE::WAIT_FEM_HEADER: {
				fbin.read(reinterpret_cast<char*>(&word32b), sizeof(word32b));
				if (debug) cout << "WAIT_FEM_HEADER: " << "0x" << uppercase << hex << word32b << endl;
				if ((word32b & 0xFFFF) == FEM_HEADER) {
					currFEMSlot = (word32b >> 16) & 0x7F;
					unsigned short femID = (word32b >> 23) & 0x1F;
					currFEMSlot = currFEMSlot;
					if (fems.find(currFEMSlot) == fems.end()) {
						fems[currFEMSlot] = new femNU();
						event->Branch(Form("fem%d",currFEMSlot), "femNU", &fems[currFEMSlot]);
					}
					fems[currFEMSlot]->setFEMSlot(currFEMSlot);
					fems[currFEMSlot]->setFEMID(femID);
					fems[currFEMSlot]->clearChannels();
					state = STATE::GET_ADC_WORD_CNT;
				}
				else state = STATE::WAIT_FEM_HEADER;
				break;
			}
		  case STATE::GET_ADC_WORD_CNT: {
				fbin.read(reinterpret_cast<char*>(&word32b), sizeof(word32b));
				if (debug) cout << "GET_ADC_WORD_CNT: " << "0x" << uppercase << hex << word32b << endl;
				unsigned int adcCnt = ((word32b & 0xFFF) << 12) | ((word32b >> 16) & 0xFFF);
				fems[currFEMSlot]->setADCCnt(adcCnt);
				state = STATE::GET_EVENT_NUM;
				break;
			}
		  case STATE::GET_EVENT_NUM: {
				fbin.read(reinterpret_cast<char*>(&word32b), sizeof(word32b));
				if (debug) cout << "GET_EVENT_NUM: " << "0x" << uppercase << hex << word32b << endl;
				unsigned int eventNum = ((word32b & 0xFFF) << 12) | ((word32b >> 16) & 0xFFF);
				if (event_new) {
					event_num = eventNum;
					event_new = false;
				}
				fems[currFEMSlot]->setEventNum(eventNum);
				state = STATE::GET_EVENT_PACKET_FRAME_NUM;
				break;
			}
		  case STATE::GET_EVENT_PACKET_FRAME_NUM: {
				fbin.read(reinterpret_cast<char*>(&word32b), sizeof(word32b));
				if (debug) cout << "GET_EVENT_PACKET_FRAME_NUM: " << "0x" << uppercase << hex << word32b << endl;
				unsigned int eventFrameNum = ((word32b & 0xFFF) << 12) | ((word32b >> 16) & 0xFFF);
				fems[currFEMSlot]->setEventFrameNum(eventFrameNum);
				state = STATE::GET_ADC_WORD_CHECKSUM;
				break;
			}
		  case STATE::GET_ADC_WORD_CHECKSUM: {
				fbin.read(reinterpret_cast<char*>(&word32b), sizeof(word32b));
				if (debug) cout << "GET_ADC_WORD_CHECKSUM: " << "0x" << uppercase << hex << word32b << endl;
				unsigned int adcChecksum = ((word32b & 0xFFF) << 12) | ((word32b >> 16) & 0xFFF);
				fems[currFEMSlot]->setADCChecksum(adcChecksum);
				state = STATE::GET_SAMPLE_NUM;
				break;
			}
		  case STATE::GET_SAMPLE_NUM: {
				fbin.read(reinterpret_cast<char*>(&word32b), sizeof(word32b));
				if (debug) cout << "GET_SAMPLE_NUM: " << "0x" << uppercase << hex << word32b << endl;
				unsigned short sampleNum = ((word32b & 0xF) << 8) | ((word32b >> 16) & 0xFF);
				unsigned int trigFrameNum = (fems[currFEMSlot]->getEventFrameNum() & (~0xF)) | ((word32b >> 4) & 0xF);
				fems[currFEMSlot]->setSampleNum(sampleNum);
				fems[currFEMSlot]->setTrigFrameNum(trigFrameNum);
				state = STATE::WAIT_CHANNEL_START;
				break;
			}
			case STATE::WAIT_CHANNEL_START: {
				fbin.read(reinterpret_cast<char*>(&word16b), sizeof(word16b));
				if (debug) cout << "WAIT_CHANNEL_START: " << "0x" << uppercase << hex << word16b << endl;
				if (word16b == 0x0) state = STATE::GET_EVENT_END;
				else if (word16b == FEM_HEADER) state = STATE::GET_FEM_HEADER_L;
				else if ((word16b >> 12) == 0x4) {
					channel->clearADCs();
					channel->clearSampleNums();
					currSampleNumCnt = 0;
					unsigned short channelNum = (word16b & 0x3F);
					channel->setChannelNum(channelNum);
					state = STATE::WAIT_CHANNEL_END;
				}
				else state = STATE::WAIT_CHANNEL_START;
				break;
			}
		  case STATE::WAIT_CHANNEL_END: {
				fbin.read(reinterpret_cast<char*>(&word16b), sizeof(word16b));			
				if (debug) cout << "WAIT_CHANNEL_END: " << "0x" << uppercase << hex << word16b << endl;
				if (word16b == 0x0) {
					fems[currFEMSlot]->pushChannel(*channel);
					state = STATE::GET_EVENT_END;
				}
				else if (word16b == FEM_HEADER) {
					fems[currFEMSlot]->pushChannel(*channel);
					state = STATE::GET_FEM_HEADER_L;
				}
				else if ((word16b >> 12) == 0x4) {
					fems[currFEMSlot]->pushChannel(*channel);
					channel->clearADCs();
					channel->clearSampleNums();
					currSampleNumCnt = 0;
					unsigned short channelNum = (word16b & 0x3F);
					channel->setChannelNum(channelNum);
					state = STATE::WAIT_CHANNEL_END;
				}
				else if ((word16b >> 12) == 0x5) {
					fems[currFEMSlot]->pushChannel(*channel);
					state = STATE::WAIT_CHANNEL_START;
				}
				else {
					if ((word16b >> 14) == 0b00) {
						currADC = (word16b & 0xFFF);
						channel->pushADC(currADC);
						channel->pushSampleNum((fems[currFEMSlot]->getSampleNum() + currSampleNumCnt));
cout<<dec<<fems[currFEMSlot]->getEventFrameNum()<<"\t"<<fems[currFEMSlot]->getFEMID()<<"\t"<<channel->getChannelNum()<<"\t"<<currSampleNumCnt<<"\t"<<channel->getSampleNums().back()<<"\t"<<channel->getADCs().back()<<"\t"<<fems[currFEMSlot]->getEventNum()<<endl;
						++currSampleNumCnt;
					}
					else if ((word16b >> 14) == 0b10) {
						bitset<14> huffmanBits((word16b & 0x3FFF));
						stack<short> huffmanCodes;
						unsigned short nzero = 0;
//cout<<huffmanBits<<endl;
						for (int bit=13; bit>-1; --bit) {
							if (huffmanBits[bit]) {
								huffmanCodes.push(nzero);
								nzero = 0;
							}
							else ++nzero;
						}
						while (!huffmanCodes.empty()) {
								currADC += HUFFMAN_TABLE.at(huffmanCodes.top());
								channel->pushADC(currADC);
								channel->pushSampleNum((fems[currFEMSlot]->getSampleNum() + currSampleNumCnt));
cout<<dec<<fems[currFEMSlot]->getEventFrameNum()<<"\t"<<fems[currFEMSlot]->getFEMID()<<"\t"<<channel->getChannelNum()<<"\t"<<currSampleNumCnt<<"\t"<<channel->getSampleNums().back()<<"\t"<<channel->getADCs().back()<<"\t"<<fems[currFEMSlot]->getEventNum()<<endl;
								++currSampleNumCnt;
								huffmanCodes.pop();
						}
					}
					state = STATE::WAIT_CHANNEL_END;
				}
				break;
			}
			case STATE::GET_FEM_HEADER_L: {
				fbin.read(reinterpret_cast<char*>(&word16b), sizeof(word16b));
				if (debug) cout << "GET_FEM_HEADER_L: " << "0x" << uppercase << hex << word16b << endl;
				if (word16b == 0xFFFF) {
					eventEndMiss.push_back(event_num);
					state = STATE::WAIT_FEM_HEADER;
				}
				else {
					currFEMSlot = word16b & 0x7F;
					unsigned short femID = (word16b >> 7) & 0x1F;
					if (fems.find(currFEMSlot) == fems.end()) {
						fems[currFEMSlot] = new femNU();
						event->Branch(Form("fem%d",currFEMSlot), "femNU", &fems[currFEMSlot]);
					}
					fems[currFEMSlot]->setFEMSlot(currFEMSlot);
					fems[currFEMSlot]->setFEMID(femID);
					fems[currFEMSlot]->clearChannels();
					state = STATE::GET_ADC_WORD_CNT;
				}
				break;
			}
			case STATE::GET_EVENT_END: {
				fbin.read(reinterpret_cast<char*>(&word16b), sizeof(word16b));
				if (debug) cout << "GET_EVENT_END: " << "0x" << uppercase << hex << word16b << endl;
				if (word16b == EVENT_END) state = STATE::WAIT_EVENT_START;
				else if (word16b == FEM_HEADER) {
					eventEndMiss.push_back(event_num);
					state = STATE::GET_FEM_HEADER_L;
				}
				else state = STATE::GET_EVENT_END;
				break;
			}
		}

		if (progressBar) {
			streamsize count = fbin.gcount();
			bytesRead += count;
			double progress = static_cast<double>(bytesRead) / totalSize;
			displayProgressBar(progress);
		}
	}
	event->Fill();
	if (progressBar) cout << endl;

	froot->Write();
	froot->Close();

	fbin.close();

	ofstream flog;
  flog.open(logname);
	flog << "Number of missing event end: " << nEventEndMiss << endl;
	flog.close();

	return 0;
}

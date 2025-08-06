#include <iostream>
#include <fstream>
#include <stdint.h>
#include <string.h>
#include <math.h>
#include <map>
#include <tuple>
#include <vector>
#include <typeinfo>
#include <ctime>
#include <sys/time.h>
#include <cstdint>
#include <bitset>
#include <numeric>
#include <filesystem>

using namespace std;

int main(int argc, char* argv[]) {
  bool print=false; // change if you want to print detailed decoder output
  int femHdrCount=0;
  uint32_t fem, fem_idx;
  bool countheader=false;
  bool lookupFEM=false;
  int32_t  checksum_lower12bit, checksum_higher12bit, header_checksum, checksum =-1;
  int32_t  wordcount_lower12bit, wordcount_higher12bit, header_wordcount, wordcount = -1;
  int64_t frame, frame_lower12bit, frame_higher12bit;
  uint16_t sample, sample_lower8bits, sample_higher4bits;
  bool inFrame = false;
  int endofFrame = 0;
  constexpr int nfems = 16;
  std::array<int, nfems> wordcount_fail = {};
  std::array<int, nfems> checksum_fail = {};
  std::array<int, nfems> missed_femheaders = {};
  std::array<int, nfems> previous_frame = {};
  previous_frame.fill(-1);
  std::array<int, nfems> missed_frames = {};
  int channel, previous_channel = -1;
  std::array<int, nfems> missed_channelstart = {};
  int inADCdata = false;
  std::array<int, nfems> missed_ROIstart = {};
  std::array<int, nfems> missed_ROIend = {};
  int firstframe;
  bool foundfirstframe = false;

  if (argc < 4) {
        std::cerr << "Usage: " << argv[0] << " inputfile run_number tpc_number" << std::endl;
        return 1;
  }

  const char* filename = argv[1];
  std::ifstream binFile(filename, std::ios::binary);
  if (!binFile) {
    std::cerr << "Error: could not open file " << filename << std::endl;
    return 1;
  }

  std::string outfilename = "run" + std::string(argv[2]) + "_tpc" + std::string(argv[3]) + "_dataformat_metrics.txt";
  bool new_file = !std::filesystem::exists(outfilename) || std::filesystem::file_size(filename) == 0;
  std::ofstream outfile(outfilename, std::ios::app);
  if (new_file) {
    outfile << "FirstFrame\tLastFrame\tMissedFrameEnds\tMissedFEMHeaders\tMissedFrames\tMissedChannelStarts\tMissedROIStarts\tMissedROIEnds\tWordcountFails\tChecksumFails\n";
  }


  while( binFile.peek() != EOF ){
    uint32_t word32b;
    binFile.read( reinterpret_cast<char*>(&word32b), sizeof(word32b) );

    std::cout.setf ( std::ios::hex, std::ios::basefield );  // set hex as the basefield
    std::cout.setf ( std::ios::showbase ); // activate showbase    i.e with prefix 0x

    //std::cout << "word: " << std::hex << word32b << std::endl;

    uint16_t first16b = word32b & 0xffff; //right 16 bit word
    uint16_t last16b = (word32b>>16) & 0xffff; // left 16 bit word
    if(word32b == 0xffffffff) {
      femHdrCount=1;
      lookupFEM=true;
      if ((inFrame == true) && (frame>0)){
        if (print){
          std::cout << "Missing end of frame marker for frame " << std::dec << frame << std::endl;
        }
        endofFrame++;
      }
      inFrame=true;
    }
    else if (word32b  == 0xe0000000){
      countheader=false;
      inFrame=false;
    }

    else if (inFrame){
      if(lookupFEM==true){
        if ((last16b >>8 == 0xf1) && (first16b == 0xffff)){ // there is no word which identifies end of header words for first FEM and start of next FEM , so we have to use this way to identify FEM words instead of using femHdrCount==2
          countheader=true;
          if (previous_channel != -1) {
            int missing_channels = 63 - previous_channel;
            if (missing_channels > 0) {
                if (print){
                  std::cout << "Missing last " << std::dec << missing_channels << " channels at end of fem data for frame " << frame << " and fem " << fem << std::endl;
                }
                missed_channelstart[fem_idx] += missing_channels;
            }
          }

          previous_channel = -1;
          channel = 0;

          if ((wordcount != header_wordcount) && (wordcount > -1) && (frame>1)){
            if (print){
              std::cout << "For frame " << std::dec << frame << ", fem " << fem << " header wordcount: " << header_wordcount << " does not match manual wordcount: " << wordcount << std::endl;
            }
            wordcount_fail[fem_idx]++;
          }

          if ((checksum > header_checksum) && (checksum > -1) && (frame>1)){
            if (print){
              std::cout << "For frame " << std::dec << frame << ", fem " << fem << " header checksum: " << header_checksum << " is larger than manual checksum: " << checksum << std::endl;
            }
            checksum_fail[fem_idx]++;
          }

          fem =(last16b&0x1f);
          fem_idx = fem-3;
          femHdrCount=1;
          lookupFEM=false;
        }
      }

      if(countheader==true){
        if (femHdrCount > 0) { // check that each expected word in header after header start starts with F
          if ( !(((last16b & 0xF000) == 0xF000 ) && ( (first16b & 0xF000) == 0xF000 )) ) {
            if (print){
              std::cout << "FEM header word " << femHdrCount - 1 << " for frame " << std::dec << frame << " and fem " << fem << " is missing." << std::endl;
            }
              missed_femheaders[fem_idx]++;
          }
        }

        femHdrCount+=1;

        if (femHdrCount==3){ // ADC word count
            wordcount_lower12bit= (last16b & 0xfff);
            wordcount_higher12bit= (first16b & 0xfff);

            header_wordcount = wordcount_higher12bit<<12|wordcount_lower12bit;
            wordcount = 0;
        }

        
        if(femHdrCount==5){
            frame_lower12bit= (last16b & 0xfff);
            frame_higher12bit= (first16b & 0xfff);
            frame = frame_higher12bit<<12|frame_lower12bit;

            if ((frame > 1) && (!foundfirstframe)){
              firstframe = frame;
              foundfirstframe = true;
            }

            int frame_diff = frame - previous_frame[fem_idx];
            if ((frame_diff != 1) && (frame_diff != 4) && (frame_diff > 0)){
              if (print){
                std::cout << "Difference between current frame and previous frame is " << std::dec << frame_diff << " frames for frame " << frame << " and previous frame " << previous_frame[fem_idx] << " for fem " << fem << std::endl;  
              }
              missed_frames[fem_idx] += frame_diff-1;
            }

            previous_frame[fem_idx] = frame;

        }

        else if(femHdrCount==6){
            checksum_lower12bit= (last16b & 0xfff);
            checksum_higher12bit= (first16b & 0xfff);

            header_checksum = checksum_higher12bit<<12|checksum_lower12bit;
            checksum = 0;
        
        }


        else if(femHdrCount==7){

            femHdrCount=-1;
            countheader=false;
            lookupFEM=true;
        }
    }

    else{

      if(first16b>>12 == 0x1){ // check for start of channel
        channel = (first16b & 0x3f);
        checksum += first16b;
        wordcount += 1;
        int channel_diff = channel - previous_channel;
        if ((channel_diff > 1) && (frame>1)){
          if (print){
            std::cout << "Channel starts from " << std::dec << previous_channel+1 << " and " << channel-1 << " are missing for frame " << frame << " for fem " << fem << std::endl;  
          }
            missed_channelstart[fem_idx] += channel_diff-1;
        }
        if (channel_diff < 0){
          if (print){
            std::cout << "CHANNELS ARE BEING REPEATED, FEM DATA IS CORRUPT" << std::endl;
          }          
        }
        previous_channel = channel;
        inADCdata = false;
      }
        
      else if ((first16b & 0xC000) == 0x4000){ // check for start of ROI
        checksum += first16b;
        wordcount += 1;
        if ((inADCdata == true) && (frame>1)){
          if (print){
            std::cout << "Missing ROI end for channel " << std::dec << previous_channel << " for frame " << frame << " and fem " << fem << std::endl;
          }
            missed_ROIend[fem_idx]++;
        }
        inADCdata = true;
      
      }

      else if (first16b>>12 == 0x3){ // check for end of ROI
        checksum += first16b;
        wordcount += 1;
        if ((inADCdata == false) && (frame>1)){
          if (print){
            std::cout << "Missing ROI start for channel " << std::dec << channel << " for frame " << frame << " and fem " << fem << std::endl;
          }
            missed_ROIstart[fem_idx]++;
        }     
        inADCdata = false;

      }

      else{
        checksum += first16b;
        wordcount += 1;
      }

      if(last16b>>12 == 0x1){ // check for start of channel
        channel = (last16b & 0x3f);
        checksum += last16b;
        wordcount += 1;
        int channel_diff = channel - previous_channel;
        if ((channel_diff > 1) && (frame>1)){
          if (print){
            std::cout << "Channel starts from " << std::dec << previous_channel+1 << " and " << channel-1 << " are missing for frame " << frame << " for fem " << fem << std::endl;  
          }
          missed_channelstart[fem_idx] += channel_diff-1;
        }

        if (channel_diff < 0){
          if (print){
            std::cout << "CHANNELS ARE BEING REPEATED, FEM DATA IS CORRUPT" << std::endl;
          }          
        }

        previous_channel = channel;
        inADCdata = false;
      }
        
      else if ((last16b & 0xC000) == 0x4000){ // check for start of ROI
        checksum += last16b;
        wordcount += 1;
        if ((inADCdata == true) && (frame>1)){
          if (print){
            std::cout << "Missing ROI end for channel " << std::dec << previous_channel << " for frame " << frame << " and fem " << fem << std::endl;
          }
          missed_ROIend[fem_idx]++;
        }
        inADCdata = true;
      
      }

      else if (last16b>>12 == 0x3){ // check for end of ROI
        checksum += last16b;
        wordcount += 1;
        if ((inADCdata == false) && (frame>1)){
          if (print){
            std::cout << "Missing ROI start for channel " << std::dec << channel << " for frame " << frame << " and fem " << fem << std::endl;
          }
          missed_ROIstart[fem_idx]++;
        }     
        inADCdata = false;

      }

      else{
        checksum += last16b;
        wordcount += 1;
      }


    }

    }//end of else
  else{ // for words at the beginning of a file before a start of frame word

  }
  }//end of while loop
  std::ofstream outfile2("run" + std::string(argv[2]) + "_tpc" + std::string(argv[3]) + "_fem_metrics_frame"+ std::to_string(firstframe) + ".txt");
  outfile2 << "FEM\tMissedFEMHeaders\tMissedFrames\tMissedChannelStarts\tMissedROIStarts\tMissedROIEnds\tWordcountFails\tChecksumFails\n";
  for (int fem = 0; fem < nfems; ++fem) {
    outfile2 << fem+3 << "\t" << missed_femheaders[fem] << "\t" << missed_frames[fem]<< "\t" << missed_channelstart[fem] << "\t" << missed_ROIstart[fem] << "\t" << missed_ROIend[fem] << "\t" << wordcount_fail[fem] << "\t" << checksum_fail[fem] << "\n";
  }

  double avg_checksum_fail = std::accumulate(checksum_fail.begin(), checksum_fail.end(), 0.0) / checksum_fail.size();
  double avg_wordcount_fail = std::accumulate(wordcount_fail.begin(), wordcount_fail.end(), 0.0) / wordcount_fail.size();
  double avg_missed_femheaders = std::accumulate(missed_femheaders.begin(), missed_femheaders.end(), 0.0) / missed_femheaders.size();
  double avg_missed_frames = std::accumulate(missed_frames.begin(), missed_frames.end(), 0.0) / missed_frames.size();
  double avg_missed_channelstart = std::accumulate(missed_channelstart.begin(), missed_channelstart.end(), 0.0) / missed_channelstart.size();
  double avg_missed_roistart = std::accumulate(missed_ROIstart.begin(), missed_ROIstart.end(), 0.0) / missed_ROIstart.size();
  double avg_missed_roiend = std::accumulate(missed_ROIend.begin(), missed_ROIend.end(), 0.0) / missed_ROIend.size();

  outfile << firstframe << "\t" << frame << "\t" << endofFrame << "\t" << avg_missed_femheaders << "\t" << avg_missed_frames << "\t" << avg_missed_channelstart << "\t" << avg_missed_roistart << "\t" << avg_missed_roiend << "\t" << avg_wordcount_fail << "\t" << avg_checksum_fail << "\n";
}// end of int main function

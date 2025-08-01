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
//#include <filesystem>                                                                                                                    
#include <boost/filesystem.hpp>
#include <bitset>

#include <chrono>
#include <unistd.h>
#include <thread>

#include <dirent.h>
#include <cstring>
#include <random>


using namespace std;


int main(int argc, char* argv[])
{
  int k=-1;
  int femHdrCount=0;
  uint32_t frame = 0;
  uint32_t minFrame;
  int FrameCounter = 0;
  uint32_t frame1, frame2, frame3, frame4, framebitsToskip;
  uint32_t fem;
  int channel,channel1, mappedchannel;
  uint16_t timetick=0;

  uint64_t adcval, amp, intgrl; // intgrlval;                                                 
  int countFlipBit=0;
  int totval=1;
  int diff,diffcheck,nearestPower,diffprev;
  std::vector<int> adcdiff;

  int samplecount;

  int tot;
  uint64_t adcvalremainder, prevadcval, prevprevadcval;// baseline;                                                                                    
  bool inFrame, countadc;
  countadc=false;
  inFrame=false;

  //  std::ifstream binFile;                                                                                                                           
  bool doincrement=false;
  bool proceed=false;
  bool print=false;
  std::vector<std::pair<std::string, int>> huffmanTable = {
    {"1", 0},
    {"01", -1},
    {"001", 1},
    {"0001", -2},
    {"00001", 2},
    {"000001", -3},
    {"0000001", 3}
  };

  // --- MODIFICATION START ---

  // 1. Check if an input file was provided on the command line
  if (argc < 2) {
    cerr << "Error: No input file specified." << endl;
    cerr << "Usage: " << argv[0] << " <input_file>" << endl;
    return 1; // Exit with an error code
  }

  // 2. Get the input file path from the command-line arguments
  string inputFilePath = argv[1];
  
  // 3. Create the output filename from the input filename
  string outputFilePath;
  // Find the last '.' to remove the extension
  size_t lastDotPos = inputFilePath.rfind('.');
  if (lastDotPos != string::npos) {
    // Get the base name without the extension
    outputFilePath = inputFilePath.substr(0, lastDotPos);
  } else {
    // No extension found, use the whole name
    outputFilePath = inputFilePath;
  }
  // Append the new suffix
  outputFilePath += "_waveform.txt";

  std::ifstream binFile;
  binFile.open(inputFilePath, std::ios::binary);
  if (!binFile.is_open()) {
    cerr << "Error: Could not open input file '" << inputFilePath << "'" << endl;
    return 1;
  }

  std::ofstream outfile;
  outfile.open(outputFilePath);
  if (!outfile.is_open()) {
    cerr << "Error: Could not open output file '" << outputFilePath << "'" << endl;
    return 1;
  }

  cout << "Input file: " << inputFilePath << endl;
  cout << "Output file: " << outputFilePath << endl;

  bool firstend=true;
  bool endOfFirstFrame=false;

  bool  startwordcount=false;
  int wordcount=0;

  while( binFile.peek() != EOF ){
    uint32_t word32b;
    binFile.read( reinterpret_cast<char*>(&word32b), sizeof(word32b) );
    std::cout.setf ( std::ios::hex, std::ios::basefield );  // set hex as the basefield                                                                
    std::cout.setf ( std::ios::showbase ); // activate showbase    i.e with prefix 0x                                                                  
    uint16_t first16b = word32b & 0xffff; //right 16 bit word                                                                                          
    uint16_t last16b = (word32b>>16) & 0xffff; // left 16 bit word                                                                                     

    //    std::cout << "32-bit word- " << word32b << " \t" << "made from - " << last16b << first16b << std::endl;                                      

    if(firstend==true){
      if (word32b  == 0xe0000000){
	endOfFirstFrame=true;
	firstend=false;
      }
    }

    if(endOfFirstFrame==true) {

      if(word32b == 0xffffffff) {
        cout << "Start of frame ********************" << endl;
        femHdrCount=1;
        doincrement=true;
        inFrame=true;

      }
      else if (word32b  == 0xe0000000){
        cout << "End of frame*******************" << endl;
        inFrame=false;
        startwordcount=false;
        std::cout << "WORDS: " << std::dec << wordcount << std::endl;
        wordcount=0;
}

      else{
      if(inFrame==true) {
        if(doincrement==true){ //we need this boolean so as to stop FEM cntr after evaluating frame number.                                          
          femHdrCount+=1; 
         if (femHdrCount==5){ // FEM frame number                                                                                                     
            //      std::cout << "Word with hdrcnt 5:  "  << word32b << std::endl;                                                                    
            frame = (first16b & 0xfff);
            frame1 = (last16b>>6 & 0x3f);
            framebitsToskip = (last16b & 0x3f);   // last 6 bits of FEM frame number                                                                  
          }
          if (femHdrCount==8){ //ROI frame number                                                                                                   
            if(first16b>>12 == 0x1){
              frame2=(first16b>>6) & 0x3f;
              //Take care of roll over of bits                                                                                                         
              if ((framebitsToskip-frame2)>=0){
                frame3 = (frame<<12)+(frame1<<6)+(frame2);
                frame4 = (frame3 & 0xffffff);
                std::cout <<"Frame: " << std::dec << frame4 << std::endl;
                outfile << frame4 << "\n";
                outfile.flush();

                if(frame4==987){
                  std::cout << "32-bit word for frame : " << frame4 << " is : "<< std::hex << word32b << std::endl;
                }

                if(frame4>2){
                  print=true;
                }
                if(frame4>1){  //!=0){                                                                                                                 
                  FrameCounter+=1;
                }
                if(FrameCounter==1){
                  minFrame = frame4;
		}
		  else if ((framebitsToskip-frame2)<0){
		    frame3 = (frame<<12)+(frame1<<6)+(frame2);
		  }

		  k+=1;
		  if (k!=(frame3 & 0xffffff)){
		    k=(frame3 & 0xffffff);
		  }

		  doincrement=false;
		  femHdrCount=0;

		}
		else if(last16b>>12 == 0x1){
		  frame2=(last16b>>6) & 0x3f; // skip first 6 bits and then take 6 bits to count                                                     
		  if ((framebitsToskip-frame2)>=0){
		    frame3 = (frame<<12)+(frame1<<6)+(frame2);
		    //std::cout << "LH frame :***** " << std::dec << frame4 << std::endl; // (frame3 & 0xffffff) << std::endl;                       
		  }

		  if ((framebitsToskip-frame2)<0){
		    frame3 = (frame<<12)+(frame1<<6)+(frame2);
		    frame4 = (frame3 & 0xffffff);
		    std::cout<<"Frame: " <<  std::dec << frame4 << std::endl;
		    outfile << frame4 << "\n";
		    outfile.flush();
		    if(frame4==987){
		      std::cout << "32-bit word for frame : " << frame4 << " is : "<< std::hex << word32b << std::endl;
		    }

		    if(frame4>2){
		      print=true;
		    }
		    //outfile<<frame4 << "\n";                                                                                                       
  
		    if(frame4>1){
		      FrameCounter+=1;
		    }
		    if(FrameCounter==1){
		      minFrame = frame4;
		    }


		  }
		  k+=1;
		  if (k!=(frame3 & 0xffffff)){

		    k=(frame3 & 0xffffff);
		  }
		  doincrement=false;
		  femHdrCount=0;
		} 
	      }}

	    if(frame4==1 or frame4==987 or frame4==986 or frame4==993){

	      if ((last16b >>8 == 0xf1) and (first16b == 0xffff)){
		fem =(last16b&0x1f);
		std::cout << "Frame : " << std::dec << frame4 << std::endl;
		std::cout << "FEM number : " << std::dec << fem << std::endl;
		countadc=false;
		startwordcount=true;
	      }

	      else if(startwordcount==true) {
		wordcount++;
	      }
	    }
	  }
	}
      }}}}

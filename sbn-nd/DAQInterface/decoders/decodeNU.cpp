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

using namespace std;

int main(int argc, char* argv[]) {
  int femHdrCount=0;
  uint32_t fem;
  bool countheader=false;
  bool lookupFEM=false;
  int64_t event_lower12bit, event_higher12bit, event, frame_lower12bit, frame_higher12bit, frame, hexframe;
  uint32_t  checksum_lower12bit, checksum_higher12bit, checksum;
  uint16_t sample, sample_lower8bits, sample_higher4bits, triggerframe_4bits, triggerframe;
  bool inADCdata = false;
  int startchannel = -1;
  int samplecount = 0;
  int adcval = -1;
  std::vector<int> adcdiff;

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
      //cout << "Start of event*******************" << endl;
      //std::cout << "FEM hdrcnt 1 : " << femHdrCount << std::endl;
    }
    else if (word32b  == 0xe0000000){
      //cout << "End of event*******************" << endl;
      countheader=false;
    }

    else{
      if(lookupFEM==true){
        if ((last16b >>8 == 0xf1) and (first16b == 0xffff)){ // there is no word which identifies end of header words for first FEM and start of next FEM , so we have to use this way to identify FEM words instead of using femHdrCount==2
	        //std::cout << "FEM word: " << std::hex << word32b << std::endl;
          fem =(last16b&0x1f);
          //std::cout << "FEM number : " << std::hex << fem << std::endl;
          countheader=true;
          femHdrCount=1;
          lookupFEM=false;
        }
      }

      if(countheader==true){
        femHdrCount+=1;
        //std::cout << "FEM hdrcnt: " << femHdrCount << std::endl;
        //femHdrCount+=1;
        //std::cout << "FEM hdrcnt: " << femHdrCount << std::endl;
        //if (femHdrCount==3){
          //femHdrCount+=1;
          //std::cout << "Don't need this word" << word32b <<  " and fem counter: " << femHdrCount << std::endl;
        //}

      if (femHdrCount==4){
        //femHdrCount+=1;
        //std::cout << "event word: " << std::hex << word32b<<  " and fem counter: " << femHdrCount  << std::endl;
        //std::cout << "first16b " << std::hex << first16b << " , last: " << last16b << std::endl;
        event_lower12bit= (last16b & 0xfff);
        event_higher12bit= (first16b & 0xfff);
        event = event_higher12bit<<12|event_lower12bit ;
        //std::cout << "first16b " << std::hex << first16b << " msb: " << event_higher12bit << std::endl;
        //std::cout << "last16b " << std::hex << last16b << "lsb: " << event_lower12bit << std::endl;
        //std::cout << "event: " << std::dec << event << std::endl;
      }

      else if(femHdrCount==5){
        //femHdrCount+=1;
        //std::cout << "frame word: " <<  std::hex << word32b <<  " and fem counter: " << femHdrCount  << std::endl;
        //std::cout << "first16b " << std::hex <<first16b << " , last: "<< last16b << std::endl;
        frame_lower12bit= (last16b & 0xfff);
        frame_higher12bit= (first16b & 0xfff);
        frame = frame_higher12bit<<12|frame_lower12bit ;

        //std::cout << "hex frame: " << frame << std::endl;
        //std::cout << frame_lower12bit << std::endl;
        //std::cout << "FEM frame: " << std::dec << frame << std::endl;
      }

      else if(femHdrCount==7){
        //std::cout << "trigger frame word: " << word32b <<  " and fem counter: " << femHdrCount  << std::endl;
        //std::cout <<  "sample first16b " << std::hex <<first16b << " , last: "<< last16b << std::endl;
        sample_lower8bits = last16b & 0xFF;
        sample_higher4bits = first16b & 0xF;
        //triggerframe_4bits = (first16b>>4 & 0xF);
        //std::cout <<"trigger frame  4-bits: " <<  std::hex << triggerframe_4bits << std::endl;
        //std::cout << "hex frame: " << std::hex << frame << std::endl;

        //triggerframe &= ~0xf; //removing lower 4-bits
        //triggerframe |= (triggerframe_4bits & 0xf); //adding 4-bits from trig frame number to get a new trigger frame
	      //std::cout << "Trigger Frame: " << std::hex << frame << std::endl;
        //std::cout << "Trigger Frame: " << std::dec << frame << std::endl;

        //std::cout << sample_higher4bits << "\t" << sample_lower8bits << std::endl;
        sample = sample_higher4bits<<8|sample_lower8bits; //  ((first16b >>4) & 0xF);
        //std::cout << "hex sample: " << sample << std::endl;
        //std::cout << "sample: " << std::dec <<  sample << std::endl;

        //triggerframe_4bits = (first16b>>4 & 0x0F);
        //std::cout <<"trigger frame: " <<  triggerframe_4bits << std::endl;

        //outfile << fem << " \t" << event << " \t" << frame <<  " \t" << sample << " \n";


        //outputFile1 << fem << " \t" << event << " \t" << frame <<  " \t" << frame_lower12bit <<   " \t" << sample << "\t" << hexframe << " \n"; 
        //outfile.flush();
        femHdrCount=-1;
        countheader=false;
        lookupFEM=true;
      }
    }

     else{
        if ((first16b & 0xF000) == 0x4000) {  // channel start word
          startchannel = first16b & 0x3F;
          inADCdata = true;
          samplecount = 0;
          //std::cout << "Start ADC data for channel " << std::dec << startchannel << std::endl;
        }

        else if ((first16b & 0xF000) == 0x5000) { // channel end word                                                              
          int endchannel = first16b & 0x3F;
          if ((endchannel != startchannel)) {
            std::cerr << "Warning: ADC channel end " << endchannel << " doesn't match channel start " << startchannel << " at event " << event << std::endl;
          }
          inADCdata = false;
          samplecount = 0;
        }                                

        else if (inADCdata) {
          if ((first16b & 0x8000) == 0x0000) {
            //uncompressed: bit 15=0, lower 12 bits is ADC
            adcval = first16b & 0x0fff;

            outfile<< frame << "\t" << fem  << "\t" << startchannel << "\t" << samplecount << "\t" << sample+samplecount << "\t" << adcval << "\t" <<  event << "\n";
            outfile.flush();

            samplecount+=1;
            //std::cout << "ADC " << std::dec << adcval << std::endl;
          }

	        else if ((first16b & 0x8000) == 0x8000) { 
            std::bitset<16> bits(first16b);
            bool foundFirstOne = false;
            int zeroCount = 0;
            for (int i = 0; i < 16; ++i) { // Start from LSB (bit 0)       
              if (!foundFirstOne) {
                if (bits[i] == 1) {
                  foundFirstOne = true;
                }
                } else {
                    if (bits[i] == 0) {
                    zeroCount++;
                } else { // Found next 1 
                    
            switch (zeroCount) {
            case 0: adcdiff.emplace_back(0); break;  // 1                     
                                                                              
            case 1: adcdiff.emplace_back(-1); break; // 01                    
                                                                              
            case 2: adcdiff.emplace_back(+1); break; // 001                   
                                                                              
			      case 3: adcdiff.emplace_back(-2); break; // 0001                  
                                                                              
            case 4: adcdiff.emplace_back(+2); break; // 00001                 
                                                                              
            case 5: adcdiff.emplace_back(-3); break; // 000001                
                                                                              
            case 6: adcdiff.emplace_back(+3); break; // 0000001               
                                                                              
            default: break; // Ignore if zeroCount exceeds the pattern        
                                                                              
            }

            zeroCount = 0;

              }
            }
          }
	        for (int d : adcdiff){
            adcval += d;
	    		  outfile<< frame << "\t" << fem  << "\t" << startchannel << "\t" << samplecount << "\t" << sample+samplecount << "\t" << adcval << "\t" <<  event << "\n";
	    		  outfile.flush();
			      
			      samplecount+=1;
          }
          adcdiff.clear();

          }

          else {
            std::cerr << "Warning: I don't know what to do with this word (in channel ADC) "  << std::hex << first16b << std::endl;
          } 
        }

        else {
          if (first16b != 0){ // I think we get these extra 0 words when the first word is the 0000 part of a channel start or end word
            std::cerr << "Warning: I don't know what to do with this word " << first16b << std::endl;
          }
        }

        if ((last16b & 0xF000) == 0x4000) {  // channel start word
          startchannel = last16b & 0x3F;
          inADCdata = true;
          samplecount = 0;
          //std::cout << "Start ADC data for channel " << std::dec << startchannel << std::endl;
        }
        
        else if ((last16b & 0xF000) == 0x5000) { // channel end word                                                                
          int endchannel = last16b & 0x3F;
          if (endchannel != startchannel) {
            std::cerr << "Warning: ADC channel end " << endchannel << " doesn't match channel start " << startchannel << " at event " << event << std::endl;
          }
          inADCdata = false;
          samplecount = 0;
        }

        else if (inADCdata) {
          if ((last16b & 0x8000) == 0x0000) {
            // uncompressed: bit 15=0, lower 12 bits is ADC                                                                                                                                                             
            adcval = last16b & 0x0fff;
            outfile<< frame << "\t" << fem  << "\t" << startchannel << "\t" << samplecount << "\t" << sample+samplecount << "\t" << adcval << "\t" <<  event << "\n";
            outfile.flush();
            samplecount+=1;
            //std::cout << "Sample " << std::dec << sampleno << ", ADC " << std::dec << adc << std::endl; 
          }                                                                                                               
	
	        else if ((last16b & 0x8000) == 0x8000) {               
            std::bitset<16> bits(last16b);
            bool foundFirstOne = false;
            int zeroCount = 0;
            for (int i = 0; i < 16; ++i) { // Start from LSB (bit 0)       
              if (!foundFirstOne) {
                if (bits[i] == 1) {
                  foundFirstOne = true;
                }
              } else {
                if (bits[i] == 0) {
                  zeroCount++;
                } else { // Found next 1 
                    
            switch (zeroCount) {
            case 0: adcdiff.emplace_back(0); break;  // 1                     
                                                                              
            case 1: adcdiff.emplace_back(-1); break; // 01                    
                                                                              
            case 2: adcdiff.emplace_back(+1); break; // 001                   
                                                                              
			      case 3: adcdiff.emplace_back(-2); break; // 0001                  
                                                                              
            case 4: adcdiff.emplace_back(+2); break; // 00001                 
                                                                              
            case 5: adcdiff.emplace_back(-3); break; // 000001                
                                                                              
            case 6: adcdiff.emplace_back(+3); break; // 0000001               
                                                                              
            default: break; // Ignore if zeroCount exceeds the pattern        
                                                                              
            }

            zeroCount = 0;

              }
            }
          }
	        for (int d : adcdiff){
            adcval += d;
	    		  outfile<< frame << "\t" << fem  << "\t" << startchannel << "\t" << samplecount << "\t" << sample+samplecount << "\t" << adcval << "\t" <<  event << "\n";
	    		  outfile.flush();
			      
			      samplecount+=1;
          }
          adcdiff.clear();

          }
          else {
            std::cerr << "Warning: I don't know what to do with this word (in channel ADC) "  << std::hex << last16b << std::endl;
          } 
      }
      
      else {
        if (last16b != 0){
          std::cerr << "Warning: I don't know what to do with this word " << std::hex << last16b << std::endl;
        }
      }

     }
    }//end of else

  }//end of while loop
  //std::cout << "Total number of events: " << std::dec << event << std::endl;
}// end of int main function

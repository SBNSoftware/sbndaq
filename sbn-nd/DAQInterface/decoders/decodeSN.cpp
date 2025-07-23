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
  uint16_t sample, sample_lower8bits, sample_higher4bits;
  bool inADCdata = false;
  int samplecount = 0;
  int header_wordcount;
  int previous_frame = -1;
  int wordcount;
  int adcval = -1;
  int channel;//,channel1, mappedchannel;
  uint16_t timetick=0;
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
      //cout << "Start of frame*******************" << endl;
      //std::cout << "FEM hdrcnt 1 : " << femHdrCount << std::endl;
    }
    else if (word32b  == 0xe0000000){
      //cout << "End of frame*******************" << endl;
      previous_frame = frame;
      countheader=false;
    }

    else{
      if(lookupFEM==true){
        if ((last16b >>8 == 0xf1) and (first16b == 0xffff)){ // there is no word which identifies end of header words for first FEM and start of next FEM , so we have to use this way to identify FEM words instead of using femHdrCount==2
          
          if ((wordcount != header_wordcount)){
            std::cout << "For frame " << std::dec << frame << ", fem " << fem << " header wordcount: " << header_wordcount << " does not match manual wordcount: " << wordcount << std::endl;
          }
          fem =(last16b&0x1f);
          //std::cout << "FEM number: " << std::dec << fem << std::endl;
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

        if (femHdrCount==3){ // ADC word count
            int wordcount_lower12bit= (last16b & 0xfff);
            int wordcount_higher12bit= (first16b & 0xfff);

            header_wordcount = wordcount_higher12bit<<12|wordcount_lower12bit;
            wordcount=0;
        }
        
        else if(femHdrCount==5){
            //femHdrCount+=1;
            //std::cout << "frame word: " <<  std::hex << word32b <<  " and fem counter: " << femHdrCount  << std::endl;
            //std::cout << "first16b " << std::hex <<first16b << " , last: "<< last16b << std::endl;
            frame_lower12bit= (last16b & 0xfff);
            frame_higher12bit= (first16b & 0xfff);
            frame = frame_higher12bit<<12|frame_lower12bit;

            int frame_diff = frame - previous_frame;
            if ((frame_diff != 1) && (frame_diff != 4)){
                std::cerr << "Difference between current frame and previous frame is " << std::dec << frame_diff << " frames" << std::endl;  
            }

            //std::cout << "Frame: " << std::dec << frame << std::endl;
            //std::cout << frame_lower12bit << std::endl;
            //if (fem == 3){
            //    std::cout << "FEM frame: " << std::dec << frame << std::endl;
            //}
        }

        else if(femHdrCount==7){

            femHdrCount=-1;
            countheader=false;
            lookupFEM=true;
        }
    }

    else{
        
        if(first16b>>12 == 0x1){
            channel = (first16b & 0x3f);
            inADCdata = false;
            samplecount = 0;
            wordcount += 1;
            //std::cout << "start of channel " << channel << " : " << wordcount << std::endl;
            // std::cout << "Start ADC data for channel " << std::dec << channel << std::endl;
        }
        
        else if ((first16b & 0xC000) == 0x4000){
            inADCdata = true;
            samplecount = 0;
            timetick =  first16b & 0x3fff ;
            wordcount += 1;
            //std::cout << "start of waveform : " << wordcount << std::endl;
            //std::cout << "ROI start sample: " << std::dec << timetick << std::endl;
        }

        else if (inADCdata) {
            if (first16b>>12 == 0x2){
                adcval = (first16b & 0xfff);
                outfile << frame << "\t" << fem  << "\t" << channel << "\t" << timetick+samplecount << "\t" << adcval <<  "\n";
                outfile.flush();
                samplecount += 1;
                wordcount += 1;
                //std::cout << "non-huffman " << adc << " : " << wordcount << std::endl;
                //std::cout << "Wordcount - post nonhuffman word: " << std::dec << wordcount << std::endl;
                //std::cout << "ADC word: " << std::dec << adcval << std::endl;
            }

            else if (first16b>>12 == 0x3){
                adcval = (first16b & 0xfff);
                //std::cout << " EOW packet ADC word: " << std::dec << adcval << std::endl;
                outfile << frame << "\t" << fem  << "\t" << channel << "\t" << timetick+samplecount << "\t" << adcval <<  "\n";
                outfile.flush();
                inADCdata = false;
                samplecount = 0;
                wordcount += 1;
                //std::cout << "end of ROI " << adc << " : " << wordcount << std::endl;
                //std::cout << "Wordcount - post ROI end: " << std::dec << wordcount << std::endl;
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
	    		    outfile << frame << "\t" << fem  << "\t" << channel << "\t" << timetick+samplecount << "\t" << adcval << "\n";
	    		    outfile.flush();
			      
			        samplecount+=1;
                }
                adcdiff.clear();
                wordcount += 1;

            }

            else {
                if (first16b != 0){
                    std::cout << "Warning: I don't know what to do with this word (in channel ROI) "  << std::hex << first16b << std::endl;
                    wordcount += 1;
                }
            } 
        }

        else {
          if (first16b != 0){ // I think we get these extra 0 words when the first word is the 0000 part of a channel start or end word                   
            std::cout << "Warning: I don't know what to do with this word " << std::hex << first16b << std::endl;
            wordcount += 1;
          }
        }
        
        if(last16b>>12 == 0x1){
            channel = (last16b & 0x3f);
            inADCdata = false;
            samplecount = 0;
            wordcount += 1;
            //std::cout << "start of channel " << channel << " : " << wordcount << std::endl;
            //std::cout << "Start ADC data for channel " << std::dec << channel << std::endl;
        }
        
        else if ((last16b & 0xC000) == 0x4000){
            inADCdata = true;
            samplecount = 0;
            timetick =  last16b & 0x3fff ;
            wordcount += 1;
            //std::cout << "start of waveform : " << wordcount << std::endl;
            //std::cout << "ROI start sample: " << std::dec << timetick << std::endl;
        }
        
        else if (inADCdata) {
            if (last16b>>12 == 0x2){
                adcval = (last16b & 0xfff);
                outfile << frame << "\t" << fem  << "\t" << channel << "\t" << timetick+samplecount << "\t" << adcval <<  "\n";
                outfile.flush();
                samplecount += 1;
                wordcount += 1;
                //std::cout << "non-huffman " << adc << " : " << wordcount << std::endl;
                //std::cout << "Wordcount - post nonhuffman word: " << std::dec << wordcount << std::endl;
                //std::cout << "ADC word: " << std::dec << adcval << std::endl;
            }

            else if (last16b>>12 == 0x3){
                adcval = (last16b & 0xfff);
                //std::cout << " EOW packet ADC word: " << std::dec << adcval << std::endl;
                outfile << frame << "\t" << fem  << "\t" << channel << "\t" << timetick+samplecount << "\t" << adcval <<  "\n";
                outfile.flush();
                inADCdata = false;
                samplecount = 0;
                wordcount += 1;
                //std::cout << "end of ROI " << adc << " : " << wordcount << std::endl;
                //std::cout << "Wordcount - post ROI end: " << std::dec << wordcount << std::endl;
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
	    		    outfile << frame << "\t" << fem  << "\t" << channel << "\t" << timetick+samplecount << "\t" << adcval << "\n";
	    		    outfile.flush();
			      
			        samplecount +=1 ;
                }
                adcdiff.clear();

                wordcount += 1;

                }

            else {
                if (last16b != 0){
                    std::cout << "Warning: I don't know what to do with this word (in channel ROI) "  << std::hex << last16b << std::endl;
                wordcount += 1;
                }
            } 
        } 
      
      else {
        if (last16b != 0){
            std::cout << "Warning: I don't know what to do with this word " << std::hex << last16b << std::endl;
            wordcount += 1;
        }
      }

     }
    }//end of else

  }//end of while loop
  //std::cout << "Total number of events: " << std::dec << event << std::endl;
}// end of int main function

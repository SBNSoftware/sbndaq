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
#include <algorithm>
#include <numeric>
#include <filesystem>

using namespace std;

int main(int argc, char* argv[]) {
  int femHdrCount=0;
  int32_t fem, fem_idx;
  bool countheader=false;
  bool lookupFEM=false;
  bool inFrame = false;
  int64_t frame_lower12bit, frame_higher12bit, frame=-1;
  constexpr int nfems = 16;
  constexpr int nchannels = 64;
  bool inADCdata = false, firstval = false;
  std::vector<int> adc_vals;
  int roi = -1, baseline = -1, amplitude = -1, adcval = -1;
  std::vector<std::vector<int>> roi_count(nfems, std::vector<int>(nchannels, 0));
  std::vector<std::vector<double>> roi_avg(nfems, std::vector<double>(nchannels, 0.0));
  std::vector<std::vector<int>> baseline_count(nfems, std::vector<int>(nchannels, 0));
  std::vector<std::vector<double>> baseline_avg(nfems, std::vector<double>(nchannels, 0.0));
  std::vector<std::vector<int>> amplitude_count(nfems, std::vector<int>(nchannels, 0));
  std::vector<std::vector<double>> amplitude_avg(nfems, std::vector<double>(nchannels, 0.0));
  int channel = -1;
  std::vector<int> adcdiff;
  int firstframe;
  bool foundfirstframe = false;

  std::vector<std::pair<std::string, int>> huffmanTable = {
    {"1", 0},
    {"01", -1},
    {"001", 1},
    {"0001", -2},
    {"00001", 2},
    {"000001", -3},
    {"0000001", 3}
  };

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

  std::string outfilename = "run" + std::string(argv[2]) + "_tpc" + std::string(argv[3]) + "_dataquality_metrics.txt";
  bool new_file = !std::filesystem::exists(outfilename) || std::filesystem::file_size(filename) == 0;
  std::ofstream outfile(outfilename, std::ios::app);
  if (new_file) {
    outfile << "FirstFrame\tLastFrame\tAvgNROIs\tAvgBaseline\tAvgAmplitude\n";
  }

  while( binFile.peek() != EOF ){
    uint32_t word32b;
    binFile.read( reinterpret_cast<char*>(&word32b), sizeof(word32b) );

    std::cout.setf ( std::ios::hex, std::ios::basefield );  // set hex as the basefield
    std::cout.setf ( std::ios::showbase ); // activate showbase    i.e with prefix 0x

    uint16_t first16b = word32b & 0xffff; //right 16 bit word
    uint16_t last16b = (word32b>>16) & 0xffff; // left 16 bit word

    if(word32b == 0xffffffff) {
      femHdrCount=1;
      lookupFEM=true;
      inFrame=true;
    }
    else if (word32b  == 0xe0000000){
      countheader=false;
      inFrame=false;
    }

    else{
      if(lookupFEM==true){
        if ((last16b >>8 == 0xf1) and (first16b == 0xffff)){ // there is no word which identifies end of header words for first FEM and start of next FEM , so we have to use this way to identify FEM words instead of using femHdrCount==2
          if ((frame > 1) && (channel > -1)){
             int& count = roi_count[fem_idx][channel];
             double& avg = roi_avg[fem_idx][channel];
             avg = (avg * count + roi) / (count + 1);
             count += 1;
           }
          channel = -1; 

          fem =(last16b&0x1f);
          fem_idx = fem-3;
          countheader=true;
          femHdrCount=1;
          lookupFEM=false;
        }
      }

      if(countheader==true){
        femHdrCount+=1;
        
        if(femHdrCount==5){
            frame_lower12bit= (last16b & 0xfff);
            frame_higher12bit= (first16b & 0xfff);
            frame = frame_higher12bit<<12|frame_lower12bit;

            if ((frame > 1) && (!foundfirstframe)){
              firstframe = frame;
              foundfirstframe = true;
            }
        
        }

        else if(femHdrCount==7){

            femHdrCount=-1;
            countheader=false;
            lookupFEM=true;
        }
    }

    else{
        
        if(first16b>>12 == 0x1){
            inADCdata = false;
            if ((channel > -1) && (frame>1)){
                int& count = roi_count[fem_idx][channel];
                double& avg = roi_avg[fem_idx][channel];
                avg = (avg * count + roi) / (count + 1);
                count += 1;
            }
            channel = (first16b & 0x3f);   
            roi = 0;
        }
        
        else if ((first16b & 0xC000) == 0x4000){
            inADCdata = true;
            firstval = true;
            roi++;
        }

        else if (inADCdata) {
            if (first16b>>12 == 0x2){
                adcval = (first16b & 0xfff);
                if ((firstval == true) && (frame>1) && (channel > -1)){
                  baseline = adcval;
                  int& count = baseline_count[fem_idx][channel];
                  double& avg = baseline_avg[fem_idx][channel];
                  avg = (avg * count + baseline) / (count + 1);
                  count += 1;
                  firstval = false;
                }
                adc_vals.push_back(adcval);
            }

            else if (first16b>>12 == 0x3){
                adcval = (first16b & 0xfff);
                inADCdata = false;
                adc_vals.push_back(adcval);
                if ((frame>1) && (channel > -1)){
                  amplitude = *std::max_element(adc_vals.begin(), adc_vals.end());
                  int& count = amplitude_count[fem_idx][channel];
                  double& avg = amplitude_avg[fem_idx][channel];
                  avg = (avg * count + amplitude) / (count + 1);
                  count += 1;
                }  
                adc_vals.clear();
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
                    adc_vals.push_back(adcval);
                }
                adcdiff.clear();
            }
          }
        
        if(last16b>>12 == 0x1){
            inADCdata = false;
            if ((channel > -1) && (frame>1)){
                int& count = roi_count[fem_idx][channel];
                double& avg = roi_avg[fem_idx][channel];
                avg = (avg * count + roi) / (count + 1);
                count += 1;
            }
            channel = (last16b & 0x3f);
            roi = 0;
        }
        
        else if ((last16b & 0xC000) == 0x4000){
            inADCdata = true;
            roi++;
        }
        
        else if (inADCdata) {
            if (last16b>>12 == 0x2){
                adcval = (last16b & 0xfff);
                if ((firstval == true) && (frame>1) && (channel > -1)){
                  baseline = adcval;
                  int& count = baseline_count[fem_idx][channel];
                  double& avg = baseline_avg[fem_idx][channel];
                  avg = (avg * count + baseline) / (count + 1);
                  count += 1;
                  firstval = false;
               }   
               adc_vals.push_back(adcval);      
            }

            else if (last16b>>12 == 0x3){
                adcval = (last16b & 0xfff);
                inADCdata = false;
                adc_vals.push_back(adcval);
                if ((frame>1) && (channel > -1)){
                  amplitude = *std::max_element(adc_vals.begin(), adc_vals.end());
                  int& count = amplitude_count[fem_idx][channel];
                  double& avg = amplitude_avg[fem_idx][channel];
                  avg = (avg * count + amplitude) / (count + 1);
                  count += 1;
                }  
                adc_vals.clear();
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
                    adc_vals.push_back(adcval);
                }
                adcdiff.clear();
                }
      }
     }
    }//end of else

  }//end of while loop  
  std::array<double, nfems> roi_avg_per_fem = {};
  std::array<double, nfems> baseline_avg_per_fem = {};
  std::array<double, nfems> amplitude_avg_per_fem = {};


  std::ofstream outfile2("run" + std::string(argv[2]) + "_tpc" + std::string(argv[3]) + "_channel_metrics_frame" + std::to_string(firstframe) + ".txt");
  outfile2 << "FEM\tChannel\tAvgNROIs\tAvgBaseline\tAvgAmplitude\n";

  for (int fem = 0; fem < nfems; ++fem) {
    double roi_total = 0.0, baseline_total = 0.0, amplitude_total = 0.0;
    int count = 0;
    for (int ch = 0; ch < nchannels; ++ch) {
      outfile2 << fem+3 << "\t" << ch << "\t" << roi_avg[fem][ch] << "\t" << baseline_avg[fem][ch] << "\t" << amplitude_avg[fem][ch] << "\n";
    
      double roi = roi_avg[fem][ch];
      double baseline = baseline_avg[fem][ch];
      double amplitude = amplitude_avg[fem][ch];

      if ((roi != 0.0) && (baseline!= 0.0) && (amplitude!=0.0)) {
        roi_total += roi;
        baseline_total += baseline;
        amplitude_total += amplitude;
        count++;
      }
    }

    roi_avg_per_fem[fem] = (count > 0) ? roi_total / count : 0.0;
    baseline_avg_per_fem[fem] = (count > 0) ? baseline_total / count : 0.0;
    amplitude_avg_per_fem[fem] = (count > 0) ? amplitude_total / count : 0.0;

    //std::cout << "For FEM " << std::dec << fem + 3 << ", the average nrois: " << roi_avg_per_fem[fem] << ", baseline: " << baseline_avg_per_fem[fem] << ", amplitude: " << amplitude_avg_per_fem[fem] << std::endl;
  }

  double avg_nrois = std::accumulate(roi_avg_per_fem.begin(), roi_avg_per_fem.end(), 0.0) / roi_avg_per_fem.size();
  double avg_baselines = std::accumulate(baseline_avg_per_fem.begin(), baseline_avg_per_fem.end(), 0.0) / baseline_avg_per_fem.size();
  double avg_amplitudes = std::accumulate(amplitude_avg_per_fem.begin(), amplitude_avg_per_fem.end(), 0.0) / amplitude_avg_per_fem.size();

  outfile << firstframe << "\t" << frame << "\t" << avg_nrois << "\t" << avg_baselines << "\t" << avg_amplitudes << "\n";

}// end of int main function

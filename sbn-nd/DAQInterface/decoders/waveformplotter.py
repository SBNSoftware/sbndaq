import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

SN_filename = 'SN_waveforms.txt'
NU_filename = 'NU_waveforms.txt'

SN_data = pd.read_csv(SN_filename, sep='\t', names=['frame', 'fem', 'channel', 'sample', 'adc'], header=None) 
NU_data = pd.read_csv(NU_filename, sep='\t', names=['frame', 'fem', 'channel', 'samp', 'sample', 'adc', 'event'], header=None) 

colors = [
    '#1f77b4',  # muted blue
    '#ff7f0e',  # safety orange
    '#2ca02c',  # cooked asparagus green
    '#d62728',  # brick red
    '#9467bd',  # muted purple
    '#8c564b',  # chestnut brown
    '#e377c2',  # raspberry yogurt pink
    '#7f7f7f',  # middle gray
    '#bcbd22',  # curry yellow-green
    '#17becf'   # blue-teal
]

nevents = NU_data["event"].max()
nframes = SN_data["frames"].max()

for channel in range(0,64):
    for fem in range(3,18):

        for i, event in enumerate(range(1,10)):
            NU_sample = NU_data.loc[(NU_data['channel']==channel) & (NU_data['fem']==fem) & (NU_data['event']==event)]['samp']
            NU_adc = NU_data.loc[(NU_data['channel']==channel) & (NU_data['fem']==fem) & (NU_data['event']==event)]['adc']

            plt.scatter(NU_sample, NU_adc, marker = '.', label = 'NU - Event '+str(event), color = colors[i%10])

        fig = plt.figure(figsize=(10, 6))
        plt.title('FEM '+str(fem)+' - Ch. '+str(channel))
        plt.xlabel('Sample no.')
        plt.ylabel('ADC value')
        plt.xlim(0,3*1144)
        plt.grid(True)
        plt.tight_layout()
        plt.legend(frameon=False)
        plt.savefig('waveformNU_fem'+str(fem)+'+_ch'+str(channel)+'.png')

        SN_frame = SN_data.loc[(SN_data['channel']==channel)]['frame']
        fig = plt.figure(figsize=(10, 6))

        for i, frame in enumerate(range(2,10)):
            SN_sample = SN_data.loc[(SN_data['channel']==channel) & (SN_data['fem']==fem) & (SN_data['frame']==frame)]['sample']
            SN_adc = SN_data.loc[(SN_data['channel']==channel) & (SN_data['fem']==fem) & (SN_data['frame']==frame)]['adc']

            plt.scatter(SN_sample, SN_adc, marker = '.', label = 'SN - Frame '+str(frame), color = colors[i%10])

        plt.title('FEM '+str(fem)+' - Ch. '+str(channel))
        plt.xlabel('Sample no.')
        plt.ylabel('ADC value')
        plt.xlim(0,1144)
        plt.grid(True)
        plt.tight_layout()
        plt.legend(frameon=False)
        plt.savefig('waveformSN_fem'+str(fem)+'+_ch'+str(channel)+'.png')

        NU_frame = NU_data.loc[(NU_data['channel']==channel) & (NU_data['fem']==fem)]['frame']
        NU_sample = NU_data.loc[(NU_data['channel']==channel) & (NU_data['fem']==fem)]['sample']
        NU_adc = NU_data.loc[(NU_data['channel']==channel) & (NU_data['fem']==fem)]['adc']
        
        SN_frame = SN_data.loc[(SN_data['channel']==channel) & (SN_data['fem']==fem)]['frame']
        SN_sample = SN_data.loc[(SN_data['channel']==channel) & (SN_data['fem']==fem)]['sample']
        SN_adc = SN_data.loc[(SN_data['channel']==channel) & (SN_data['fem']==fem)]['adc']
        
        NU_time = NU_frame * 1144 + NU_sample
        SN_time = SN_frame * 1144 + SN_sample
        
        fig = plt.figure(figsize=(10, 6))
        trigger = 1
        trigger_frame = NU_data.loc[NU_data['event']==trigger]['frame'].unique()[0]
        
        plt.scatter(NU_time, NU_adc, marker = '.', label = 'NU', color = 'red')
        plt.scatter(SN_time, SN_adc, marker = '.', label = 'SN', color = 'blue')
        
        plt.title('FEM '+str(fem)+' - Ch. '+str(channel))
        plt.xlabel('Time (Abs. Sample no.)')
        plt.ylabel('ADC value')
        plt.xlim((trigger_frame*1144)-(2*1144),(trigger_frame*1144)+(6*1144))
        plt.grid(True)
        plt.tight_layout()
        plt.legend(frameon=False)
        plt.savefig('waveformTrig_fem'+str(fem)+'+_ch'+str(hannel)+'.png')
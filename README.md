# Hybrid BCI using Wireless EEG and Eye Tracking for Web Access

![Header Image](path/to/header_image.jpg)  
*Place a relevant header image or a banner related to the research here.*

**Authors**: Bhavesh K Verma, Ravichander Janapati, Rakesh Sengupta

## Overview
This research focuses on the development of a hybrid Brain-Computer Interface (BCI) that utilizes both EEG (Electroencephalogram) and Eye Tracking for enhanced web access. The proposed approach offers an affordable and user-friendly alternative to traditional BCI systems, which are often complex and require specialized equipment.


### Motor Imagery Experiment Paradigm
To train our BCI system, we collected EEG data corresponding to motor imagery activities. We have designed an experiment which enables us to sequentially record the EEG data along with the corresponding event files. While recording EEG signals, subjects are shown some images on a computer screen sequentially at an interval of 5 seconds. The images to display on the screen are chosen randomly from a set of four images with the texts: “right hand”, “left Hand”, “right leg” and “left leg” with their corresponding symbols.(Figure 1.). The subjects are asked to imagine their corresponding hands and legs moving while the visual cues get deployed on the screen. The recording of the EEG signal takes 25 minutes, in which a total of 300 visual cues are displayed, with 75 trials for each category. We have used the Matlab toolbox; Psychtoolbox to display and record the event data.

![Expt Paradigm](Images/BCI_expt.png)  

### EEG Data Collection
For the acquisition of EEG signals from the brain, we used Emotiv Insight – a wireless EEG headset from the brand Emotiv. The device connects wirelessly to personal computers via Bluetooth v5.0  where a dedicated software EmotivPro enables real time monitoring of EEG signal quality along with visual display of EEG signal and 5 ranges of bandpower. The device measures EEG signals using 5 electrodes corresponding to AF3, AF4, T7, T8, Pz positions. The device has a sampling rate of 128 SPS (2048 Hz internal) and resolution of 16 bits 1 LSB = 0.128 micro volt (16 bit ADC) and a bandwidth of 0.5 - 45Hz.


![EmotiveHead](Images/EmotivHead.png)

### EEG classification model training
We use both the EEG and Event recordings to train a classification model. The event file is stored as a CSV file by the Matlab program while the visual cues get displayed on the screen. It contains numbers coding for four limbs and the corresponding time of their display. The EEG recording is saved as an EDF file by default by EmotivePro. After correcting the recording time for the EEG data and the first event in the event file, we get the synchronized EEG and event data. All events have a separation of 5 seconds. For each event, we take the EEG data ranging from 1 second before the event to 3 seconds after the event. This gives us a set of EEG time series, each with length 4 seconds and a label for one of the four limbs from the event file. For each volunteer, we have 75 such data points. similar to other labelled sets of data, this EEG dataset can also be used to train a machine learning model for classification. Before feeding the data to a machine learning algorithm, we can use various known methods of feature extraction to the time series data. To compare the time and accuracy tradeoff in different learning algorithms we have used three different ways to classify. This data can be used in this raw form for the classification of the EEG signal using a compatible machine learning algorithm. In this version we have used EEGnet for classifying the data.


### Surface Tracking
Utilizes AprilTag, a visual fiducial system, to track the edges of the device screen, enhancing accuracy.

![Surface Tracking Image](path/to/surface_tracking_image.jpg)  
*Image or diagram showcasing the surface tracking mechanism.*

### Cursor Control
Processed eye gaze data is used to control the mouse cursor on the computer screen.

![Cursor Control Flowchart](path/to/cursor_control_flowchart.jpg)  
*Flowchart or diagram illustrating the cursor control process.*

### Data Streaming
Real-time streaming of processed eye gaze tracking data to a local server.

![Data Streaming Architecture](path/to/data_streaming_architecture.jpg)  
*Diagram showcasing the data streaming architecture.*

## Experimental Setup

### EEG Data Collection
Data was collected from 15 volunteers using the Emotiv Insight – a wireless EEG headset.

![EEG Data Collection Setup](path/to/eeg_data_collection_setup.jpg)  
*Image or diagram of the EEG data collection setup.*

### Eye Tracking Calibration
Calibration is enhanced using AprilTag markers to define the relevant surface for real-time tracking.

![Eye Tracking Calibration Process](path/to/eye_tracking_calibration.jpg)  
*Diagram or image illustrating the eye tracking calibration process.*

## Results & Findings
The research found that subjects who underwent BCI training performed better than those who didn't. This suggests that regular training can improve both user performance and the BCI system's efficiency.

![Results Graph](path/to/results_graph.jpg)  
*Graph or chart showcasing the results.*

## Future Work
The study paves the way for refining the proposed approach and developing a fully functional system that can be tested in real-world environments.

## Contact
For more details, reach out to the principal corresponding author at [bhaveshverma32@gmail.com](mailto:bhaveshverma32@gmail.com).

## References
A list of references used in this research can be found in the manuscript.

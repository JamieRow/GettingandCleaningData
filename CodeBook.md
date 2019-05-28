# Codebook for Getting and Cleaning Data Project

Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Original Data generated from experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Run_Analysis produces new data set with the following variables:

# Activity         : 

chr  

Describes the activity the test subject completed while redordind the data. Example: "WALKING"
Activity ID originally sourced from the Train_Y and Test_Y and liked to the Activity using the ID and Activity in teh Activity_Label.txt file

# SensorLocation   : 

chr  

describes the variable that was recorded. eg "tBodyAcc" 
Sourced from the features.txt which represnt the column headings of the test and train data. This has been transposed to the column using the melt function and then split from the other details using the separate function separeted on the '-' character and is the first value of this operation 

# AggregationMethod: 

chr  

describes the aggregation method used in the initial experiment. Eg "mean()" "std()"
Sourced from the features.txt which represnt the column headings of the test and train data. This has been transposed to the column using the melt function and then split from the other details using the separate function separeted on the '-' character and is the middle value of this operation 

# AccDirection     : 

chr  

describes the direction of the recorded acceleration. eg "X" "Y" "Z"
Sourced from the features.txt which represnt the column headings of the test and train data. This has been transposed to the column using the melt function and then split from the other details using the separate function separeted on the '-' character and is the last value of this operation 

# value            : 

num  

The experimentaly captured data from the sensor location and aggregated to the aggregation method. eg: -0.0177 -0.0185 -0.0247 
Sourced from the Train_X and Train_Y data files. This was originally aggregated data identified by the aggregation method. Transposed from the original format using the melt function

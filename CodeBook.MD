###CodeBook
##This Codebook describes the code, variables, and modifications made to the data set to run analysis on it.

##Data Set
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Data Modifications
The data was modified in the 5 following ways:
1. The training and test data sets were merged in one directory.
2. A table was created extracting only the mean and standard deviations of the variables.
3. Descriptive labels were applied to the activities in the data.
4. The data set was labeled with descriptive names for the columns.
5. A new data set was created with the averages for each variable for each activity and subject. 

##Running the Code
1. Download the data (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extract it to your working directory.
2. Load training and test sets into working directory. 
3. Extract the mean and standard deviation of these data sets.
4. Label the data sets accordingly.
5. Export the newly cleaned data set for analysis. 

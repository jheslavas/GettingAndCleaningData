
## CodeBook of the "tidydataset.txt"" file

This is the CodeBook associated with the "tidydataset.txt" file, that is a spaces separated values file, that contains 81 variables and 180 rows, heading included.

This file was created by Javier Eslava-Schmalbach as an assignment project of the "Getting and Cleaning Data Course" from the "Data Science"" course, at Coursera - Jhons Hopkins University.

All the data are based on the experiment: "Human Activity Recognition Using Smartphones Dataset" developed originally by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto, at the Smartlab - Non Linear Complex Systems Laboratory; DITEN - Universit‡ degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. activityrecognition@smartlab.ws;  www.smartlab.ws

###  --------------------------

If this dataset needs to be cited, the original database and work should be mentioned as:

"Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012"

### ---------------------------

### List of variables

Each varible is preceded by a number between brackets, that is the number of the column of the variable within the dataset. 

The first two columns show:

 [1] "subject": The identification of each participant
 
 [2] "activity": The activity that the participant was developng during the measurement. 
 
 There are six levels of measurements:            
 
 WALKING; WALKING_UPSTAIRS; WALKING_DOWNSTAIRS; SITTING; STANDING; LAYING

The other 79 variables at the dataset show the averages of means and standard deviations of 3-axial (X-Y-Z) continous measurements. Each variable mentions its corresponding axis, and if it is a mean or a standard deviation average. 

### Body Acceleration signal
 [3] "bodyaccelerationsignal-mean-X"
 
 [4] "bodyaccelerationsignal-mean-Y"
 
 [5] "bodyaccelerationsignal-mean-Z"
 
 [6] "bodyaccelerationsignal-standardeviation-X"
 
 [7] "bodyaccelerationsignal-standardeviation-Y"
 
 [8] "bodyaccelerationsignal-standardeviation-Z"

### Gravity Acceleration signal
 [9] "gravityaccelerationsignal-mean-X"

[10] "gravityaccelerationsignal-mean-Y"

[11] "gravityaccelerationsignal-mean-Z"

[12] "gravityaccelerationsignal-standardeviation-X"

[13] "gravityaccelerationsignal-standardeviation-Y"

[14] "gravityaccelerationsignal-standardeviation-Z"

### Body Acceleration Jerk signal
[15] "bodyaccelerationsignalJerk-mean-X"

[16] "bodyaccelerationsignalJerk-mean-Y"

[17] "bodyaccelerationsignalJerk-mean-Z"

[18] "bodyaccelerationsignalJerk-standardeviation-X"

[19] "bodyaccelerationsignalJerk-standardeviation-Y"

[20] "bodyaccelerationsignalJerk-standardeviation-Z"

### Body Angular Velocity signal
[21] "bodyangularvelocitysignal-mean-X"

[22] "bodyangularvelocitysignal-mean-Y"

[23] "bodyangularvelocitysignal-mean-Z"

[24] "bodyangularvelocitysignal-standardeviation-X"

[25] "bodyangularvelocitysignal-standardeviation-Y"

[26] "bodyangularvelocitysignal-standardeviation-Z"

### Body Angular Velocity Jerk signal
[27] "bodyangularvelocitysignalJerk-mean-X"

[28] "bodyangularvelocitysignalJerk-mean-Y"

[29] "bodyangularvelocitysignalJerk-mean-Z"

[30] "bodyangularvelocitysignalJerk-standardeviation-X"

[31] "bodyangularvelocitysignalJerk-standardeviation-Y"

[32] "bodyangularvelocitysignalJerk-standardeviation-Z"

### Magnitude of Body accelerations signal; Gravity acceleration signal; Body acceleration Jerk signal; Body angular velocity signal; and Body angular velocity Jerk signal. 
[33] "bodyaccelerationsignalmagnitude-mean"

[34] "bodyaccelerationsignalmagnitude-standardeviation"

[35] "gravityaccelerationsignalmagnitude-mean"

[36] "gravityaccelerationsignalmagnitude-standardeviation"

[37] "bodyaccelerationsignalJerkmagnitude-mean"

[38] "bodyaccelerationsignalJerkmagnitude-standardeviation"

[39] "bodyangularvelocitysignalmagnitude-mean"

[40] "bodyangularvelocitysignalmagnitude-standardeviation"

[41] "bodyangularvelocitysignalJerkmagnitude-mean"

[42] "bodyangularvelocitysignalJerkmagnitude-standardeviation"

### Frequency of Body accelerations signal;  Body angular velocity; Body acceleration signal magnitude;  Body acceleration Jerk signal; Body angular velocity Jerk signal; Body Body Acceleration Jerk magnitude; Body body angular velocity magnitude; and Body body angular velocity Jerk magnitude

[43] "bodyaccelerationsignalfrequency-mean-X"

[44] "bodyaccelerationsignalfrequency-mean-Y"

[45] "bodyaccelerationsignalfrequency-mean-Z"

[46] "bodyaccelerationsignalfrequency-standardeviation-X"

[47] "bodyaccelerationsignalfrequency-standardeviation-Y"

[48] "bodyaccelerationsignalfrequency-standardeviation-Z"

[49] "bodyaccelerationsignalfrequency-meanFreq-X"

[50] "bodyaccelerationsignalfrequency-meanFreq-Y"

[51] "bodyaccelerationsignalfrequency-meanFreq-Z"

[52] "bodyaccelerationsignalfrequencyJerk-mean-X"

[53] "bodyaccelerationsignalfrequencyJerk-mean-Y"

[54] "bodyaccelerationsignalfrequencyJerk-mean-Z"

[55] "bodyaccelerationsignalfrequencyJerk-standardeviation-X"

[56] "bodyaccelerationsignalfrequencyJerk-standardeviation-Y"

[57] "bodyaccelerationsignalfrequencyJerk-standardeviation-Z"

[58] "bodyaccelerationsignalfrequencyJerk-meanFreq-X"

[59] "bodyaccelerationsignalfrequencyJerk-meanFreq-Y"

[60] "bodyaccelerationsignalfrequencyJerk-meanFreq-Z"

[61] "bodyangularvelocitysignalfrequency-mean-X"

[62] "bodyangularvelocitysignalfrequency-mean-Y"

[63] "bodyangularvelocitysignalfrequency-mean-Z"

[64] "bodyangularvelocitysignalfrequency-standardeviation-X"

[65] "bodyangularvelocitysignalfrequency-standardeviation-Y"

[66] "bodyangularvelocitysignalfrequency-standardeviation-Z"

[67] "bodyangularvelocitysignalfrequency-meanFreq-X"

[68] "bodyangularvelocitysignalfrequency-meanFreq-Y"

[69] "bodyangularvelocitysignalfrequency-meanFreq-Z"

[70] "bodyaccelerationsignalfrequencymagnitude-mean"

[71] "bodyaccelerationsignalfrequencymagnitude-standardeviation"

[72] "bodyaccelerationsignalfrequencymagnitude-meanFreq"

[73] "bodybodyaccelerationJerkmagnitud-mean"

[74] "bodybodyaccelerationJerkmagnitud-standardeviation"

[75] "bodybodyaccelerationJerkmagnitud-meanFreq"

[76] "bodybodyangularvelocitymagnitudefrequency-mean"

[77] "bodybodyangularvelocitymagnitudefrequency-standardeviation"

[78] "bodybodyangularvelocitymagnitudefrequency-meanFreq"

[79] "bodybodyangularvelocityJerkmagnitudefrequency-mean"

[80] "bodybodyangularvelocityJerkmagnitudefrequency-standardeviation"

[81] "bodybodyangularvelocityJerkmagnitudefrequency-meanFreq"

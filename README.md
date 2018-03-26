==================================================================

Introductory note: This document is based on the README file of the "Human Activity Recognition Using Smartphones Dataset" developed originally by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto, at the
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

==================================================================
This document was written by Javier Eslava-Schmalbach
==================================================================

This document describes the associated file: "run_analysis.R", that is the script of the analysis done to the databases associated with the original experiment performed by authors mentioned before: "Human Activity Recognition Using Smartphones". 

The databases were dowloaded from the web: 

"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

After that, 5 point were developed with the related files, according to these instructions, from the course of Getting and Cleaning Data, of Coursera-Jhons Hopkins University: 

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The associated files according to the development of the script are: 

subset5 : it contains the full database, in which the components of training and test were merged, the column names were attached, and activity labels were replaced with describing labels of them. 

tidydataset.txt : it contains the average of each variable for each activity and each subject, within the main database subset (subset5) built with subject number, activity and, mean and standard deviation variables

The original experiment was "carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, authors captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset were randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data" (text between quotes, modified from original authors)

"The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details" (text between quotes, from original authors)

For each record it is provided:
======================================
- An identifier of the subject who carried out the experiment.
- Its activity label.
- An average of means and standar deviations of the Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration measurements.
- An average of the Triaxial Angular velocity from the gyroscope measurements.



The dataset includes the following files:
=========================================

- The "README.txt" file

- "CodeBook.md": Shows information about the variables used on the "tidydataset.txt"" file.

- The "tidydataset.txt": a dataset of 81 variables and 180 rows, showing the averages of means and standar deviations of each variable for each activity and each subject, of lineal and angular acceleration measurements, that are better described at the "CodeBook.md"


Notes:
======
- Measurement were previously normalized and bounded within [-1,1], by original authors of the experiment

Original authors could be contacted for more information about this dataset at: activityrecognition@smartlab.ws

License: (Note from original authors)
========
"Use of this dataset in publications must be acknowledged by referencing the following publication" [1]

"[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012"

========
This file was developed by Javier Eslava-Schmalbach, as an assingment of the course: "Data Science: Getting and Cleaning Data" at Coursera - Jhons Hopkins University. 




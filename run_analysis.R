## Getting and Cleaning Data Course Project
## Developed by Javier Eslava-Schmalbach

###The Assignment

###You should create one R script called run_analysis.R that does the following.

###Merges the training and the test sets to create one data set.
###Extracts only the measurements on the mean and standard deviation for each measurement.
###Uses descriptive activity names to name the activities in the data set
###Appropriately labels the data set with descriptive variable names.
###From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
### -------------------------------

### FIRST POINT OF THE PROJECT: "Merges the training and the test sets to create one data set".

### Getting the zip file from the web

library(data.table)
fileName <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if (!file.exists('./UCIHARDataset.zip')){
  download.file(fileName,"./UCIHARDataset.zip", mode = 'wb')
  unzip("UCIHARDataset.zip", exdir = getwd())
}


### Reading files

activity_labels <- read.csv("./UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = " ")
activity_labels <- as.character(activity_labels[,2])

####   These are the activity labes and their corresponding numbers
####   V1                 V2
#### 1  1            WALKING
#### 2  2   WALKING_UPSTAIRS
#### 3  3 WALKING_DOWNSTAIRS
#### 4  4            SITTING
#### 5  5           STANDING
#### 6  6             LAYING


features1 <- read.csv("./UCI HAR Dataset/features.txt", header = FALSE, sep = " ")
features1 <- as.character(features1[,2])

test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)

ytest <- read.csv("./UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = " ")

subject_test <- read.csv("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = " ")

train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)

ytrain <- read.csv("./UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = " ")

subject_train <- read.csv("./UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = " ")

### Checking the structure of all databases before merging them
dim(activity_labels)
dim(features)
dim(test)
dim(ytest)
dim(ytest)
dim(subject_test)
dim(train)
dim(ytrain)
dim(subject_train)

### Building and Merging the test and train datasets

test_all <- data.frame(subject_test, ytest, test)
train_all <- data.frame(subject_train, ytrain, train)
dataset <- rbind(train_all, test_all)

### Giving the name to the columns

names(dataset) <- c(c("subject", "activity"), features1)

### Giving the names to the activities into the "activity" variable

dataset$activity <- activity_labels[dataset$activity]


### SECOND POINT OF THE PROJECT: "Extracts only the measurements on the mean and standard deviation for each measurement".

subset_features <- grep("mean|std", features1)
str(subset_features)
subset5 <- dataset[,c(1,2,subset_features + 2)]

### THIRD POINT OF THE PROJECT: "Use descriptive activity names to name the activities in the data set"

### it is really done

### FOURTH POINT OF THE PROJECT: "Appropriately labels the data set with descriptive variable names".


betternames <- names(subset5)
betternames <- gsub("[(][)]", "", betternames)
betternames <- gsub("tBodyAcc","bodyaccelerationsignal", betternames)
betternames <- gsub("tGravityAcc","gravityaccelerationsignal", betternames)
betternames <- gsub("tBodyAccJerk","bodyaccelerationJerksignal", betternames)
betternames <- gsub("tBodyGyro","bodyangularvelocitysignal", betternames)
betternames <- gsub("tBodyGyroJerk","bodyangularvelocityJerksignal", betternames)
betternames <- gsub("tBodyAccMag","bodyaccelerationmagnitude", betternames)
betternames <- gsub("tGravityAccMag","gravityaccelerationmagnitude", betternames)
betternames <- gsub("tBodyAccJerkMag","bodyaccelerationJerkmagnitude", betternames)
betternames <- gsub("tBodyGyroMag","bodyangularvelocitymagnitude", betternames)
betternames <- gsub("tBodyGyroJerkMag","bodyangularvelocityJerkmagnitude", betternames)
betternames <- gsub("fBodyAcc","bodyaccelerationsignalfrequency", betternames)
betternames <- gsub("fGravityAcc","gravityaccelerationsignalfrequency", betternames)
betternames <- gsub("fBodyAccJerk","bodyaccelerationJerksignalfrequency", betternames)
betternames <- gsub("fBodyGyro","bodyangularvelocitysignalfrequency", betternames)
betternames <- gsub("fBodyGyroJerk","bodyangularvelocityJerksignalfrequency", betternames)
betternames <- gsub("fBodyAccMag","bodyaccelerationmagnitudefrequency", betternames)
betternames <- gsub("fGravityAccMag","gravityaccelerationmagnitudefrequency", betternames)
betternames <- gsub("fBodyAccJerkMag","bodyaccelerationJerkmagnitudefrequency", betternames)
betternames <- gsub("fBodyGyroMag","bodyangularvelocitymagnitudefrequency", betternames)
betternames <- gsub("fBodyGyroJerkMag","bodyangularvelocityJerkmagnitudefrequency", betternames)
betternames <- gsub("fBodyBodyAccJerkMag","bodybodyaccelerationJerkmagnitud", betternames)
betternames <- gsub("fBodyBodyGyroMag","bodybodyangularvelocitymagnitudefrequency", betternames)
betternames <- gsub("fBodyBodyGyroJerkMag","bodybodyangularvelocityJerkmagnitudefrequency", betternames)
betternames <- gsub("Mag", "magnitude", betternames)
betternames <- gsub("std", "standardeviation", betternames)
names(subset5) <- betternames

### FITH POINT OF THE PROJECT: "From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject".

tidydataset <- aggregate(subset5[,3:81], by = list(subject = subset5$subject, activity = subset5$activity),FUN = mean)

tidydataset<-tidydataset[order(tidydataset$subject, tidydataset$activity),]

write.table(x = tidydataset, file = "tidydataset.txt", row.names = FALSE)

## ----


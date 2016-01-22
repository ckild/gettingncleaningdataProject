# Getting and Cleaning Data Project
library(dplyr)
# Set the work directory to project
setwd("~/R/project")
filename<-"project.zip"

# Download the file and unzip it if it is not exist
if(!file.exists(filename))
  {
    URL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(URL,destfile="project.zip")
  }
if(!file.exists("UCI HAR Dataset"))
  {
    unzip(filename)
}

# Change work directory to UCI HAR Dataset
setwd("~/R/project/UCI HAR Dataset")

# Import data
features<-read.table("features.txt")
activitylabels<-read.table("activity_labels.txt")
subjecttrain<-read.table("./train/subject_train.txt",header=FALSE,col.names ="subject")
subjecttest<-read.table("./test/subject_test.txt",header=FALSE,col.names ="subject")
xtrain<-read.table("./train/X_train.txt",header=FALSE)
xtest<-read.table("./test/X_test.txt",header=FALSE)
ytrain<-read.table("./train/y_train.txt",header=FALSE,col.names = "activity")
ytest<-read.table("./test/y_test.txt",header=FALSE,col.names = "activity")

# Appropriately labels the data set with descriptive variable names.
names(xtest)<-features[,2]
names(xtrain)<-features[,2]

# Consolidate training data & test data
training<-cbind(subjecttrain,ytrain,xtrain)
testing<-cbind(subjecttest,ytest,xtest)
# Merges the training and the test sets to create one data set.
data<-rbind(training,testing)
# Uses descriptive activity names to name the activities in the data set
data$activity<-factor(data$activity, levels = activitylabels[,1], labels = activitylabels[,2])

# Extracts only the measurements on the mean and standard deviation 
#    for each measurement.
neededcol<-grepl("mean()|std()|subject|activity",names(data)) & !grepl("meanFreq", names(data))
finaldata<-data[,neededcol]
# From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
write.table(finaldata,file="tidy_data.txt",row.names=FALSE)

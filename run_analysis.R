# Getting and Cleaning Data Project
filename<-"project.zip"
setwd("~/R/project")
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
setwd("~/R/project/UCI HAR Dataset")
# Import data
features<-read.table("features.txt")
activitylabels<-read.table("activity_labels.txt")
subjecttrain<-read.table("./train/subject_train.txt",header=FALSE)
subjecttest<-read.table("./test/subject_test.txt",header=FALSE)
xtrain<-read.table("./train/X_train.txt",header=FALSE)
xtest<-read.table("./test/X_test.txt",header=FALSE)
ytrain<-read.table("./train/y_train.txt",header=FALSE)
ytest<-read.table("./test/y_test.txt",header=FALSE)

# 4. Appropriately labels the data set with descriptive variable names.
names(xtest)<-features[,2]
names(xtrain)<-features[,2]

#Consolidate training data & test data
training<-cbind(subjecttrain,ytrain,xtrain)
testing<-cbind(subjecttest,ytest,xtest)
# 1. Merges the training and the test sets to create one data set.
data<-rbind(training,testing)
# rename first 2 column names since they are duplicate
names(data)[1:2]<-c("subject","activity")
# 3. Uses descriptive activity names to name the activities in the data set
data$activity<-factor(data$activity, levels = activitylabels[,1], labels = activitylabels[,2])

# 2. Extracts only the measurements on the mean and standard deviation 
#    for each measurement.
neededcol<-grep("mean()|std()",names(data))
# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
write.table(,row.names=FALSE)

Code Book
=======
This code book contains all the variables and summaries calculated, along with units, and any other relevant information fields in tidy_data.txt.

This code book contains all the variables and summaries calculated, along with units, and any other relevant information fields in tidy_data.txt. 

There are 180 rows and 68 columns in the tidy_data.txt. Each row corresponds to one subject doing one activity

The dataset is mainly calculating the average of each variable for each activity and each subject. 

run_analysis.R basically do the following things:
1.	Merges the training and the test sets to create one data set.
2.	Extracts only the measurements on the mean and standard deviation for each measurement.
3.	Uses descriptive activity names to name the activities in the data set
4.	Appropriately labels the data set with descriptive variable names.
5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Identifiers
=======
subject

activity

Variables
=======

tBodyAcc-mean()-X

tBodyAcc-mean()-Z

tBodyAcc-std()-Y

tGravityAcc-mean()-X

tGravityAcc-mean()-Z

tGravityAcc-std()-Y

tBodyAccJerk-mean()-X

tBodyAccJerk-mean()-Z

tBodyAccJerk-std()-Y

tBodyGyro-mean()-X

tBodyGyro-mean()-Z

tBodyGyro-std()-Y

tBodyGyroJerk-mean()-X

tBodyGyroJerk-mean()-Z

tBodyGyroJerk-std()-Y

tBodyAccMag-mean()

tGravityAccMag-mean()

tBodyAccJerkMag-mean()

tBodyGyroMag-mean()

tBodyGyroJerkMag-mean()

fBodyAcc-mean()-X

fBodyAcc-mean()-Z

fBodyAcc-std()-Y

fBodyAccJerk-mean()-X

fBodyAccJerk-mean()-Z

fBodyAccJerk-std()-Y

fBodyGyro-mean()-X

fBodyGyro-mean()-Z

fBodyGyro-std()-Y

fBodyAccMag-mean()

fBodyBodyAccJerkMag-mean()

fBodyBodyGyroMag-mean()

fBodyBodyGyroJerkMag-mean()

tBodyAcc-mean()-Y

tBodyAcc-std()-X

tBodyAcc-std()-Z

tGravityAcc-mean()-Y

tGravityAcc-std()-X

tGravityAcc-std()-Z

tBodyAccJerk-mean()-Y

tBodyAccJerk-std()-X

tBodyAccJerk-std()-Z

tBodyGyro-mean()-Y

tBodyGyro-std()-X

tBodyGyro-std()-Z

tBodyGyroJerk-mean()-Y

tBodyGyroJerk-std()-X

tBodyGyroJerk-std()-Z

tBodyAccMag-std()

tGravityAccMag-std()

tBodyAccJerkMag-std()

tBodyGyroMag-std()

tBodyGyroJerkMag-std()

fBodyAcc-mean()-Y

fBodyAcc-std()-X

fBodyAcc-std()-Z

fBodyAccJerk-mean()-Y

fBodyAccJerk-std()-X

fBodyAccJerk-std()-Z

fBodyGyro-mean()-Y

fBodyGyro-std()-X

fBodyGyro-std()-Z

fBodyAccMag-std()

fBodyBodyAccJerkMag-std()

fBodyBodyGyroMag-std()

fBodyBodyGyroJerkMag-std()

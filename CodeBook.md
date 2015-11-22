File: CodeBook.md

This file describes the variables, the data, and any transformations or work that I have performed to clean up the data.

The site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The run_analysis.R script performs the following steps to clean the data:
1. Saves previous directory
2. Set session items needed for session
3. Reads the training and the test sets from the appropriate directories
4. Appropriately label the columns descriptive names.
    a. The features.txt file was read into a word processing tool in advance, the columns names were tidied up by and then stored in a new file features2.txt:
          i. removing underscores and parentheses
         ii. changing names to camelCase (first letter lower case, other words start with capital)
        iii. adding additional appendix to duplicate column names
5. Uses descriptive activity names to name the activities by merging the data set with the feature descriptions
6. The datasets were merged into one set (subject, features, measurements) by group (train and test)
7. The datasets were unioned (merged) into a single set where the source of the data is identified (one set of data)
    a. In practice, the source of the information can be meaningful during analytics.  Therefore, a new column was added with data source when merging the data.
8. Group the data set by the factors
9. Summarize the data set with the average of each variable for each activity and each subject
10. Creates a tidy data set 
11. Create an output text file with the tidy dataset
12. Clean up from script by removing the interim variables and setting working directory back to original

File: tdyAgg.txt
	40 obs. of 89 variables
	Classes: ‘grouped_df’, ‘tbl_df’, ‘tbl’ and 'data.frame'

Column Name - Class - Definition
dataSrc - Factor - w/ 2 levels "train","test
subjectId - int - Identifier for subject that provided observation
activityNm - Factor - 6 levels: "LAYING”, "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"
tBodyAccMeanX - num - Average of the Mean value of the time body acceleration for X
tBodyAccMeanY - num - Average of the Mean value of the time body acceleration for Y
tBodyAccMeanZ - num - Average of the Mean value of the time body acceleration for Z
tGravityAccMeanX - num - Average of the Mean value of the time gravity acceleration for X
tGravityAccMeanY - num - Average of the Mean value of the time gravity acceleration for Y
tGravityAccMeanZ - num - Average of the Mean value of the time gravity acceleration for Z
tBodyAccJerkMeanX - num - Average of the Mean value of the time body jerk signal for X
tBodyAccJerkMeanY - num - Average of the Mean value of the time body jerk signal for Y
tBodyAccJerkMeanZ - num - Average of the Mean value of the time body jerk signal for Z
tBodyGyroMeanX - num - Average of the Mean value of the time body gyro meter for X
tBodyGyroMeanY - num - Average of the Mean value of the time body gyro meter for Y
tBodyGyroMeanZ - num - Average of the Mean value of the time body gyro meter for Z
tBodyGyroJerkMeanX - num - Average of the Mean value of the time body gyro meter jerk for X
tBodyGyroJerkMeanY - num - Average of the Mean value of the time body gyro meter jerk for Y
tBodyGyroJerkMeanZ - num - Average of the Mean value of the time body gyro meter jerk for Z
tBodyAccMagMean - num - Average of the Mean value of the time body acceleration magnitude
tGravityAccMagMean - num - Average of the Mean value of the time gravity acceleration magnitude
tBodyAccJerkMagMean - num - Average of the Mean value of the time body acceleration jerk magnitude
tBodyGyroMagMean - num - Average of the Mean value of the time body gyro meter magnitude
tBodyGyroJerkMagMean - num - Average of the Mean value of the time body gyro meter Jerk magnitude
fBodyAccMeanX - num - Average of the Mean value of the frequency body acceleration for X
fBodyAccMeanY - num - Average of the Mean value of the frequency body acceleration for Y
fBodyAccMeanZ - num - Average of the Mean value of the frequency body acceleration for Z
fBodyAccMeanFreqX - num - Average of the Mean value of the frequency body acceleration of X
fBodyAccMeanFreqY - num - Average of the Mean value of the frequency body acceleration of Y
fBodyAccMeanFreqZ - num - Average of the Mean value of the frequency body acceleration of Z
fBodyAccJerkMeanX - num - Average of the Mean value of the frequency body acceleration jerk of X
fBodyAccJerkMeanY - num - Average of the Mean value of the frequency body acceleration jerk of Y
fBodyAccJerkMeanZ - num - Average of the Mean value of the frequency body acceleration jerk of Z
fBodyAccJerkMeanFreqX - num - Average of the Mean value of the frequency body acceleration jerk of X
fBodyAccJerkMeanFreqY - num - Average of the Mean value of the frequency body acceleration jerk of Y
fBodyAccJerkMeanFreqZ - num - Average of the Mean value of the frequency body acceleration jerk of Z
fBodyGyroMeanX - num - Average of the Mean value of the frequency body gyro meter of X
fBodyGyroMeanY - num - Average of the Mean value of the frequency body gyro meter of Y
fBodyGyroMeanZ - num - Average of the Mean value of the frequency body gyro meter of Z
fBodyGyroMeanFreqX - num - Average of the Mean value of the frequency body gyro meter of X
fBodyGyroMeanFreqY - num - Average of the Mean value of the frequency body gyro meter of Y
fBodyGyroMeanFreqZ - num - Average of the Mean value of the frequency body gyro meter of Z
fBodyAccMagMean - num - Average of the Mean value of the frequency body acceleration magnitude
fBodyAccMagMeanFreq - num - Average of the Mean value of the frequency body acceleration magnitude frequency
fBodyBodyAccJerkMagMean - num - Average of the Mean value of the frequency body acceleration jerk magnitude
fBodyBodyAccJerkMagMeanFreq - num - Average of the Mean value of the frequency body acceleration jerk magnitude
fBodyBodyGyroMagMean - num - Average of the Mean value of the frequency body gyro meter magnitude
fBodyBodyGyroMagMeanFreq - num - Average of the Mean value of the frequency body gyro meter magnitude frequency
fBodyBodyGyroJerkMagMean - num - Average of the Mean value of the frequency body gyro meter Jerk magnitude
fBodyBodyGyroJerkMagMeanFreq - num - Average of the Mean value of the frequency body gyro meter Jerk magnitude frequency
angleTBodyAccMeanGravity - num - Average of the angle of the Mean value of the time body accelerometer gravity
angleTBodyAccJerkMeanGravityMean - num - Average of the angle of the Mean value of the time body accelerometer jerk gravity
angleTBodyGyroMeanGravityMean - num - Average of the angle of the Mean value of the time body gyro meter gravity
angleTBodyGyroJerkMeanGravityMean: - num - Average of the angle of the Mean value of the time body gyro meter jerk gravity
angleXgravityMean - num - Average of the angle of the Mean gravity for X
angleYgravityMean - num - Average of the angle of the Mean gravity for Y
angleZgravityMean - num - Average of the angle of the Mean gravity for Z
tBodyAccStdX - num - Average of the Standard Deviation value of the time body acceleration for X
tBodyAccStdY - num - Average of the Standard Deviation value of the time body acceleration for Y
tBodyAccStdZ - num - Average of the Standard Deviation value of the time body acceleration for Z
tGravityAccStdX - num - Average of the Standard Deviation value of the gravity acceleration for X
tGravityAccStdY - num - Average of the Standard Deviation value of the gravity acceleration for Y
tGravityAccStdZ - num - Average of the Standard Deviation value of the gravity acceleration for Z
tBodyAccJerkStdX - num - Average of the Standard Deviation value of the time body acceleration Jerk for X
tBodyAccJerkStdY - num - Average of the Standard Deviation value of the time body acceleration Jerk for Y
tBodyAccJerkStdZ - num - Average of the Standard Deviation value of the time body acceleration Jerk for Z
tBodyGyroStdX - num - Average of the Standard Deviation value of the time body gyro meter for X
tBodyGyroStdY - num - Average of the Standard Deviation value of the time body gyro meter for Y
tBodyGyroStdZ - num - Average of the Standard Deviation value of the time body gyro meter for Z
tBodyGyroJerkStdX - num - Average of the Standard Deviation value of the time body gyro meter jerk for X
tBodyGyroJerkStdY - num - Average of the Standard Deviation value of the time body gyro meter jerk for Y
tBodyGyroJerkStdZ - num - Average of the Standard Deviation value of the time body gyro meter jerk for Z
tBodyAccMagStd - num - Average of the Standard Deviation value of the time body accelerometer magnitude
tGravityAccMagStd - num - Average of the Standard Deviation value of the time gravity accelerometer magnitude
tBodyAccJerkMagStd - num - Average of the Standard Deviation value of the time body accelerometer jerk magnitude
tBodyGyroMagStd - num - Average of the Standard Deviation value of the time body gyro meter magnitude
tBodyGyroJerkMagStd - num - Average of the Standard Deviation value of the time body gyro meter jerk magnitude
fBodyAccStdX - num - Average of the Standard Deviation value of the frequency body accelerometer of X
fBodyAccStdY - num - Average of the Standard Deviation value of the frequency body accelerometer of Y
fBodyAccStdZ - num - Average of the Standard Deviation value of the frequency body accelerometer of Z
fBodyAccJerkStdX - num - Average of the Standard Deviation value of the frequency body accelerometer jerk of X
fBodyAccJerkStdY - num - Average of the Standard Deviation value of the frequency body accelerometer jerk of Y
fBodyAccJerkStdZ - num - Average of the Standard Deviation value of the frequency body accelerometer jerk of Z
fBodyGyroStdX - num - Average of the Standard Deviation value of the frequency body gyro meter of X
fBodyGyroStdY - num - Average of the Standard Deviation value of the frequency body gyro meter of Y
fBodyGyroStdZ - num - Average of the Standard Deviation value of the frequency body gyro meter of Z
fBodyAccMagStd - num - Average of the Standard Deviation value of the frequency body accelerometer magnitude
fBodyBodyAccJerkMagStd - num - Average of the Standard Deviation value of the frequency body accelerometer jerk magnitude
fBodyBodyGyroMagStd - num - Average of the Standard Deviation value of the frequency body gyro meter magnitude
fBodyBodyGyroJerkMagStd - num - Average of the Standard Deviation value of the frequency body gyro meter jerk magnitude
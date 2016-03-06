# Code Book #

## Original Data ##

The data used in this analysis were originally sourced from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

See http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for more details.

## Data Sets ##

This analysis produced two new data sets based on the original data above:

1.  *tidy_set_1.csv*: an extraction of all the means and standard deviations of the variables measured across both the training and test subjects.

2.  *tidy_set_2.csv*: a summary of the means of the variables in tidy_set_1 grouped by subject and activity.

## New Variables ##

_subject_:
	Subject identifier (integer)

_group_:
	Group, either "test" or "training" (string)

_activityLabel_:
	Type of activity, one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING (string)

## Original Variables ##

_See original/features_info.txt for details._

tBodyAcc_Mean_X

tBodyAcc_Mean_Y

tBodyAcc_Mean_Z

tBodyAcc_Std_X

tBodyAcc_Std_Y

tBodyAcc_Std_Z

tGravityAcc_Mean_X

tGravityAcc_Mean_Y

tGravityAcc_Mean_Z

tGravityAcc_Std_X

tGravityAcc_Std_Y

tGravityAcc_Std_Z

tBodyAccJerk_Mean_X

tBodyAccJerk_Mean_Y

tBodyAccJerk_Mean_Z

tBodyAccJerk_Std_X

tBodyAccJerk_Std_Y

tBodyAccJerk_Std_Z

tBodyGyro_Mean_X

tBodyGyro_Mean_Y

tBodyGyro_Mean_Z

tBodyGyro_Std_X

tBodyGyro_Std_Y

tBodyGyro_Std_Z

tBodyGyroJerk_Mean_X

tBodyGyroJerk_Mean_Y

tBodyGyroJerk_Mean_Z

tBodyGyroJerk_Std_X

tBodyGyroJerk_Std_Y

tBodyGyroJerk_Std_Z

tBodyAccMag_Mean

tBodyAccMag_Std

tGravityAccMag_Mean

tGravityAccMag_Std

tBodyAccJerkMag_Mean

tBodyAccJerkMag_Std

tBodyGyroMag_Mean

tBodyGyroMag_Std

tBodyGyroJerkMag_Mean

tBodyGyroJerkMag_Std

fBodyAcc_Mean_X

fBodyAcc_Mean_Y

fBodyAcc_Mean_Z

fBodyAcc_Std_X

fBodyAcc_Std_Y

fBodyAcc_Std_Z

fBodyAcc_meanFreq_X

fBodyAcc_meanFreq_Y

fBodyAcc_meanFreq_Z

fBodyAccJerk_Mean_X

fBodyAccJerk_Mean_Y

fBodyAccJerk_Mean_Z

fBodyAccJerk_Std_X

fBodyAccJerk_Std_Y

fBodyAccJerk_Std_Z

fBodyAccJerk_meanFreq_X

fBodyAccJerk_meanFreq_Y

fBodyAccJerk_meanFreq_Z

fBodyGyro_Mean_X

fBodyGyro_Mean_Y

fBodyGyro_Mean_Z

fBodyGyro_Std_X

fBodyGyro_Std_Y

fBodyGyro_Std_Z

fBodyGyro_meanFreq_X

fBodyGyro_meanFreq_Y

fBodyGyro_meanFreq_Z

fBodyAccMag_Mean

fBodyAccMag_Std

fBodyAccMag_meanFreq

fBodyBodyAccJerkMag_Mean

fBodyBodyAccJerkMag_Std

fBodyBodyAccJerkMag_meanFreq

fBodyBodyGyroMag_Mean

fBodyBodyGyroMag_Std

fBodyBodyGyroMag_meanFreq

fBodyBodyGyroJerkMag_Mean

fBodyBodyGyroJerkMag_Std

fBodyBodyGyroJerkMag_meanFreq

angle_tBodyAccMean_gravity

angle_tBodyAccJerkMean_gravityMean

angle_tBodyGyroMean_gravityMean

angle_tBodyGyroJerkMean_gravityMean

angle_X_gravityMean

angle_Y_gravityMean

angle_Z_gravityMean


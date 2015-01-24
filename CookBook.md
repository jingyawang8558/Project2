The goal of this project is to prepare tidy data that can be used for later analysis. 

The raw data is collected from the accelerometers from the Samsung Galaxy S smartphone (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time, and 'f' to indicate frequency domain signals) were captured at a constant rate of 50 Hz. These signals were used to estimate variables of the feature vector for each pattern.

The raw data was processed as below to make a tidy dataset:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 

From the data set in step 4, a second, independent tidy data set was created with the average of each variable for each activity and each subject. The variables are ('-XYZ' denoting 3-axial signals in the X, Y and Z directions):

* Subject
* Activity
* tBodyAcc-mean()-XYZ
* tBodyAcc-std()-XYZ
* tGravityAcc-mean()-XYZ
* tGravityAcc-std()-XYZ
* tBodyAccJerk-mean()-XYZ
* tBodyAccJerk-std()-XYZ
* tBodyGyro-mean()-XYZ
* tBodyGyro-std()-XYZ
* tBodyGyroJerk-mean()-XYZ
* tBodyGyroJerk-std()-XYZ
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-XYZ
* fBodyAcc-std()-XYZ
* fBodyAccJerk-mean()-XYZ
* fBodyAccJerk-std()-XYZ
* fBodyGyro-mean()-XYZ
* fBodyGyro-std()-XYZ
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()

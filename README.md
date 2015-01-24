## Course project for Getting and Cleaning Data
 
The code in this repo is used to create a tidy data set of Human Activity Recognition Using Smartphones Data Set (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for the final project of gettng and cleaning data. 

The code is divided into several part
* To download and unzip the data
* To read in the files and check data dimension
* To change the column names into descriptive variable names (address question 4)
* To extract only the measurements on the mean and standard deviation for each measurement (address question 2)
* To merges the training and the test sets to create one data set (address question 1)
* To replace the activity indexes with descriptive activity names (address question 3)
* From the data set in step 4, to create a second, independent tidy data set with the average of each variable for each activity and each subject (address question 5)

The files uploaded in the repo include:
* run_analysis.R: which is the script used for analysis
* CodeBook.md: a code book that describes the variables, the data, and work performed to clean up the data
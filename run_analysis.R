
### download and unzip files
setwd("H:/Coursera/Getting and clearning data/project")
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="project.zip")
unzip("project.zip")
setwd("H:/Coursera/Getting and clearning data/project/UCI HAR Dataset")

### read in files and check data dimention
X_train<-read.table("H:/Coursera/Getting and clearning data/project/UCI HAR Dataset/train/X_train.txt")
head(X_train)
dim(X_train)
y_train<-read.table("H:/Coursera/Getting and clearning data/project/UCI HAR Dataset/train/y_train.txt")
head(y_train)
table(y_train)
dim(y_train)
subject_train<-read.table("H:/Coursera/Getting and clearning data/project/UCI HAR Dataset/train/subject_train.txt")
head(subject_train)
table(subject_train)
dim(subject_train)
X_test<-read.table("H:/Coursera/Getting and clearning data/project/UCI HAR Dataset/test/X_test.txt")
head(X_test)
dim(X_test)
y_test<-read.table("H:/Coursera/Getting and clearning data/project/UCI HAR Dataset/test/y_test.txt")
head(y_test)
table(y_test)
dim(y_test)
subject_test<-read.table("H:/Coursera/Getting and clearning data/project/UCI HAR Dataset/test/subject_test.txt")
head(subject_test)
table(subject_test)
dim(subject_test)
features<-read.table("H:/Coursera/Getting and clearning data/project/UCI HAR Dataset/features.txt")
head(features)
dim(features)
activity_labels<-read.table("H:/Coursera/Getting and clearning data/project/UCI HAR Dataset/activity_labels.txt")
activity_labels

### 4. Appropriately labels the data set with descriptive variable names.
colnames(X_train)<-features$V2
X_train[1:3,1:5]
colnames(X_test)<-features$V2
X_test[1:3,1:5]
colnames(y_train)<-c("Activity")
head(y_train)
colnames(subject_train)<-c("Subject")
head(subject_train)
colnames(y_test)<-c("Activity")
head(y_test)
colnames(subject_test)<-c("Subject")
head(subject_test)

### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
head(features)
tail(features)
i1<-grepl("mean()",features$V2,fixed=TRUE)
i2<-grepl("std()",features$V2)
features1<-features[(i1|i2),]
name<-features1$V2
name<-as.character(name)
X_train_1<-subset(X_train,select=name)
X_test_1<-subset(X_test,select=name)
X_train_1[1:3,1:10]
X_test_1[1:3,1:10]
colnames(X_train_1)

### 1. Merges the training and the test sets to create one data set.
train<-cbind(subject_train,y_train,X_train_1)
train[1:3,1:5]
test<-cbind(subject_test,y_test,X_test_1)
test[1:3,1:5]
data<-rbind(train,test)
data[1:3,1:5]

### 3. Uses descriptive activity names to name the activities in the data set
data$Activity <- as.character(data$Activity)
data$Activity[data$Activity == "1"] <- "WALKING"
data$Activity[data$Activity == "2"] <- "WALKING_UPSTAIRS"
data$Activity[data$Activity == "3"] <- "WALKING_DOWNSTAIRS"
data$Activity[data$Activity == "4"] <- "SITTING"
data$Activity[data$Activity == "5"] <- "STANDING"
data$Activity[data$Activity == "6"] <- "LAYING"
data$Activity <- as.factor(data$Activity)
write.table(data,file="tidy data set.txt",row.names=F,sep="\t")

### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
data<-read.table("H:/Coursera/Getting and clearning data/project/UCI HAR Dataset/tidy data set.txt",header=TRUE,sep = "\t")
library(plyr)
library(reshape2)
data1<- melt(data, id=c("Subject", "Activity"))
head(data1)
datamean<-dcast(data1,Subject+Activity~variable, mean)
write.table(datamean,file="tidy data set mean.txt",row.names=F,sep="\t")


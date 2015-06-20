library(plyr)
library(dplyr)

features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

grp_mean <- grep("mean\\(\\)",as.character(features$V2)) 
# get the indices of mean values 
# result stored in vector grp_mean

grp_std  <- grep("std\\(\\)",as.character(features$V2)) 
# get the indices of standard deviations 
# result stored in vector grp_std

grp_mean_std <- vector(mode="numeric",length=2*length(grp_mean)) 
for(k in 1:length(grp_mean)) {grp_mean_std[2*k-1] <- grp_mean[k]; grp_mean_std[2*k] <- grp_std[k]}
# combine grp_mean and grp_std to grp_mean_std
# a mean value is immediately followed by the std of the same quantity

name_vec <- c("Subject","Action",as.character(features$V2[grp_mean_std]))
# convert the vector of feature indices grp_mean_std 
# into a vector of descriptive feature names name_vec

## Below: reading and subsetting the test data set

Xtest <- read.table("UCI HAR Dataset/test/X_test.txt") 
Ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
Subj_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
Select_Test <- cbind(Subj_test$V1,activities$V2[Ytest$V1],Xtest[,grp_mean_std]) 
# the line above makes a new dataframe Select_Test
# first column specifying the subjects of the experiment
# second column specifying the action that the subjects performed
# the rest of the columns are the means and stds 
names(Select_Test) <- name_vec
# assign variable names to the data frame
rm(Xtest) 
#release memory

## Below: reading and subsetting the train data set the same way as for test data set

Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
Subj_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
Select_Train <- cbind(Subj_train$V1,activities$V2[Ytrain$V1],Xtrain[,grp_mean_std])
names(Select_Train) <- name_vec
rm(Xtrain) #release memory

## Below: merging the test and the train data frames 
Tidy_Data <- rbind(Select_Test,Select_Train) 
rm(Select_Test,Select_Train) #release memory

## Below: export merged tidy data frame to a txt file
write.table(Tidy_Data,file="Tidy_Data.txt",row.names = FALSE) #export




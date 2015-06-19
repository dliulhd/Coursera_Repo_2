library(plyr)
library(dplyr)

features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

grp_mean <- grep("mean\\(\\)",as.character(features$V2))
grp_std  <- grep("std\\(\\)",as.character(features$V2))

grpMS <- c(grp_mean,grp_std)
grpMSMS <- vector(mode="numeric",length=2*length(grp_mean))
for(k in 1:length(grp_mean)) {grpMSMS[2*k-1] <- grp_mean[k]; grpMSMS[2*k] <- grp_std[k]}

name_vec <- c("Subject","Action",as.character(features$V2[grpMSMS]))


# following six lines work on the test data set
Xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
Ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
Subj_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
Select_Test <- cbind(Subj_test$V1,activities$V2[Ytest$V1],Xtest[,grpMSMS])
names(Select_Test) <- name_vec
#rm(Xtest)

# following six lines work on the training data set
Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
Ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
Subj_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
Select_Train <- cbind(Subj_train$V1,activities$V2[Ytrain$V1],Xtrain[,grpMSMS])
names(Select_Train) <- name_vec
#rm(Xtrain)

# row-binding together the testing and the training data frames and then export to txt
Tidy_Data <- rbind(Select_Test,Select_Train)
write.table(Tidy_Data,file="Tidy_Data.txt")




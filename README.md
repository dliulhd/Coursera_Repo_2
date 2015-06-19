# Course Project of Getting and Cleaning Data


## General information about the original data set

This R script "run_analysis_R.R" tidies the dataset obtained in human activity recognition experiment, measured by smartphones (Samsung Galaxy S II). 

Dataset originally published in 

"Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012"

The original data sets and explanations are included in the folder "UCI HAR Dataset".

See more details about the original data set in "UCI HAR Dataset/README.txt"


## The function that the R script realizes

The script "run_analysis_R.R" picks out from the original data set, all the average values and standard deviations, organizing them into a single tidy data frame and exporting the tidy data frame into "Tidy_Data.txt". 

The generated tidy data frame also contains variables indicating the index of the subject of the experiment (variable "Subject") as well as the action he/she is required to perform (variable "Action").

## Variables in the data frame

See "CodeBook.md"


## The function that the R script realizes

The script "run_analysis_R.R" picks out from the original data set, all the average values and standard deviations, organizing them into a single tidy data frame and exporting the tidy data frame into "Tidy_Data.txt". 

The generated tidy data frame also contains variables indicating the index of the subject of the experiment (variable "Subject") as well as the action he/she is required to perform (variable "Action").




## Details of the tidy data variables

The variables in the tidy data frame are as follows, where "1 Subject" is the person being asked to perform the action; "2 Action" is the action they perform, and from 3 to 68 are the mean values and standard deviations of the quantities measured by the Samsung Galaxy S II smartphone

1 Subject

2 Action

3 tBodyAcc-mean()-X
4 tBodyAcc-std()-X

5 tBodyAcc-mean()-Y
6 tBodyAcc-std()-Y

7 tBodyAcc-mean()-Z
8 tBodyAcc-std()-Z

9 tGravityAcc-mean()-X
10 tGravityAcc-std()-X

11 tGravityAcc-mean()-Y
12 tGravityAcc-std()-Y

13 tGravityAcc-mean()-Z
14 tGravityAcc-std()-Z

15 tBodyAccJerk-mean()-X
16 tBodyAccJerk-std()-X

17 tBodyAccJerk-mean()-Y
18 tBodyAccJerk-std()-Y

19 tBodyAccJerk-mean()-Z
20 tBodyAccJerk-std()-Z

21 tBodyGyro-mean()-X
22 tBodyGyro-std()-X

23 tBodyGyro-mean()-Y
24 tBodyGyro-std()-Y

25 tBodyGyro-mean()-Z
26 tBodyGyro-std()-Z

27 tBodyGyroJerk-mean()-X
28 tBodyGyroJerk-std()-X

29 tBodyGyroJerk-mean()-Y
30 tBodyGyroJerk-std()-Y

31 tBodyGyroJerk-mean()-Z
32 tBodyGyroJerk-std()-Z

33 tBodyAccMag-mean()
34 tBodyAccMag-std()

35 tGravityAccMag-mean()
36 tGravityAccMag-std()

37 tBodyAccJerkMag-mean()
38 tBodyAccJerkMag-std()

39 tBodyGyroMag-mean()
40 tBodyGyroMag-std()

41 tBodyGyroJerkMag-mean()
42 tBodyGyroJerkMag-std()

43 fBodyAcc-mean()-X
44 fBodyAcc-std()-X

45 fBodyAcc-mean()-Y
46 fBodyAcc-std()-Y

47 fBodyAcc-mean()-Z
48 fBodyAcc-std()-Z

49 fBodyAccJerk-mean()-X
50 fBodyAccJerk-std()-X

51 fBodyAccJerk-mean()-Y
52 fBodyAccJerk-std()-Y

53 fBodyAccJerk-mean()-Z
54 fBodyAccJerk-std()-Z

55 fBodyGyro-mean()-X
56 fBodyGyro-std()-X

57 fBodyGyro-mean()-Y
58 fBodyGyro-std()-Y

59 fBodyGyro-mean()-Z
60 fBodyGyro-std()-Z

61 fBodyAccMag-mean()
62 fBodyAccMag-std()

63 fBodyBodyAccJerkMag-mean()
64 fBodyBodyAccJerkMag-std()

65 fBodyBodyGyroMag-mean()
66 fBodyBodyGyroMag-std()

67 fBodyBodyGyroJerkMag-mean()
68 fBodyBodyGyroJerkMag-std()

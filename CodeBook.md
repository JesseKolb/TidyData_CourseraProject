Data from:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

Visit http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for more information.

This "analysis" code was created by Jesse Kolb as part of the Getting and Cleaning Data coursera project.



Variables are contained in the column names (first row) of tidy_data.txt:

 [1] "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"               "tBodyAcc-mean()-Z"               "tGravityAcc-mean()-X"           
 [5] "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"            "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
 [9] "tBodyAccJerk-mean()-Z"           "tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"             
[13] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"          "tBodyGyroJerk-mean()-Z"          "tBodyAccMag-mean()"             
[17] "tGravityAccMag-mean()"           "tBodyAccJerkMag-mean()"          "tBodyGyroMag-mean()"             "tBodyGyroJerkMag-mean()"        
[21] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"               "fBodyAcc-mean()-Z"               "fBodyAcc-meanFreq()-X"          
[25] "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"          
[29] "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[33] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"              "fBodyGyro-mean()-Z"              "fBodyGyro-meanFreq()-X"         
[37] "fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"              "fBodyAccMag-meanFreq()"         
[41] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-meanFreq()"    
[45] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-meanFreq()" "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"               
[49] "tBodyAcc-std()-Z"                "tGravityAcc-std()-X"             "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
[53] "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"            "tBodyGyro-std()-X"              
[57] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"               "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"          
[61] "tBodyGyroJerk-std()-Z"           "tBodyAccMag-std()"               "tGravityAccMag-std()"            "tBodyAccJerkMag-std()"          
[65] "tBodyGyroMag-std()"              "tBodyGyroJerkMag-std()"          "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"               
[69] "fBodyAcc-std()-Z"                "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"           
[73] "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"               "fBodyAccMag-std()"              
[77] "fBodyBodyAccJerkMag-std()"       "fBodyBodyGyroMag-std()"          "fBodyBodyGyroJerkMag-std()"

Features were normalized and bounded within [-1,1]

Tidy_data.txt contains the *mean* values for each combination of Activity and Subject.  Activities and Subjects are indicated in columns 1 & 2.
#Getting and Cleaning Data Course Project

## Instructions

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How to use the code

1. Download the project data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Extract the .zip file to a folder: "./UCI HAR Dataset/"
3. Download run_analysis.R
4. Add the "./UCI HAR Dataset/" folder's location to the run_analysis.R code
5. Run run_analysis.R

## How the code works

This code combines the training and test data and removes all columns that are not any sort of mean or standard deviation.  It then adds the subject numbers and activity names creating a variable called "combined_data".   The averages of the columns are then found for each subject and activity combination.  This final result is then saved to a file titled "tidy_data.txt"
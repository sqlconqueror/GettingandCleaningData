# Creating a Tidy Dataset
## Description
This projects uses a dataset form the UCI called "UCI HAR Dataset" that contains data about an experiment called "Human Activity Recognition Using Smartphones"

## Project Prerrequisites
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Instructions
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Dependencies
The **run_analysis.R** uses **data.table** and **dplyr**. Make sure your install them before execution.

## Results
You can use the **run_analysis.R** to generate the tidy dataset base on the dataset mentioned above. For detailed information refer to the **CodeBook**
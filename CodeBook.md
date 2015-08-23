# Code Book
## Background
This projects uses a dataset form the UCI called "UCI HAR Dataset" that contains data about an experiment called "Human Activity Recognition Using Smartphones"

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## From the Dataset
The dataset includes the following files:
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

## Variables
- x_test: Contains data form the Test set file
- y_test: Contains data form the Test labels file
- x_train: Contains data form the Training set file
- y_train: Contains data form the Training labels file
- subject_test: Contains data form the subjects file
- subject_train: Contains data form the subjects file
- activity: Contains data form the activity file
- features: Contains data form the features file
- measurements: Contains the subset of the features (extracted measurements: mean, std)
- x: Merged dataset for x_test + x_train
- y: Merged dataset for y_test + y_train
- subjects: Merged dataset for subject_test + subject_train
- data: Combined data from subjects, x and y
- tidy: Tidy dataset with aggregate using the mean

## Transformations
- The train and test datasets were combined to produced one dataset.
- The features where reduced to only the mean and std (standard deviation) variables.
- The variable names were adjusted to provide a more descriptive name.
- A tidy file was created with all data aggregated by the mean of values.
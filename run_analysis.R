
# 0. Load all data sets.

# Loads test data (X and y)
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")

x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")

# Loads subjects
subject_test <- read.table("./test/subject_test.txt")
subject_train <- read.table("./train/subject_train.txt")

# Loads activity labels and features
activity <- read.table("./activity_labels.txt")
features <- read.table("./features.txt")[,2]


# 1. Merges the training and the test sets to create one data set.

x <- rbind(x_test, x_train)
names(x) = features
y <- rbind(y_test, y_train)
subjects <- rbind(subject_test, subject_train)
names(subjects) <- "Subject"

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

measurements <- grep("-(mean|std)\\(\\)", features)

x <- x[, measurements]

# 3. Uses descriptive activity names to name the activities in the data set.

y[, 1] <- activity[y[, 1], 2]
names(y) <- "Activity"

# 4. Appropriately labels the data set with descriptive variable names.

names(x) <- gsub("Acc", "Accelerometer", names(x))
names(x) <- gsub("Gyro", "Gyroscope", names(x))
names(x) <- gsub("BodyBody", "Body", names(x))
names(x) <- gsub("Mag", "Magnitude", names(x))
names(x) <- gsub("^t", "Time", names(x))
names(x) <- gsub("^f", "Frequency", names(x))
names(x) <- gsub("tBody", "TimeBody", names(x))
names(x) <- gsub("-mean\\(\\)", "Mean", names(x), ignore.case = TRUE)
names(x) <- gsub("-std\\(\\)", "STD", names(x), ignore.case = TRUE)
names(x) <- gsub("angle", "Angle", names(x))
names(x) <- gsub("gravity", "Gravity", names(x))

data <- cbind(subjects, y, x)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidy = aggregate(data[3:66], by=list(Activity = data$Activity, Subject=data$Subject), mean)

write.table(tidy, "tidy.txt", row.name=FALSE)
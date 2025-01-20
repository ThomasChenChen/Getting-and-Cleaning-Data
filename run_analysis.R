# run_analysis.R
# ---------------
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average
#    of each variable for each activity and each subject.

# Make sure your working directory is set to the folder containing the UCI HAR Dataset.
setwd("C:/Users/pchs0114/Downloads/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

library(dplyr)

# 1. Merge the training and the test sets to create one data set.

# Read features and activity labels
features <- read.table('features.txt', col.names = c('index', 'featureName'))
activities <- read.table('activity_labels.txt', col.names = c('activityId', 'activityLabel'))

# Use check.names = FALSE to preserve original feature names exactly,
# so "tBodyAcc-mean()-X" remains "tBodyAcc-mean()-X", etc.
trainData <- read.table(
  'train/X_train.txt',
  col.names = features$featureName,
  check.names = FALSE
)
trainActivities <- read.table('train/y_train.txt', col.names = 'activityId')
trainSubjects   <- read.table('train/subject_train.txt', col.names = 'subjectId')

# Combine training data columns
train <- cbind(trainSubjects, trainActivities, trainData)

testData <- read.table(
  'test/X_test.txt',
  col.names = features$featureName,
  check.names = FALSE
)
testActivities <- read.table('test/y_test.txt', col.names = 'activityId')
testSubjects   <- read.table('test/subject_test.txt', col.names = 'subjectId')

# Combine test data columns
test <- cbind(testSubjects, testActivities, testData)

# Merge training and test data
allData <- rbind(train, test)

# (Optional) Check column names if needed:
# colnames(allData)

# 2. Extract only the measurements on the mean and standard deviation for each measurement.

# Identify all features that are mean or standard deviation measurements
meanStdIndices <- grep('mean\\(\\)|std\\(\\)', features$featureName)
selectedFeatures <- features$featureName[meanStdIndices]

# We also keep 'subjectId' and 'activityId'
selectedColumns <- c('subjectId', 'activityId', selectedFeatures)

# (Optional) If you want to verify which columns in selectedColumns aren't found in allData:
# setdiff(selectedColumns, colnames(allData))

extractedData <- allData[, selectedColumns]

# 3. Use descriptive activity names to name the activities in the data set.
extractedData <- merge(extractedData, activities, by = 'activityId', all.x = TRUE)

# 4. Appropriately label the data set with descriptive variable names.

# We will clean up and expand the abbreviations in the column names.
names(extractedData) <- gsub('^t',           'TimeDomain_',      names(extractedData))
names(extractedData) <- gsub('^f',           'FrequencyDomain_', names(extractedData))
names(extractedData) <- gsub('Acc',          'Accelerometer',    names(extractedData))
names(extractedData) <- gsub('Gyro',         'Gyroscope',        names(extractedData))
names(extractedData) <- gsub('Mag',          'Magnitude',        names(extractedData))
names(extractedData) <- gsub('BodyBody',     'Body',             names(extractedData))
names(extractedData) <- gsub('mean\\(\\)',   'Mean',             names(extractedData))
names(extractedData) <- gsub('std\\(\\)',    'Std',              names(extractedData))
names(extractedData) <- gsub('-',            '_',                names(extractedData))
names(extractedData) <- gsub('\\(\\)',       '',                 names(extractedData))

# 5. From the data set in step 4, create a second, independent tidy data set
#    with the average of each variable for each activity and each subject.

# After extracting columns:
extractedData <- merge(
  extractedData,
  activities,
  by = 'activityId',
  all.x = TRUE
)

# Then you'll have 'activityLabel' in extractedData:
colnames(extractedData)
# ...should now include "activityLabel"

# Finally, group and summarise:
tidyData <- extractedData %>%
  group_by(subjectId, activityId, activityLabel) %>%
  summarise(across(everything(), mean))

# Write the tidy data set to a file
write.table(tidyData, 'tidy_data.txt', row.name = FALSE)

# End of run_analysis.R

# Human Activity Recognition Dataset Analysis

## Overview
This project contains an R script (`run_analysis.R`) that processes the UCI Human Activity Recognition (HAR) dataset. The script performs data cleaning and transformation to create a tidy dataset containing the average measurements for each activity and subject.

## Script Workflow

The script performs the following operations:

1. **Data Merging**
   - Reads feature names and activity labels
   - Loads training and test datasets separately
   - Combines subject IDs, activity IDs, and measurements for each dataset
   - Merges training and test data into a single dataset

2. **Mean and Standard Deviation Extraction**
   - Identifies features containing mean() and std() measurements
   - Extracts only these measurements along with subject and activity IDs

3. **Activity Labeling**
   - Merges the dataset with activity labels to include descriptive activity names

4. **Variable Name Cleaning**
   - Expands abbreviations to make variable names more descriptive
   - Converts naming patterns to a consistent format
   - Removes special characters

5. **Tidy Dataset Creation**
   - Groups data by subject and activity
   - Calculates the average of each measurement
   - Writes the result to 'tidy_data.txt'

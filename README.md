# gettingAndCleaningData
A repo for the course project of the "Getting and Cleaning Data" course.

Dependencies:
- dplyr

There is only one script called *run_analysis.R* which uses the data folder,
also included in the repo, and returns a tidy data frame.
This is what happens in order:
1. All data (X_test, y_test, X_train, y_train, activity_labels, subjects and features)
are read into variables. 
2. All the observations are combined by rows, and all their corresponding activity IDs are combined by column.
3. The second column of the features data frame is used to name all the columns accordingly, and the last two columns, which were appended in step two are named "Activity ID" and "Subject".
4. The activity_labels data frame column names are then names "Activity ID" and "Activity Label".
5. The data and the activity_labels are merged, so that every observation now has its activity label.
6. All duplicated column names are removed.
7. Only column names containing "mean()", "std()" or "Activity Label" are kept.
8. The data frame is returned.
#CodeBook

This is a cleaned up dataset that uses data collected by UCI.
Data was originally extracted from a smartphone's accelerometer and gyroscope. Then the data was filtered and altered (not by this script).

All mean() and std() features were extracted, along with their corresponding activity labels and subjects, in order to create this dataset.

The following variables' mean and std are included in the set.
If a variable has XYZ in its name, it means there is one entry for each axis, total of 3.

tBodyAcc-XYZ (dbl)
Time domain Body Acceleration measurement in each direction.

tGravityAcc-XYZ(dbl)
Time Gravity Acceleration measurement in each direction.

tBodyAccJerk-XYZ (dbl)
Time derivative of the Body Acceleration measurement in each direction.

tBodyGyro-XYZ (dbl)
Time domain body Angular Velocity measurement in each direction.

tBodyGyroJerk-XYZ (dbl)
Time derivative of the body Angular Velocity measurement in each direction.

tBodyAccMag (dbl)
Euclidean norm of Time domain Body Acceleration measurement.

tGravityAccMag (dbl)
Euclidean norm of Time domain Gravity Acceleration measurement.

tBodyAccJerkMag (dbl)
Euclidean norm of Time derivative of the Body Acceleration measurement.

tBodyGyroMag (dbl)
Euclidean norm of the Time domain body Angular Velocity measurement.

tBodyGyroJerkMag (dbl)
Euclidean norm of the Time derivative of the body Angular Velocity measurement.

fBodyAcc-XYZ (dbl)
Frequency domain Body Acceleration measurement in each direction.

fBodyAccJerk-XYZ (dbl)
Frequency domain of Time derivative of the Body Acceleration measurement in each direction.

fBodyGyro-XYZ (dbl)
Frequency domain body Angular Velocity measurement in each direction.

fBodyAccMag (dbl)
Frequency domain signal of the Euclidean norm of Time domain Body Acceleration measurement.


fBodyAccJerkMag (dbl)
Frequency domain signal of the Euclidean norm of Time derivative of the Body Acceleration measurement.

fBodyGyroMag (dbl)
Frequency domain signal of the Euclidean norm of the Time domain body Angular Velocity measurement.

fBodyGyroJerkMag (dbl)
Frequency domain signal of the Euclidean norm of the Time derivative of the body Angular Velocity measurement.

Subject (int 1-30)
Subject identifier.

Activity Label (String)
Describes the activity that was taking place for this measurement.
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

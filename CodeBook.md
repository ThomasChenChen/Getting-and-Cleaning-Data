### Identifiers
- `subjectId`: Integer identifier of the subject who performed the activity (1-30)
- `activityId`: Integer identifier of the activity (1-6)
- `activityLabel`: Descriptive name of the activity
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

### Measurements
All measurements are floating-point values, normalized and bounded within [-1,1]. The measurements are averages of the original data, grouped by subject and activity.

#### Time Domain Signals
Captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz.

##### Body Acceleration
- `TimeDomain_Body_Accelerometer_Mean_X`
- `TimeDomain_Body_Accelerometer_Mean_Y`
- `TimeDomain_Body_Accelerometer_Mean_Z`
- `TimeDomain_Body_Accelerometer_Std_X`
- `TimeDomain_Body_Accelerometer_Std_Y`
- `TimeDomain_Body_Accelerometer_Std_Z`

##### Gravity Acceleration
- `TimeDomain_Gravity_Accelerometer_Mean_X`
- `TimeDomain_Gravity_Accelerometer_Mean_Y`
- `TimeDomain_Gravity_Accelerometer_Mean_Z`
- `TimeDomain_Gravity_Accelerometer_Std_X`
- `TimeDomain_Gravity_Accelerometer_Std_Y`
- `TimeDomain_Gravity_Accelerometer_Std_Z`

##### Body Acceleration Jerk
- `TimeDomain_Body_Accelerometer_Jerk_Mean_X`
- `TimeDomain_Body_Accelerometer_Jerk_Mean_Y`
- `TimeDomain_Body_Accelerometer_Jerk_Mean_Z`
- `TimeDomain_Body_Accelerometer_Jerk_Std_X`
- `TimeDomain_Body_Accelerometer_Jerk_Std_Y`
- `TimeDomain_Body_Accelerometer_Jerk_Std_Z`

##### Body Gyroscope
- `TimeDomain_Body_Gyroscope_Mean_X`
- `TimeDomain_Body_Gyroscope_Mean_Y`
- `TimeDomain_Body_Gyroscope_Mean_Z`
- `TimeDomain_Body_Gyroscope_Std_X`
- `TimeDomain_Body_Gyroscope_Std_Y`
- `TimeDomain_Body_Gyroscope_Std_Z`

##### Body Gyroscope Jerk
- `TimeDomain_Body_Gyroscope_Jerk_Mean_X`
- `TimeDomain_Body_Gyroscope_Jerk_Mean_Y`
- `TimeDomain_Body_Gyroscope_Jerk_Mean_Z`
- `TimeDomain_Body_Gyroscope_Jerk_Std_X`
- `TimeDomain_Body_Gyroscope_Jerk_Std_Y`
- `TimeDomain_Body_Gyroscope_Jerk_Std_Z`

##### Magnitude Calculations
- `TimeDomain_Body_Accelerometer_Magnitude_Mean`
- `TimeDomain_Body_Accelerometer_Magnitude_Std`
- `TimeDomain_Gravity_Accelerometer_Magnitude_Mean`
- `TimeDomain_Gravity_Accelerometer_Magnitude_Std`
- `TimeDomain_Body_Accelerometer_Jerk_Magnitude_Mean`
- `TimeDomain_Body_Accelerometer_Jerk_Magnitude_Std`
- `TimeDomain_Body_Gyroscope_Magnitude_Mean`
- `TimeDomain_Body_Gyroscope_Magnitude_Std`
- `TimeDomain_Body_Gyroscope_Jerk_Magnitude_Mean`
- `TimeDomain_Body_Gyroscope_Jerk_Magnitude_Std`

#### Frequency Domain Signals
Produced by applying a Fast Fourier Transform (FFT) to some of the time domain signals.

##### Body Acceleration
- `FrequencyDomain_Body_Accelerometer_Mean_X`
- `FrequencyDomain_Body_Accelerometer_Mean_Y`
- `FrequencyDomain_Body_Accelerometer_Mean_Z`
- `FrequencyDomain_Body_Accelerometer_Std_X`
- `FrequencyDomain_Body_Accelerometer_Std_Y`
- `FrequencyDomain_Body_Accelerometer_Std_Z`

##### Body Acceleration Jerk
- `FrequencyDomain_Body_Accelerometer_Jerk_Mean_X`
- `FrequencyDomain_Body_Accelerometer_Jerk_Mean_Y`
- `FrequencyDomain_Body_Accelerometer_Jerk_Mean_Z`
- `FrequencyDomain_Body_Accelerometer_Jerk_Std_X`
- `FrequencyDomain_Body_Accelerometer_Jerk_Std_Y`
- `FrequencyDomain_Body_Accelerometer_Jerk_Std_Z`

##### Body Gyroscope
- `FrequencyDomain_Body_Gyroscope_Mean_X`
- `FrequencyDomain_Body_Gyroscope_Mean_Y`
- `FrequencyDomain_Body_Gyroscope_Mean_Z`
- `FrequencyDomain_Body_Gyroscope_Std_X`
- `FrequencyDomain_Body_Gyroscope_Std_Y`
- `FrequencyDomain_Body_Gyroscope_Std_Z`

##### Magnitude Calculations
- `FrequencyDomain_Body_Accelerometer_Magnitude_Mean`
- `FrequencyDomain_Body_Accelerometer_Magnitude_Std`
- `FrequencyDomain_Body_Accelerometer_Jerk_Magnitude_Mean`
- `FrequencyDomain_Body_Accelerometer_Jerk_Magnitude_Std`
- `FrequencyDomain_Body_Gyroscope_Magnitude_Mean`
- `FrequencyDomain_Body_Gyroscope_Magnitude_Std`
- `FrequencyDomain_Body_Gyroscope_Jerk_Magnitude_Mean`
- `FrequencyDomain_Body_Gyroscope_Jerk_Magnitude_Std`

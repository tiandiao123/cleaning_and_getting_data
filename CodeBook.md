Student:Cuiqing Li

Github Account:tiandiao123

Email:lixxx3527@gmail.com

Submitted Date:8/7/2016

First of all, I will talk about some details about my cleandata.txt. In the cleandata.txt file, I store the final tidy data set hello_data in the file(actually they are the same, I just want to make sure the data readable in xlsx file). This hello_data is a data.frame which has average value of every variable for each activity(WALKING, WALKINGUPSTAIRS,WALKINGDOWNSTAIRS,SITTING,SATNDING,LAYING) based on different different subject_id. Notice that I group final_data with subject_id and activity_label. 
Moreover, the cleandata.txt has average value (unit:HZ) of different variables(only includes mean and standard deviation measurements)  based on different activity label names(WALKING, WALKINGUPSTAIRS,WALKINGDOWNSTAIRS,SITTING,SATNDING,LAYING) and different subject_ids. The first column of the txt file is the activity names, and the second column of the txt file is the subject id.  
As you can see, cleandata.txt has column names which correspond to all thr mean and standard deviation measurements: 
tBodyAcc-mean()-X	
tBodyAcc-mean()-Y	
tBodyAcc-mean()-Z	
tBodyAcc-std()-X	
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X	
tGravityAcc-mean()-Y	
tGravityAcc-mean()-Z	
tGravityAcc-std()-X	
tGravityAcc-std()-Y	
tGravityAcc-std()-Z	
tBodyAccJerk-mean()-X	
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X	
tBodyAccJerk-std()-Y	
tBodyAccJerk-std()-Z	
tBodyGyro-mean()-X	
tBodyGyro-mean()-Y	
tBodyGyro-mean()-Z	
tBodyGyro-std()-X	
tBodyGyro-std()-Y	
tBodyGyro-std()-Z	
tBodyGyroJerk-mean()-X	
tBodyGyroJerk-mean()-Y	
tBodyGyroJerk-mean()-Z	
tBodyGyroJerk-std()-X	
tBodyGyroJerk-std()-Y	
tBodyGyroJerk-std()-Z	
tBodyAccMag-mean()	
tBodyAccMag-std()	
tGravityAccMag-mean()	
tGravityAccMag-std()	
tBodyAccJerkMag-mean()	
tBodyAccJerkMag-std()	
tBodyGyroMag-mean()	
tBodyGyroMag-std()	
tBodyGyroJerkMag-mean()	
tBodyGyroJerkMag-std()	
fBodyAcc-mean()-X	
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X	
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y	
fBodyAcc-meanFreq()-Z	
fBodyAccJerk-mean()-X	
fBodyAccJerk-mean()-Y	
fBodyAccJerk-mean()-Z	
fBodyAccJerk-std()-X	
fBodyAccJerk-std()-Y	
fBodyAccJerk-std()-Z	
fBodyAccJerk-meanFreq()-X	
fBodyAccJerk-meanFreq()-Y	
fBodyAccJerk-meanFreq()-Z	
fBodyGyro-mean()-X	
fBodyGyro-mean()-Y	
fBodyGyro-mean()-Z	
fBodyGyro-std()-X	
fBodyGyro-std()-Y	
fBodyGyro-std()-Z	
fBodyGyro-meanFreq()-X	
fBodyGyro-meanFreq()-Y	
fBodyGyro-meanFreq()-Z	
fBodyAccMag-mean()	
fBodyAccMag-std()	
fBodyAccMag-meanFreq()	
fBodyBodyAccJerkMag-mean()	
fBodyBodyAccJerkMag-std()	
fBodyBodyAccJerkMag-meanFreq()	
fBodyBodyGyroMag-mean()	
fBodyBodyGyroMag-std()	
fBodyBodyGyroMag-meanFreq()	
fBodyBodyGyroJerkMag-mean()	
fBodyBodyGyroJerkMag-std()	
fBodyBodyGyroJerkMag-meanFreq(). 

Then, the cleandata.txt shows average value of differnt variables above based on different activity names(WALKING, WALKINGUPSTAIRS,WALKINGDOWNSTAIRS,SITTING,SATNDING,LAYING) and the subject ids. The unit for average value is HZ. 
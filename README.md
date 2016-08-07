Student:Cuiqing Li
Github account:tiandiao123
Submitted Date:8/7/2016

Description:
    First of all, the run_analysis should be in the UCI HAR Dataset directory, which means that it should be in the same directory as features.txt.
    The run_analysis.R is used to handle all the analysis in this project. In this R script file(run_analysis.R), I used two variables data_train and data_test to get data sets from train/X_train.txt and test/X_test.txt through read.table functions. Also, the program get their coressponding label number from train/y_train.txt and test/y_test.txt. After that, the progam bind label numbers with data_train and data_test seperately. Then, the program gives the data sets column names using the data read from features.txt.
    Next, the program combine data_train and data_test to store them in variable callled total_data. After that, based on the information in the activity_labels.txt, I renamed the label names in the total_data. Then, I used grepl functions to extract only the measurements on the mean and standard deviation for each measurement. Then, we store them in another variable final_data. 

    Then, I divide final_data into 6 parts based on the label names,and compute their average value using mean functions. Then, convert those data into a data.frame variable called hello_data. Then,I write hello_data into a xlsx file callled cleandata.xlsx.
    

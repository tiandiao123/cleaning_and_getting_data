# this is my codes of the project assignment(getting and cleanning data)

library(dplyr)
library(xlsx)

#read files and name columns of the data sets
data_train<-read.table('train/X_train.txt')
data_test<-read.table('test/X_test.txt')
columnnames<-read.table('features.txt')
colnames(data_train)<-columnnames[,2]
colnames(data_test)<-columnnames[,2]

#get label numbers from feateature.txt 
label_test<-read.table('test/y_test.txt')
label_train<-read.table('train/y_train.txt')
colnames(label_test)<-'activity_label'
colnames(label_train)<-'activity_label'

#combine label data with data_train data set and data_test data set
data_train2<-cbind(label_train,data_train)
data_test2<-cbind(label_test,data_test)
total_data<-rbind(data_train2,data_test2)


#change the label values into descriptive activity names
total_data$activity_label<-as.character(total_data$activity_label)
total_data$activity_label[total_data$activity_label=='1']<-'WALKING'
total_data$activity_label[total_data$activity_label=='2']<-'WALKING_UPSTAIRS'
total_data$activity_label[total_data$activity_label=='3']<-'WALKING_DOWNSTAIRS'
total_data$activity_label[total_data$activity_label=='4']<-'SITTING'
total_data$activity_label[total_data$activity_label=='5']<-'STANDING'
total_data$activity_label[total_data$activity_label=='6']<-'LAYING'



#extract the names with 'sd' and 'mean' from colnames(total_data)

col_names<-grepl("activity_label|mean|std",colnames(total_data),perl = TRUE)
#Extracts only the measurements on the mean and standard deviation for each measurement

final_data<-total_data[col_names]

#extract subject_id from subject_train.txt and subject_test.txt
subject_id_train<-read.table('./train/subject_train.txt')
subject_id_test<-read.table('test/subject_test.txt')

#combine subject_id_train and subject_id_test
subject_id<-rbind(subject_id_train,subject_id_test)
colnames(subject_id)<-'subject_id'

#add subjct_id into the final_data
final_data<-cbind(subject_id,final_data)

#group final_data by activity labels and subject_id so that we can compute their mean values of variables based on subject_id and activity
hello_data<-group_by(final_data,activity_label,subject_id)
hello_data<-summarise_each(hello_data,funs(mean))

#store the tidy data into a cleandata.txt
write.table(hello_data,"cleandata.txt",row.names = FALSE)












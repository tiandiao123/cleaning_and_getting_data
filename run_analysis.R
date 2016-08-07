#this is my codes of the project assignment(getting and cleanning data)

library(dplyr)
library(xlsx)

#read files and name columns of the data sets
data_train<-read.table('train/X_train.txt')
data_test<-read.table('test/X_test.txt')
columnnames<-read.table('features.txt')
colnames(data_train)<-columnnames[,2]
colnames(data_test)<-columnnames[,2]

label_test<-read.table('test/y_test.txt')
label_train<-read.table('train/y_train.txt')
colnames(label_test)<-'activity_label'
colnames(label_train)<-'activity_label'

data_train2<-cbind(label_train,data_train)
data_test2<-cbind(label_test,data_test)
total_data<-rbind(data_train2,data_test2)

total_data$activity_label<-as.character(total_data$activity_label)
total_data$activity_label[total_data$activity_label=='1']<-'WALKING'
total_data$activity_label[total_data$activity_label=='2']<-'WALKING_UPSTAIRS'
total_data$activity_label[total_data$activity_label=='3']<-'WALKING_DOWNSTAIRS'
total_data$activity_label[total_data$activity_label=='4']<-'SITTING'
total_data$activity_label[total_data$activity_label=='5']<-'STANDING'
total_data$activity_label[total_data$activity_label=='6']<-'LAYING'




col_names<-grepl("activity_label|mean|std",colnames(total_data),perl = TRUE)

final_data<-total_data[col_names]



walking_data<-final_data[final_data$activity_label=='WALKING',]
walkingupstairs_data<-final_data[final_data$activity_label=='WALKING_UPSTAIRS',]
walkingdownstairs_data<-final_data[final_data$activity_label=='WALKING_DOWNSTAIRS',]
sitting_data<-final_data[final_data$activity_label=='SITTING',]
standing_data<-final_data[final_data$activity_label=='STANDING',]
laying_data<-final_data[final_data$activity_label=='LAYING',]


WALKING<-apply(walking_data[,2:80],2,mean)
WALKINGUPSTAIRS<-apply(walkingupstairs_data[,2:80],2,mean)
WALKINGDOWNSTAIRS<-apply(walkingdownstairs_data[,2:80],2,mean)
SITTING<-apply(sitting_data[,2:80],2,mean)
STANDING<-apply(standing_data[,2:80],2,mean)
LAYING<-apply(laying_data[,2:80],2,mean)

hello_data<-rbind(WALKING,WALKINGUPSTAIRS,WALKINGDOWNSTAIRS,SITTING,STANDING,LAYING)
cnames<-paste("average of", colnames(hello_data))
colnames(hello_data)<-cnames

hello_data<-as.data.frame(hello_data)

write.xlsx(hello_data,"cleandata.xlsx")
















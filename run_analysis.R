#Jesse Kolb
#2/22/2015
#"Getting and Cleaning Data" Coursera course project

features <- read.table("./UCI HAR Dataset/features.txt")


x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

combined_test_train <- rbind(x_train,x_test)
comb_subj <- rbind(subject_train,subject_test)
comb_activities <- rbind(y_train,y_test)

combined_test_train<-cbind(combined_test_train[,mapply(grepl,"mean()",features[,2])],combined_test_train[,mapply(grepl,"std()",features[,2])])
Used_Features <- c(as.character(features[mapply(grepl,"mean()",features[,2]),2]),as.character(features[mapply(grepl,"std()",features[,2]),2]))

#Quick method for substituting activities since there are only 6:
comb_activities[which(comb_activities==1),] <- "WALKING"
comb_activities[which(comb_activities==2),] <- "WALKING_UPSTAIRS"
comb_activities[which(comb_activities==3),] <- "WALKING_DOWNSTAIRS"
comb_activities[which(comb_activities==4),] <- "SITTING"
comb_activities[which(comb_activities==5),] <- "STANDING"
comb_activities[which(comb_activities==6),] <- "LAYING"

combined_data <- cbind(combined_test_train,comb_subj,comb_activities)
colnames(combined_data) <- c(1:79,"Subject","Activity")

tmp_data <- combined_data
#colnames(combined_data) <- c(as.character(features[,2]),"Subject","Activity")
colnames(combined_data) <- c(Used_Features,"Subject","Activity")

Data_Means <- tmp_data %>% group_by(Activity,Subject) %>% summarise_each(funs(mean))
#colnames(Data_Means) <- c("Activity","Subject",as.character(features[,2]))
colnames(Data_Means) <- c("Activity","Subject",Used_Features)


write.table(Data_Means, file = "./UCI HAR Dataset/tidy_data.txt",row.names=FALSE)
library(dplyr)
#Read all the files, and merge them.
readFiles <- function(){
    test_x <- read.table(file="data/test/X_test.txt", header = FALSE)
    
    test_y <- read.table(file="data/test/y_test.txt", header = FALSE)
    
    train_x <- read.table(file="data/train/X_train.txt", header = FALSE)
    
    train_y <- read.table(file="data/train/y_train.txt", header = FALSE)
    
    subject_train <- read.table(file="data/train/subject_train.txt", header = FALSE)
    
    subject_test <- read.table(file="data/test/subject_test.txt", header = FALSE)
    
    activity_labels <- read.table(file="data/activity_labels.txt", header = FALSE, stringsAsFactors = FALSE)
    
    names(activity_labels) <- c("Activity ID", "Activity Label")
    
    
    test <- cbind(test_x, test_y, subject_test)
    train <- cbind(train_x, train_y, subject_train)
    
    all_data <- rbind(train,test)
    
    #Add the headers
    features <- read.table(file="data/features.txt", header = FALSE,stringsAsFactors = FALSE)
    features <- features[,2]
    features <- append(features,"Activity ID")
    features <- append(features, "Subject")
    names(all_data) <- features
    
    #Add the labels for activity
    all_data <- merge(all_data,activity_labels)
    
    all_data <- all_data[,!duplicated(names(all_data))]
    
    all_data <- select(all_data,contains("mean()"),contains("std()"),contains("label"),contains("Subject"))
    
}

all_data <- readFiles()

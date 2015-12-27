#Load data
setwd("/Users/Brian/Documents/Data Scientist/Data/UCI HAR Dataset")
#Merge training and test sets into one data set
test.labels <- read.table("test/y_test.txt", col.names="label")
test.subjects <- read.table("test/subject_test.txt", col.names="subject")
test.data <- read.table("test/X_test.txt")
train.labels <- read.table("train/y_train.txt", col.names="label")
train.subjects <- read.table("train/subject_train.txt", col.names="subject")
train.data <- read.table("train/X_train.txt")
data <- rbind(cbind(test.subjects, test.labels, test.data),
              cbind(train.subjects, train.labels, train.data))
#extract mean and std dev
features <- read.table("features.txt", strip.white=TRUE, stringsAsFactors=FALSE)
features.mean.stddev <- features[grep("mean\\(\\)|stddev\\(\\)", features$V2), ]
data.mean.stddev <- data[, c(1, 2, features.mean.stddev$V1+2)]
#use descriptive labels for activities
labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
data.mean.stddev$label <- labels[data.mean.stddev$label, 2]
#label data set with descriptive variable names
descr.colnames <- c("subject", "label", features.mean.stddev$V2)
descr.colnames <- tolower(gsub("[^[:alpha:]]", "", descr.colnames))
colnames(data.mean.stddev) <- descr.colnames
#Create new data set with average of each variable for each activity and subject
aggr.data <- aggregate(data.mean.stddev[, 3:ncol(data.mean.stddev)],
                       by=list(subject = data.mean.stddev$subject, 
                               label = data.mean.stddev$label),
                       mean)
write.table(format(aggr.data, scientific=T), "tidydataset.txt",
            row.names=FALSE, col.names=F, quote=2)
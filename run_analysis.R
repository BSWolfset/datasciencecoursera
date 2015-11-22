## File: run_analysis.R

## Save previous directory
## script assumes it is being run from:
##     setwd("C:/Users/BWolfset/Documents/Class/GetData")
currWrkDir <- getwd()

## Set session
options(digits=4)
library(dplyr)

##Read the training and the test sets to create one data set
##  Probably a way to do this with looping - filelst <- list.files(wrkDir, full.names = TRUE, recursive=TRUE)
## setwd("C:/Users/BWolfset/Documents/Class/GetData/UCI HAR Dataset")
setwd("UCI HAR Dataset")
actLblFl <- read.table("activity_labels.txt")
featureFl <- read.table("features2.txt")

## setwd("C:/Users/BWolfset/Documents/Class/GetData/UCI HAR Dataset/test")
setwd("test")
subjTstFl <- read.table("subject_test.txt")
xTstFl <- read.table("X_test.txt")
yTstFl <- read.table("y_test.txt")

## setwd("C:/Users/BWolfset/Documents/Class/GetData/UCI HAR Dataset/train")
setwd("../train")
subjTrnFl <- read.table("subject_train.txt")
xTrnFl <- read.table("X_train.txt")
yTrnFl <- read.table("y_train.txt")

## Appropriately label the data set with descriptive variable names. 
## Name the columns
colnames(actLblFl) <- c("activityId", "activityNm")

colnames(subjTstFl) <- c("subjectId")
colnames(yTstFl) <- c("activityId")
colnames(xTstFl) <- featureFl[[3]]

colnames(subjTrnFl) <- c("subjectId")
colnames(yTrnFl) <- c("activityId")
colnames(xTrnFl) <- featureFl[[3]]

##Uses descriptive activity names to name the activities in the data set
##Merge the activity sets
yMrgTstFl <- merge(yTstFl, actLblFl, by.x="activityId", by.y="activityId", sort=FALSE)
yMrgTrnFl <- merge(yTrnFl, actLblFl, by.x="activityId", by.y="activityId", sort=FALSE)

##Merge the test files to create a single Test file, including the source of the data
##  In practice, the source of the information can be meaningful during analytics.  
##  Therefore, I have kept that as a new column when merging the data to have it if needed later.
tstDF <- cbind("test", subjTstFl, yMrgTstFl, xTstFl)
colnames(tstDF)[1] <- "dataSrc"
##Merge the training files to create a single training file, including the source of the data
trnDF <- cbind("train", subjTrnFl, yMrgTrnFl, xTrnFl)
colnames(trnDF)[1] <- "dataSrc"

##Merge the training and the test sets to create one data set
mrgDF <- rbind(trnDF,tstDF)

##Extracts only the measurements on the mean and standard deviation for each measurement
##Creates a second, independent tidy data set with the average of each variable for each activity and each subject 
tdyMrgDF <- mrgDF %>%
            group_by(dataSrc, subjectId, activityNm) %>%
            summarise_each (funs(mean), contains("Mean"), contains("Std"))
## alternative way to get columns, but does not summarize
##tdyMrgDF <- as.data.frame(select(mrgDF, dataSrc, subjectId, activityId, activityNm, matches("Std"), matches("Mean")))

##Creates a txt file created with write.table() using row.name=FALSE
setwd("..")  ## get back to main directory
write.table(tdyMrgDF, file = "tdyAgg.txt", row.name=FALSE)

## Clean up from script
setwd(currWrkDir)  ## get back to starting location
rm("actLblFl", "currWrkDir", "featureFl", "mrgDF", "subjTrnFl", "subjTstFl", "tdyMrgDF", "trnDF")
rm("tstDF", "xTrnFl", "xTstFl", "yMrgTrnFl", "yMrgTstFl", "yTrnFl", "yTstFl")
## rm(list=ls(all=TRUE))

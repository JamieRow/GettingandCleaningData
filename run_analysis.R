function (Run_Analysis) {
  ## Week 4 Getting and Cleaning Data assignment
  library(dplyr) #load dplyr to use merge and mutate functions 
  ## download file from internet address below and save to working directory
  datapath <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  LocalData <- "dataFile.zip"
  
  download.file(datapath,LocalData)
  
  ## Unzip data file into working directory 
  unzip(localdata)
  
  ## File unzips with directory structure
  traindatafile <- "UCI HAR Dataset/train/X_train.txt"
  traindatalabelfile <- "UCI HAR Dataset/train/Y_train.txt"
  testdatafile<- "UCI HAR Dataset/test/X_test.txt"
  testdatalabelfile<- "UCI HAR Dataset/test/Y_test.txt"
  columnlabelsfile <- "UCI HAR Dataset/features.txt"
  activitylabelsfile <- "UCI HAR Dataset/activity_labels.txt"
  
  ##Open features file which contains the labels for the columns
  columnlabels <- read.table(columnlabelsfile,stringsAsFactors = FALSE)
  ## add an extra field to the start of column names to identify the activity
  columnlabels <- rbind(c(0,"Activity ID"),columnlabels)
  
  ##Open Activity labels 
  activitylabels <- read.table(activitylabelsfile,stringsAsFactors = FALSE)
  names(activitylabels) <= c("ACtivity ID","Activity")
  
  ## Open the train data and train labels
  traindata <- read.table(traindatafile)
  trainlabel <- read.table(traindatalabelfile)
  ## column bind the labels to the data activity id lines up with the datafile
  trainmerge <- cbind(trainlabel,traindata)
 
  ## Open the test data and test labels
  testdata <- read.table(testdatafile)
  testlabel <- read.table(testdatalabelfile)
  ## column bind the labels to the data activity id lines up with the datafile
  testmerge <- cbind(testlabel,testdata)

  ##join together test and train  
  mergeall <- rbind(testmerge,trainmerge)
  
  names(mergeall) <- columnlabels[,2] #use the column 2 of the labels to name the file
  
  ##Lookup the activity labels
  merge(activitylabels,mergeall,by.x = "ACtivity ID",by.y = "Activity ID",all = TRUE) -> mergeall
  
  ## Select only the mean and std columns
  
  
}
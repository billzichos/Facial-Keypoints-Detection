wd <- "~/GitHub/Facial-Keypoints-Detection"

setwd(wd)

# The following files are provided
#   - training.zip
#   - test.zip
#   - SampleSubmission.csv
#   - IdLookupTable.csv

source("~/GitHub/Get-Raw-Data/download.R")
downloadKaggle("facial-keypoints-detection","training.zip")
downloadKaggle("facial-keypoints-detection","test.zip")
downloadKaggle("facial-keypoints-detection","SampleSubmission.csv")
downloadKaggle("facial-keypoints-detection","IdLookupTable.csv")


## MANUAL STEP - Extract the zip files

trnFile <- "train.csv"
tstFile <- "test.csv"

datalist <- list(
        train=read.csv(
                paste(wd,"\\",trnFile, sep=""), header=TRUE, as.is=TRUE), 
        test=read.csv(
                paste(wd,"\\",tstFile, sep=""), header=TRUE, as.is=TRUE)
        )
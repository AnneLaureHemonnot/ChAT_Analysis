ImportFromStereoInvestigator <- function(datadir){
  setwd(datadir)
  #Lists all files of form SCPP1V1.txt
  FileList<-list.files(pattern="csv") #List of all csv files in working directory 
  EndFile<-length(FileList)  #for testing purposes. This will be changed to length of FileList
  for (i in 1:EndFile){
    #Write to a temp dataframe
    DF_temp<-read.table(FileList[i], sep=",", header=FALSE, skip=1)
    #Add current temp dataframe to combined DF
    if(i==1){
      DF<-DF_temp
    }
    else{
      DF<-rbind(DF, DF_temp)
    }
  }
  #Change variable names
  names(DF)<-c("DataFile", "Marker", "TotalMarkersCounter", "NoSections", "Region", "NoSamplingSites", "UserDefMountThickness", "MeasureDefMountThickness", "EstPopUserDefThickness", "EstPopMeanThickness",
                    "EstPopMeanThicknessCount", "EstPopNoWeightThickness", "CEm0", "CEm1",
                    "FirstEstCE", "SecondEstCE", "CountFrameArea", "SamplingGridArea")
 #Convert Datafile from factor to string
  DF$DataFile <- as.character(DF$DataFile) 
  setwd("..")
return(DF)
}


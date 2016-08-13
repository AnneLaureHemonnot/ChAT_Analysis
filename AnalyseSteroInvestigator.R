#Script to import data and analyse the output of stereoinvestigator in R
#NOTE: Before this is run for the first time, need to run "install.packages("stringr")
#Iris Oren: 100816
#110816 - NO LONGER MAINTAINING .R file. ALL UPDATES WILL BE IN .Rmd

source("./R/ImportFromStereoInvestigator.R")
source("./R/GetID.R")
library(stringr)

#User to specify userlines and corresponding regions
UserLines <- data.frame(
  Region= c("User Line 1", "User Line 2"), 
  RegionVar=c("MS", "DB"))

#Specify name of data directory
datadir <- "Data"
#Import all .csv datafiles in the working directory
DataAll <- ImportFromStereoInvestigator(datadir)
#Add a variable for ID based on Filename in the format "[A-Z0-9]". This gives an error which can be ignored
DataAll$ID <- GetID(DataAll$DataFile)
#Add regions to the data frame
DataAll <- merge(x=DataAll, y=UserLines, by="Region", all.x = TRUE)


#############
#Add genotype information
# Merge by animal ID: http://stackoverflow.com/questions/1299871/how-to-join-merge-data-frames-inner-outer-left-right
# Genotypes.csv should be saved in Data/Genotypes/Genotypes.csv
#File structure: |ID|Genotype|
#UNCOMMENT THE LINES BELOW WHEN WE HAVE THE GENOTYPE INFO
#GenotypeDat <- read.table("./Data/Genotypes/GenotypeDat.csv", sep=",", header=TRUE)
#DataAll <- merge(x=DataAll, y=GenotypeDat, by="ID", all.x=TRUE)
#####################

#Data transformations and statisitics to go here....

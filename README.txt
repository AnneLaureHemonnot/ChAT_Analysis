AnalyseStereoInvestigator.Rmd: Imports the output files from stereonivestigator for analysis in R
—————————————
Dependencies: 
install.packages(“stringr”)

————
Use:

Input: all csv files for analysis stored in /Data folder. Filenames should be of the form “xxxxxxxx.csv”

Settings to specify in Initialisation_Chunk: 
1) Mapping of user lines to regions
2) DataDir <- "Data"
3) GenotypeFilename <-"./Data/Genotypes/GenotypeDat.csv"
4) OutputDir <- "./Output/"

Functionality

- Imports all csv files in directory “Data” to a dataframe: DataAll
- Adds AnimalID variable (ID). Read from DataFile in the form [A-Z0-9].DAT (i.e. capital and alphanumeric only)
- Adds Region variable (RegionVar)
- Reads Genotype information from Data/GenotypeDat.csv variable - commented out 
- Saves dataframe as csv to OutputDir

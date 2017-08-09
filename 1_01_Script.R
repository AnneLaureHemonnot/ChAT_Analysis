### Change the number of digit for sample ID ### 
# Define the column to modify
# Define the number of digit with "%numberd"
# Select the concerned column with filename[, col] function
GenotypeDat$ID <- sprintf("%02d", GenotypeDat[, 1])


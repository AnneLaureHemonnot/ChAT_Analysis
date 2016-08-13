GetID<- function(FileName) {
  regex <- "[A-Z0-9]+"
  ID <- str_match(FileName, regex)
  return(ID)
}
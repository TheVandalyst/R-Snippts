
Get_Latest_File_name <- function(filename, path)
{
  old_location <- getwd(path)
  setwd(path)
  Names_of_Files <- list.files(pattern = filename ,full.names = TRUE) #gets path to all files in the folder
  Info_files <- file.info(Names_of_Files) #gets info of all file names loaded 
  DataFrame_Files <- data.frame(Info_files$ctime, Names_of_Files) #gets date time stamp of file when it was created
  DataFrame_Files <- DataFrame_Files[order(DataFrame_Files$Info_files.ctime),] #sorts date time stamp in descending order
  Latest_FileName <- tail(DataFrame_Files$Names_of_Files, 1) #gets the file name in last row (latest)
  Latest_FileName <- as.character(Latest_FileName) #convert it to character
  setwd(old_location)
  return(Latest_FileName)
}

#Get_Latest_File_name("new", "C:/Document/")

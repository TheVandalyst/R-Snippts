Latest_file_in_folder_using_glob <- function(Path_plus_Wildcard)
{
  list_of_files <- Sys.glob(Path_plus_Wildcard)
  details = file.info(list_of_files)
  latest_file = max(list_of_files, details$ctime)
  return(latest_file)
}

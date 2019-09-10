library("readxl")

read_xlsx_sheet1 <- function(file_name)
{
    assign(file_name, (read_excel(file_name, sheet = "Sheet1")))
}

importing_xlsx <- function(path = "C:/Documents/", extension = ".xlsx")
{
  old_path <- getwd()
  setwd(path)
  List_of_Files <- list.files(path = path, pattern = extension)
  sapply(List_of_Files, read_xlsx_sheet1)
  setwd(old_path)
}

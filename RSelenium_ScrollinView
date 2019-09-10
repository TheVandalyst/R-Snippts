library("RSelenium")
#assumes remoteDriver Session is active
Element_to_Scroll <- function(element_type = 'id', element_value = 'Search', remoteDriver = remDr)
{
  Element <- remoteDriver$findElements("id", "m68d8715f-tbb_text")
  remoteDriver$executeScript("arguments[0].scrollIntoView();",Element[1])
}

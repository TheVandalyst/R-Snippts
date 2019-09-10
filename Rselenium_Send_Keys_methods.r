#Send keys to element in R


#Method 1
#using Java Script
name <- remDr$findElements("tag", "textarea")
remDr$executeScript("arguments[0].value='test'",name[1])

#Method 2
#sending KeyStrokes
name[[1]]$sendKeysToElement(list( key = "enter"))       #if you want to send Enter
name[[1]]$sendKeysToElement(list(key = 'control', 'v')) #if you want to send Ctrl+V
name[[1]]$sendKeysToElement(list("text"))               #if you just want to send text 

#Method 3
#using JavaScript
remDr$executeScript("document.getElementsByTagName('textarea')[0].value = arguments[0];", list("test"))


#https://stackoverflow.com/questions/45615659/how-to-send-simultaneous-keys-in-rselenium-alts-to-web-driver

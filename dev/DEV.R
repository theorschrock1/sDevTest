#Check Usage -----
checks=checkPackageUsage()
runTests(package="sDevTest")
#Dismiss Usage Warnings -----
#  suppressUsageWarnings(checks)
###Dev Setup -----
## INSTALL: CTRL + SHIFT + B
sDevTools::clearEnv() ## CTRL + SHIFT + R
library(sDevTools)
library(sDevTest)
loadDependencies()
loadUtils()
#Dev -----
new_fn((),#args
 desc=  ,#Function description
 return=  #Function returns
 )

commit_all_to_github()

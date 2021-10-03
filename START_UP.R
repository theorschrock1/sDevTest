###Welcome to sDevTools package start up!

#NOTE:The following code is intented to only be run once
library(sDevTools)

#Package metadata


fill_description(
  pkg_name = "sDevTest",
  pkg_title = "Functions for Automated Testing",
  pkg_description = "Functions for Automated Testing used exclusively for testing ran by testthat.",
  author_first_name = "Theo",
  author_last_name = "Schrock",
  author_email = "<theorschrock@gmail.com>"
)

# Package dependencies (IMPORTS)

imports <- c("exprTools")
import_pkg(imports)

#Use Git and create a Github repo

sDevTools::create_github_repo()

#Start developement

sDevTools::go_to_dev()


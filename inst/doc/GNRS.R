## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ---- eval=FALSE--------------------------------------------------------------
#  
#  library(devtools)
#  install_github("EnquistLab/RGNRS")
#  
#  

## -----------------------------------------------------------------------------
library(GNRS)
GNRS_super_simple(country =  "United States", 
                 state_province = "Arizona",
                 county_parish = "Pima County")



## -----------------------------------------------------------------------------

#First, we'll load the test data that are included with this package, gnrs_testfile

gnrs_testfile <- gnrs_testfile

head(gnrs_testfile, n = 10)

## -----------------------------------------------------------------------------

gnrs_results <- GNRS(gnrs_testfile)

#The standardized names are found in these columns:
head(gnrs_results[c("country","state_province","county_parish")], n = 10)


## -----------------------------------------------------------------------------


head(GNRS_template())




## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ---- eval=FALSE--------------------------------------------------------------
#  
#  # To install the stable version from CRAN
#  install.packages("GNRS")
#  
#  # To install the development version from Github
#  
#  library(devtools)
#  install_github("EnquistLab/RGNRS")
#  
#  

## -----------------------------------------------------------------------------

library(GNRS)


# Standardizing a single country

USA_standardized <- GNRS_super_simple(country = "United States of America")

# Take a look at the columns returned
colnames(USA_standardized)

# The most useful columns in this case are country and overall_score
USA_standardized[c("country","overall_score","match_method_country")]


## -----------------------------------------------------------------------------

# Standardizing a single state




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




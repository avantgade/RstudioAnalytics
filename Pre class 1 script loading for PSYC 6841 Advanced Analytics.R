# Pre class 1 script loading for PSYC 6841 Advanced Analytics
# Run this script before the first class to get the libraries needed for the first class


#######################################################################################################
#######################################################################################################
##################################LOADING PACKAGES#####################################################

tryCatch(require(pacman),finally=utils:::install.packages(pkgs='pacman',repos='http://cran.r-project.org'));
require(pacman)

##if the above doesn't work, use this code##
##tryCatch
#detach("package:pacman", unload = TRUE)
#install.packages("pacman", dependencies = TRUE)
# ## install.packages("pacman")

pacman::p_load(Hmisc,
               checkmate,
               corrr,
               conflicted,
               readxl,
               dplyr,
               tidyr,
               ggplot2,
               knitr,
               evaluate,
               iopsych,
               psych,
               quantreg,
               lavaan,
               xtable,
               reshape2,
               GPArotation,
               Amelia,
               # esquisse,
               expss,
               multilevel,
               janitor,
               mice,
               lmtest,
               tidylog
)

#Loading from GitHub
#pacman::p_load_current_gh("trinker/lexicon", "trinker/sentimentr")
#' 
#' #Loading libraries

suppressPackageStartupMessages({
    library(Hmisc) # Contains many functions useful for data analysis
    library(checkmate) # Fast and Versatile Argument Checks
    library(corrr) # Correlations in R
    library(conflicted) # Makes it easier to handle same named functions that are in different packages
    library(readxl) # reading in Excel files
    library(dplyr) # data manipulation
    library(tidyr) # Tidy Messy Data
    library(ggplot2) # data visualization
    library(knitr) # knitting data into HTML, Word, or PDF
    library(evaluate) # Parsing and Evaluation Tools that Provide More Details than the Default
    library(iopsych) # Methods for Industrial/Organizational Psychology
    library(psych) # Procedures for Psychological, Psychometric, and Personality Research
    library(quantreg) # Quantile Regression
    library(lavaan) # confirmatory factor analysis (CFA) and structural equation modeling (SEM)
    library(xtable) # Export Tables to LaTeX or HTML
    library(reshape2) # transforming data between wide and long (tall)
    library(GPArotation) # GPA Factor Rotation
    library(Amelia) # A Program for Missing Data
    # library(esquisse) # Explore and Visualize Your Data Interactively
    library(expss) # Tables, Labels and Some Useful Functions from Spreadsheets and 'SPSS' Statistics
    library(multilevel) # Multilevel Functions
    library(janitor) # 	Simple Tools for Examining and Cleaning Dirty Data
    library(mice) # Multivariate Imputation by Chained Equations
    library(skimr) # Exploratory Data Analysis
    library(lmtest) # A collection of tests, data sets, and examples for diagnostic checking in linear regression models    
    library(tidylog) # Creates a log to tell you what your tidyverse commands are doing to the data. NOTE: MAKE SURE TO ALWAYS LOAD LAST!!!
})

for (f in getNamespaceExports("tidylog")) {
    conflicted::conflict_prefer(f, "tidylog", quiet = TRUE)
}
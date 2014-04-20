#!/usr/bin/Rscript
## R-install.R
## Mac Radigan

if(!require("ggplot2")) {
  install.packages("ggplot2", repos="http://cran.rstudio.com/") 
  library("ggplot2")
}

if(!require("quantmod")) {
  install.packages("quantmod", repos="http://cran.rstudio.com/") 
  library("quantmod")
}

if(!require("TTR")) {
  install.packages("TTR", repos="http://cran.rstudio.com/") 
  library("TTR")
}

if(!require("stockPortfolio")) {
  install.packages("stockPortfolio", repos="http://cran.rstudio.com/") 
  library("stockPortfolio")
}

if(!require("quadprog")) {
  install.packages("quadprog", repos="http://cran.rstudio.com/") 
  library("quadprog")
}

if(!require("tseries")) {
  install.packages("tseries", repos="http://cran.rstudio.com/") 
  library("tseries")
}

if(!require("scatterplot3d")) {
  install.packages("scatterplot3d", repos="http://cran.rstudio.com/") 
  library("scatterplot3d")
}

if(!require("PerformanceAnalytics")) {
  install.packages("PerformanceAnalytics", repos="http://cran.rstudio.com/") 
  library("PerformanceAnalytics")
}

if(!require("xtable")) {
  install.packages("xtable", repos="http://cran.rstudio.com/") 
  library("xtable")
}

if(!require("knitr")) {
  install.packages("knitr", repos="http://cran.rstudio.com/") 
  library("knitr")
}

## *EOF*

# Nov.25, 2017

#Yuqi Liao
#Sifan Liu

#Capital Bikeshare

library('dplyr')
install.packages('purrr')
library('purrr')

setwd("/Users/Yuqi/Google Drive/Skyladder/Data/Capital Bikeshare Trip History Data/Unzipped")

## Read in unzipped individual data files
allfiles <- list.files(path = ".",full.names = TRUE, all.files = FALSE)
bikedata <- lapply(allfiles, read.csv, sep = ',', header = TRUE)
names(bikedata) <- allfiles

ex1 <- read.csv(file = "./2010-Q4-cabi-trip-history-data.csv", sep = ",", header = TRUE)
ex2 <- read.csv(file = "./2011-Q1-cabi-trip-history-data.csv", sep = ",", header = TRUE)

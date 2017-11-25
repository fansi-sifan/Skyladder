# Nov.25, 2017
#Yuqi Liao
#Sifan Liu

#Capital Bikeshare

#### Setup ####
library('dplyr')
install.packages('purrr')
library('purrr')

#setwd("/Users/Yuqi/Google Drive/Skyladder/Data/Capital Bikeshare Trip History Data/Unzipped")
setwd("/Users/Fancy/Google Drive/Skyladder/Data/Capital Bikeshare Trip History Data/Unzipped")

#### Read Data ####
## Read in unzipped individual data files
allfiles <- list.files(path = ".",full.names = TRUE, all.files = FALSE)
allfiles <- allfiles[-28]

bikedata <- lapply(allfiles, read.csv, sep = ',', header = TRUE)
names <- lapply(allfiles, substring,3,9)

names(bikedata) <- names

#example
ex1 <- read.csv(file = "./2010-Q4-cabi-trip-history-data.csv", sep = ",", header = TRUE)
ex2 <- read.csv(file = "./2011-Q1-cabi-trip-history-data.csv", sep = ",", header = TRUE)

#### Preamble ####
# Purpose: Downloads and saves the data from Kaggle
# Author: Justin Abando
# Date: 5 April 2023
# Contact: justin.abando@mail.utoronto.ca
# Pre-requisites: Retrieved from Kaggle

#### Workspace setup ####
library(tidyverse)


#### Download data ####
setwd("/cloud/project/inputs/data")
anime <- read_csv("anime.csv")

#### Save data ####
# [...UPDATE THIS...]
write_csv(anime_list, "inputs/data/anime.csv") 

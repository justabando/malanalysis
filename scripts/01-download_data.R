#### Preamble ####
# Purpose: Downloads and saves the data from Kaggle
# Author: Justin Abando
# Date: 5 April 2023
# Contact: justin.abando@mail.utoronto.ca
# Pre-requisites: Version 7 of MyAnimeList Anime and Manga Datasets, retrieved from Kaggle @ https://www.kaggle.com/datasets/andreuvallhernndez/myanimelist

#### Workspace setup ####
library(tidyverse)


#### Download data ####
setwd("/cloud/project/inputs/data")
anime <- read_csv("anime.csv")

#### Save data ####
write_csv(anime_list, "inputs/data/anime.csv") 

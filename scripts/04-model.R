#### Preamble ####
# Purpose: Models the linear regression model used for source material analysis
# Author: Justin Abando
# Date: 18 April 2023
# Contact: justin.abando@gmail.com
# License: MIT


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
cleanedanime2 <- read_csv("outputs/data/cleaned_anime2.csv")

### Model data ####
anime_model <- lm(members ~ source, data = cleanedanime2)

#### Save model ####
saveRDS(
  anime_model,
  file = "outputs/models/first_model.rds"
)


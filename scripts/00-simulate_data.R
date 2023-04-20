#### Preamble ####
# Purpose: Simulates the desired data set of an anime catalogue
# Author: Justin Abando
# Date: 18 April 2023
# Contact: justin.abando@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####

set.seed(42) #Setting seed for reproducibility

n <- 100 #number of entries

## Creating a simulated data frame ##

simulated_anime <- tibble(
  title = paste0("Anime", 1:n), #Changing the name of the anime by adding a n + 1 at end
  score = round(runif(n, 1, 10), 1), #Assigning a score out of 10 with one decimal 
  members = sample(1000:300000, n, replace = TRUE), #Assigning MAL viewership between 1000 and 300000
  scored_by = round(members * runif(n, 0.1, 0.9)), #Assigning MAL viewers that have rated the show based on a fraction of members variable
  type = factor(sample(c("TV", "Movie", "OVA"), n, replace = TRUE)), #Assigning different show types
  episodes = sample(1:100, n, replace = TRUE), #Choosing random episode counts from 1 to 100
  source = factor(sample(c("Manga", "Light Novel", "Original", "Visual Novel"), n, replace = TRUE)), #Assigning the source of the material
  start_year = sample(1975:2022, n, replace = TRUE), #Randomizing the start year of the anime
  studios = factor(sample(c("Studio A", "Studio B", "Studio C", "Studio D"), n, replace = TRUE)) #Randomizing studio that worked on the show
)
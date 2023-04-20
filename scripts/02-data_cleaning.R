#### Preamble ####
# Purpose: Cleans the anime.csv to be analyzed
# Author: Justin Abando
# Data: 18 April 2023
# Contact: justin.abando@utoronto.ca 
# License: MIT


#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(janitor)


#### Clean data ####
anime <- read_csv("inputs/data/anime.csv") #Turning saved dataset into variable to be cleaned

cleaned_anime_names <-
  clean_names(anime) #Making names easier to input

## Refining dataset ##

cleaned_anime <-
  cleaned_anime_names |>
  select( #Reducing dataset to display relevant categories pertaining to the analysis
    title,
    type,
    score,
    scored_by,
    members,
    episodes,
    source,
    start_year,
    studios
  )

cleaned_anime$type |> #Finding unique types of observations to see if there are any issues to be cleaned
  unique()

cleaned_anime$source |>
  unique()

cleaned_anime$start_year |>
  unique()

cleaned_anime$studios |>
  unique()

cleaned_anime1 <- #Removing unneeded parentheses and underscores under strings
  cleaned_anime |>
  mutate(studios = str_replace_all(studios, "[\\[\\]']", "")) |>
  mutate(source = str_replace_all(source, "_", " "))

cleaned_anime2 <- #Creating a subset of anime without NA values
  cleaned_anime1 |>
  drop_na()

anime_user_summary <- #Used to visualize summary of anime from user stats
  cleaned_anime1 |>
  slice_head(n = 10) |>
  select(title, score, scored_by, members)
  
anime_information_summary <- #Used to visualize summary of an anime's information
  cleaned_anime1 |>
  slice_head(n = 10) |>
  select(title, type, episodes, source, start_year, studios)

#### Save data ####
write.csv(cleaned_anime1, "cleaned_anime1.csv")
write.csv(cleaned_anime2, "cleaned_anime2.csv")
write.csv(anime_user_summary, "anime_user_summary.csv")
write.csv(anime_information_summary, "anime_information_summary.csv")

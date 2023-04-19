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
    start_season,
    genres,
    studios,
    licensors
  )

cleaned_anime$type |> #Finding unique types of observations to see if there are any issues to be cleaned
  unique()

cleaned_anime$source |>
  unique()

cleaned_anime$start_year |>
  unique()

cleaned_anime$start_season |>
  unique()

cleaned_anime$genres |>
  unique()

cleaned_anime$studios |>
  unique()

cleaned_anime$licensors |>
  unique()

cleaned_anime1 <- #Removing unneeded parentheses under specific columns
  cleaned_anime |>
  mutate(genres = str_replace_all(genres, "[\\[\\]']", "")) |>
  mutate(studios = str_replace_all(studios, "[\\[\\]']", "")) |>
  mutate(licensors = str_replace_all(licensors, "[\\[\\]']", ""))



#### Save data ####
write_csv(cleaned_anime, "outputs/data/cleaned_anime.csv")


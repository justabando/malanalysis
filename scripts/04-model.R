#### Preamble ####
# Purpose: Models the linear regression model used for analysis
# Author: Justin Abando
# Date: 18 April 2023
# Contact: justin.abando@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)

#### Read data ####
cleanedanime2 <- read_csv("outputs/data/cleaned_anime2.csv")

### Model data ####
first_model <-
  stan_glm(
    formula = flying_time ~ length + width,
    data = analysis_data,
    family = gaussian(),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_aux = exponential(rate = 1, autoscale = TRUE),
    seed = 853
  )


#### Save model ####
saveRDS(
  first_model,
  file = "outputs/models/first_model.rds"
)

?stan_glm
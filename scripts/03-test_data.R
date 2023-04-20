#### Preamble ####
# Purpose: Tests the simulated dataset to ensure that initial analyses work.
# Author: Justin Abando
# Data: 18 April 2023
# Contact: justin.abando@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)

#### Test data ####

head(simulated_anime) #Testing to see what the data set looks like at the start
tail(simulated_anime) #Testing to see if the data is still consistent at the end

###Tests to ensure that the data set is properly made###

simulated_anime$score |> #Testing if variable is numeric
  class()

simulated_anime$members |> #Testing if variable is numeric
  class()

simulated_anime$scored_by |>#Testing if variable is numeric
  class()

simulated_anime$type |> #Testing if variable is a factor
  class()

simulated_anime$type |> #Testing if there are only 3 options
  unique()
  
simulated_anime$episodes |> #Testing if variable is numeric
  class()

simulated_anime$source |> #Testing if variable is a factor
  class()

simulated_anime$source |> #Testing if there are only 5 options
  unique()

simulated_anime$start_year |> #Testing if variable is numeric
  class()

simulated_anime$studios |> #Testing if variable is a factor
  class()

simulated_anime$studios |> #Testing if there are only 4 options
  unique()

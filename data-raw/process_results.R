library(tidyverse)
library(stringr)
library(usethis)
library(janitor)
library(purrr)

# read data and tame dat
results <- read_csv("data-raw/results16.csv") %>%
  clean_names() %>%
  # delete unneccesary variables
  select(-state, -total_votes, -total_votes_number) %>%
  rename( state = state_abbreviation,
          cand_id = fec_id ) %>%
  mutate(state                 = as.factor(state),
         winner_indicator      = as.factor(winner_indicator),
         general_election_date = as.Date(general_election_date),
         party                 = as.factor(party),
         #remove percent sign
         general_percent       = map(general_percent, ~gsub("%", "", .x)),
         general_percent       = as.numeric(general_percent)
         )

usethis::use_data(results, overwrite = TRUE)

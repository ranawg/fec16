library(tidyverse)
library(stringr)
library(lubridate)
library(janitor)
library(usethis)

# process <- read.delim("data-raw/ccl.txt", header = FALSE, sep = "|", quote="") %>% write_csv(path = "data-raw/linkage.csv")
linkage <- read_csv("data-raw/linkage.csv") %>%
  rename(cand_id = V1,
         cand_election_year = V2,
         fec_election_year = V3,
         committee_id = V4,
         committee_type = V5,
         committee_designation = V6,
         linkage_id =V7) %>% clean_names() %>%
  mutate(cand_election_year = as.factor(cand_election_year),
         fec_election_year = as.factor(fec_election_year),
         committee_type = as.factor(committee_type),
         committee_designation = as.factor(committee_designation))

usethis::use_data(linkage, overwrite = TRUE)


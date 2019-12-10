library(tidyverse)
library(stringr)
library(usethis)

committees<-read.delim("~/Desktop/cm.txt", header = FALSE, sep = "|", quote="") %>%
  write_csv(path = "~/fec16pkg/data-raw/committee.csv")

committees <- read_csv("~/fec16pkg/data-raw/committee.csv") %>%
  rename(committee_id = V1,
         comittee_name = V2,
         treasurers_name  = V3,
         street_one = V4,
         street_two = V5,
        city_or_town  = V6,
        state  = V7,
        zip_code = V8,
       committee_designation  = V9,
        committee_type = V10,
       committee_party  = V11,
       filing_frequency  = V12,
        interest_group_category = V13,
       connected_org_name  = V14,
       cand_id  = V15)

committees <- committees %>%
  mutate(committee_designation = as.factor(committee_designation),
         committee_type = as.factor(committee_type),
         committee_party = as.factor(committee_party),
         filing_frequency = as.factor(filing_frequency),
         interest_group_category = as.factor(interest_group_category)) %>%

   filter(committee_type %in% c("H", "S", "P")) %>%

  select(-street_one, -street_two, -filing_frequency)

usethis::use_data(committees, overwrite = TRUE)

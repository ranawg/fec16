library(tidyverse)
library(stringr)
library(usethis)

#reading files
 committee_contributions <- read.delim("~/Desktop/itpas2.txt", header = FALSE, sep = "|", quote="") %>%
   write_csv(path = "data-raw/committee_contributions.csv")

#data tidying
committee_contributions <- read_csv("data-raw/committee_contributions.csv") %>%
  rename(filer_id          = V1,
         amendment_indicator        = V2,
         report_type     = V3,
         primary_general_indicator = V4,
         image_number   = V5,
         transaction_type      = V6,
         entity_type  = V7,
         recipient_name         = V8,
         city      = V9,
         state         = V10,
         zipcode         = V11,
         employer  = V12,
         occupation   = V13,
         transaction_date = V14,
         transaction_amount = V15,
         other_id = V16,
         cand_id = V17,
         transaction_id = V18,
         report_id = V19,
         memo_code = V20,
         memo_text = V21,
         fec_record_id = V22

  ) %>%

  mutate(amendment_indicator     = as.factor(amendment_indicator),
      report_type = as.factor(report_type),
      primary_general_indicator = as.factor(primary_general_indicator),
      entity_type = as.factor(entity_type)

  ) %>%

  select(-memo_code, -memo_text) %>%
  filter(primary_general_indicator == "G2016") %>%
       group_by(cand_id)%>%
       summarise(number_of_contributions = n(), total_contributions = sum(transaction_amount[transaction_amount>0]), net_contributions = sum(transaction_amount))

write_csv(committee_contributions, path = "data-raw/committee_contributions.csv")
usethis::use_data(committee_contributions, overwrite = TRUE)

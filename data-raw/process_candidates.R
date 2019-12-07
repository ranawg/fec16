library(tidyverse)
library(stringr)
library(usethis)

#reading files
candidates <- read.delim("~/Downloads/cn.txt", header = FALSE, sep = "|", quote="")
write.csv(candidates, file = "candidates.csv")

#data tidying
candidates <- select(-`X1`) %>%
  rename(cand_id          = V1,
         cand_name        = V2,
         cand_pty_aff     = V3,
         cand_election_yr = V4,
         cand_office_st   = V5,
         cand_office      = V6,
         cand_office_dis  = V7,
         cand_ici         = V8,
         cand_status      = V9,
         cand_pcc         = V10,
         cand_sti         = V11,
         cand_st2         = V12,
         cand_city        = V13,
         cand_st          = V14,
         cand_zip         = V15
  ) %>%
  mutate(cand_pty_aff     = as.factor(cand_pty_aff),
         cand_election_yr = as.factor(cand_election_yr),
         cand_office_st   = as.factor(cand_office_st),
         cand_office      = as.factor(cand_office),
         cand_office_dis  = as.factor(cand_office_dis),
         cand_ici         = as.factor(cand_ici),
         cand_status      = as.factor(cand_status),
         cand_st          = as.factor(cand_st)
  )

usethis::use_data(candidates, overwrite = TRUE)

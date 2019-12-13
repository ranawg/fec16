library(tidyverse)

individuals <- read.delim("~/Desktop/itcont_2016_20161130_92060702.txt", header = FALSE, sep = "|", quote="") %>%

  filter(V4 == "G2016" | V4 == "P2016")%>%
sample_n(5000)

individuals <- individuals %>%
  select(-c(V2, V3, V4, V5, V7, V6, V8, V9, V12, V13, V16, V18, V17, V19, V20, V21)) %>%
  rename(committee_id = V1,
        state = V10,
        zipcode  = V11,
         transaction_date = V14,
        transaction_amount  = V15
          )

individuals <- individuals %>%
  mutate(entity_type = as.factor(entity_type))








write_csv(individuals, path = "~/fec16pkg/data-raw/individuals.csv")
usethis::use_data(individuals, overwrite = TRUE)

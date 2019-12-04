library(dplyr)
library(readr)

#reading data
cand_master <-read.delim("~/Desktop/sds 390/Fec/data-raw/candidate_master.csv", header = FALSE, sep = "|", quote="")
write.csv(cand_master, file = "candidate_master.csv")

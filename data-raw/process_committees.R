committees<-read.delim("~/Desktop/cm.txt", header = FALSE, sep = "|", quote="")

write_csv(committees, file = "committee.csv")

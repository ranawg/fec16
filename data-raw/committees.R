committees<-read.delim("~/Desktop/cm.txt", header = FALSE, sep = "|", quote="")

write.csv(committees, file = "committee.csv")

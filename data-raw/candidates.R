
#reading files
candidates <- read.delim("~/Downloads/cn.txt", header = FALSE, sep = "|", quote="")
write.csv(candidates, file = "candidates.csv")

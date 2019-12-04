#ccl <- read.delim("ccl.txt", header = FALSE, sep = "|", quote="")

linkage <- readr::read_csv("data-raw/linkage.csv", row_names = FALSE)
View(linkage)

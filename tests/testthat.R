library(testthat)
library(fec16)

test_check("fec16")


#Checking dimensions of data frames

#candidates
#testthat ncol(candidates) = 15

#committees
#testthat nrow(committees) = 5793

#results
#testthat n_unique_candidates = 92

#committee_contributions
#testthat min_num_contributions = 1, max_num_contributions = 63047

#individuals
#testthat nrow(individuals) = 5000


#Tests from Vignettes



#Join tests
#candidates and committees
#individuals and committees
#results and committee contributions

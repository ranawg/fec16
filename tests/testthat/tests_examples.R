
library(testthat)

context("Dimensions of data")

#candidates

 testthat::test_that("number of columns in candidates df is correct", {
   expect_equal(ncol(candidates) , 15)
 })


#committees
#
 test_that("number of rows in committees df is correct", {
   expect_equal(nrow(committees) , 5793)
 })

# #results
 test_that("Number of unique candidate IDs is 92", {
   results2 <- results %>%
     dplyr::group_by(cand_id)%>%
     dplyr::summarise( n = dplyr::n())
   expect_equal(nrow(results2), 92)
 })
#
#
# #committee_contributions
 test_that("Minumum number of contributions from a committee is 1", {
   expect_equal(min(committee_contributions$number_of_contributions) , 1)
 })
#
 test_that("Maximum number of contributions from a committee is 63047", {
   expect_equal(max(committee_contributions$number_of_contributions) , 63047)
 })
#
# #individuals

test_that("number of rows in individuals df is correct", {
   expect_equal(nrow(individuals) , 5000)
 })
#
#
# #Tests from Vignettes
#
#
#
# #Join tests
# #candidates and committees
# #individuals and committees
# #results and committee contributions

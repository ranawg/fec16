#' Committee contributions metadata
#'
#' @description Provides data pertaining to each candidate and their contibutions from committees during the 2016 general election.
#'
#' @format A data frame with 1210 rows and 3 columns with information about candidate committee contibutions.
#' \describe{
#'   \item{cand_id}{Recipient Candidate ID. Candidate receiving money from the filing committee}
#'   \item{number_of_contributions}{Total number of contibutions from committees}
#'   \item{total_contributions}{Sum of all contributions made to committees in support of each candidate; in dollars}
#'   \item{net_contributions}{Sum of contributions made both for candidates as well as against them, to rival committees; in dollars}
#'}
#' @source <https://classic.fec.gov/finance/disclosure/metadata/DataDictionaryContributionstoCandidates.shtml>, downloaded 2019-12-09
"committee_contributions"





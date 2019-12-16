#' Individual Contributions Master metadata
#'
#' @description Basic information for a sample of transactions from individuals to candidates/committees.
#'
#' @format A data frame with 5000 rows and 5 columns, providing information for each transaction:
#' \describe{
#'   \item{committee_id}{A unique code assigned to a committee by the FEC}
#'   \item{state}{Individual's state}
#'   \item{zipcode}{Individuals's zipcode}
#'   \item{transaction_date}{Date of transaction}
#'   \item{transaction_amount}{Amount of transaction, in dollars}
#'}
#' @source <https://www.fec.gov/campaign-finance-data/contributions-individuals-file-description/>, downloaded 2019-12-09

"individuals"

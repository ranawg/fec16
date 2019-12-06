#' Candidate to Committee Linkage metadata
#'
#' @description Provides linkage between the candidate and committee datasets.
#'
#' @format A data frame with 6412 rows and 7 columns, providing information to link the candidate and committee datasets:
#' \describe{
#'   \item{cand_id}{A code assigned to a candidate by the FEC, which remains the same across election cycles if running for the same office.}
#'   \item{cand_election_year}{Candidate's election year.}
#'   \item{fec_election_year}{The active 2-year period.}
#'   \item{committee_id}{A code assigned to a committee by the FEC, which always remains the same.}
#'   \item{committee_type}{The FEC Committee Type Code, listed here: https://classic.fec.gov/finance/disclosure/metadata/CommitteeTypeCodes.shtml }
#'   \item{committee_designation}{The committee's designation: A = Authorized by a candidate, B = Lobbyist/Registrant PAC, D = Leadership PAC, J = Joint fundraiser, P = Principal campaign committee of a candidate, U = Unauthorized}
#'   \item{linkage_id}{The unique link ID}
#'}
#' @source <https://classic.fec.gov/finance/disclosure/ftpdet.shtml#a2015_2016>, downloaded 2019-12-04
"linkage"

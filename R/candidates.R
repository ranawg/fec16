#' Candidates Master metadata
#'
#' @description Basic information for each candidate.
#'
#' @format A data frame with 7,400 rows and 15 columns, providing information for each candidate:
#' \describe{
#'   \item{cand_id}{A code assigned to a candidate by the FEC, which remains the same across election cycles if running for the same office.}
#'   \item{cand_name}{Candidate name.}
#'   \item{cand_pty_aff}{The political party affiliation reported by the candidate.}
#'   \item{cand_election_yr}{Candidate's election year from a Statement of Candidacy or state ballot list}
#'   \item{cand_office_st}{Candidate's state.}
#'   \item{cand_office}{Candidate office with designation: H = House, P = President, S = Senate.}
#'   \item{cand_office_dis}{Candidate's district.}
#'   \item{cand_ici}{Incumbent challenger status with designation: C = Challenger, I = Incumbent, O = Open Seat}
#'   \item{cand_status}{Candidate status with designation:C = Statutory candidate, F = Statutory candidate for future election, N = Not yet a statutory candidate, P = Statutory candidate in prior cycle }
#'   \item{cand_pcc}{ID of the candidate's principal campaign committee assigned by FEC.}
#'   \item{cand_sti}{Mailing address: street}
#'   \item{cand_st2}{Mailing address: street 2}
#'   \item{cand_city}{Mailing address: city}
#'   \item{cand_st}{Mailing address: state}
#'   \item{cand_zip}{Mailing address: ZIP code}
#'}
#' @source <https://www.fec.gov/campaign-finance-data/candidate-master-file-description/>, downloaded 2019-12-04
"candidates"

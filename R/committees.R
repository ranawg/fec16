#' Committees metadata
#'
#' @description Provides data pertaining to each committee registered with the Federal Election Commission.
#'
#' @format A data frame with 17656 rows and 15 columns with information about FEC committees.
#' \describe{
#'   \item{committee_id}{A 9-character alpha-numeric code assigned to a committee by the Federal Election Commission.}
#'   \item{comittee_name}{Name of the committee}
#'   \item{treasurers_name}{The officially registered treasurer for the committee.}
#'   \item{city_or_town}{City or town of office}
#'   \item{state}{State of office}
#'   \item{zip_code}{Zip code of office}
#'   \item{committee_designation}{A = Authorized by a candidate
#'
#' B = Lobbyist/Registrant PAC
#'
#' D = Leadership PAC
#'
#' J = Joint fundraiser
#'
#' P = Principal campaign committee of a candidate
#'
#' U = Unauthorized}
#'   \item{committee_type}{FEC committee type, listed here: https://classic.fec.gov/finance/disclosure/metadata/CommitteeTypeCodes.shtml}
#'   \item{committee_party}{Party affiliation, listed here: https://classic.fec.gov/finance/disclosure/metadata/DataDictionaryPartyCodeDescriptions.shtml}
#'   \item{connected_org_name}{Organization connected to the committee}
#'   \item{cand_id}{A code assigned to a candidate by the FEC, which remains the same across election cycles if running for the same office; Included if committee type has designation H, S, P}
#'}
#' @source <https://classic.fec.gov/finance/disclosure/metadata/DataDictionaryCommitteeMaster.shtml>, downloaded 2019-12-04
"committees"

#' Uganda population_estimates from UBOS
#'
#' These are estimates for 146 sub-national level(districts and cities) of Uganda from UBOS website and No mathematical computational was carried out only cleaned the data and change it to tidy format
#'
#' @format
#' A data frame with 113,952 rows and 5 columns:
#' \describe{
#'   \item{district_city}{District or City in Uganda}
#'   \item{lower_local_government}{Local government}
#'   \item{categroy}{Category of estimate, whether Male, Female or Total of Male and Female}
#'   \item{year}{Year for the estimated population}
#'   \item{population}{Value of population estimate}
#'
#' }
#' @usage  data(population_estimates)
#' @source "https://www.ubos.org/wp-content/uploads/statistics/Revised_Subcounty_population_2015_2030_146_Districts.xlsx"
"population_estimates"

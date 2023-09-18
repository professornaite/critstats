#' Data on US presidential elections by democratic vote since 1932
#' 
#' States are classified by democratic vote, year, and geography
#' 
#' A tibble with 1,097 rows and 4 variables
#' 
#' \describe{
#'  \item{state}{chr State name} 
#'  \item{demVote}{dbl Percent of democratic party vote}
#'  \item{year}{dbl Election year}
#'  \item{south}{lgl T/F indicator of state location in US south}
#'  }
"presidential_elections"

# run devtools::document() in console to make Roxygen comments "concrete"
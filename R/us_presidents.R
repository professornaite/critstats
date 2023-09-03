#' Data on US Presidents through 2023
#' 
#' Data contains president, president political party, start data, end data, and vice president by term
#' 
#' A tibble with 70 rows and 5 variables
#' 
#' \describe{
#'  \item{potus}{chr President}
#'  \item{party}{dbl President political party}
#'  \item{start}{dbl Start data of presidential term}
#'  \item{end}{dbl End date of presidential term}
#'  \item{vpotus}{dbl Vice President}
#'  }
"us_presidents" 

# run devtools::document() in console to make Roxygen comments "concrete"
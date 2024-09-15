#' Sample Census data B19013B_001 black median income 2020
#' 
#' Median income estimate is classified by state and includes margin of error (moe).
#' 
#' A tibble with 52 rows and 5 variables
#' 
#' \describe{
#'  \item{GEOID}{chr State geographic identification number}
#'  \item{NAME}{chr State name}
#'  \item{variable}{chr Variable name}
#'  \item{Population}{dbl Estimate (2020)}
#'  \item{moe}{dbl Margin of error}
#'  }
"blackmedianincome"

# run devtools::document() in console to make Roxygen comments "concrete"
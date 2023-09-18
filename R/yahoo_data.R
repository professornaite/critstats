#' Yahoo! News Race and Justice poll results
#' 
#' Results from a Yahoo! News poll conducted by YouGov on May 29-31, 2020. In total 1060 U.S. adults were asked a series of questions regarding race and justice in the wake of the killing of George Floyd by a police officer. Results in this data set are percentages for the question, "Do you think Blacks and Whites receive equal treatment from the police?" For this particular question there were 1059 respondents. 
#' 
#' A tibble with 1,059 rows and 2 variables
#' 
#' \describe{
#'  \item{race_eth}{chr Race/ethnicity of respondent with four levels: Black, Hispanic, Other, White}
#'  \item{response}{chr Response to the question: "Do you think Black and White people receive equal treatment from the police?", with three levels: Yes, No, Not sure}
#'  }
"yahoo_data"

# run devtools::document() in console to make Roxygen comments "concrete"
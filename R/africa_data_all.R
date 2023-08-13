#' 2020 data on 54 African countries and 4 dependencies/territories
#' 
#' Countries and dependencies are classified by population (pop), yearly change, net change, density, area, migrants, fertility rate, median age (med.age), urban poplation, and world share of population.
#' 
#' @format A tibble with 58 rows and 11 variables
#' \describe{
#'  \item{country}{chr Name of country.}
#'  \item{pop}{dbl Country's population (2020)}
#'  \item{pop.yearly.change}{dbl Country's yearly population change}
#'  \item{pop.net.change}{dbl Country's net population change}
#'  \item{density}{dbl Country's population density (P/Km²)}
#'  \item{area}{dbl Total land area (Km²)}
#'  \item{migrants}{dbl Net migrant population}
#'  \item{fertility.rate}{dbl Fertility rate}
#'  \item{med.age}{dbl Median age of population}
#'  \item{urban.pop}{dbl Percent of population in urban areas}
#'  \item{world.share}{dbl Country's world share of population}
#'  }
#'  
#'  @source \url{https://www.worldometers.info/population/countries-in-africa-by-population/}
"africa_data_2020"

# run devtools::document() in console to make Roxygen comments "concrete"

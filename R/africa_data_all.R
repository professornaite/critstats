#' Combined 2020 and 2023 data on 54 African countries and 4 dependencies/territories
#' 
#' Countries and dependencies are classified by population (pop), yearly change, net change, density, area, migrants, fertility rate, median age (med.age), urban poplation, and world share of population.
#' 
#' @format A tibble with 116 rows and 13 variables
#' \describe{
#'  \item{country}{chr Name of country}
#'  \item{pop}{dbl Country population: Overall total population (both sexes and all ages) in the region as of July 1 of the year indicated, as estimated by the United Nations, Department of Economic and Social Affairs, Population Division. (2020)}
#'  \item{pop.yearly.change}{dbl Yearly percent change: Latest year annual percentage change equivalent assuming homogeneous change in the preceding five year period, calculated through reverse compounding.}
#'  \item{pop.net.change}{dbl Yearly change: Average annual numerical change over the preceding five year period.}
#'  \item{density}{dbl (Population Density) Population per square Kilometer (Km²).}
#'  \item{area}{dbl Total land area (Km²)}
#'  \item{migrants}{dbl Net migrant population: The average annual number of immigrants minus the number of emigrants over the preceding five year period (running from July 1 to June 30 of the initial and final years), or subsequent five year period (for 2016 data). A negative number means that there are more emigrants than immigrants.}
#'  \item{fertility.rate}{dbl Fertility Rate: (Total Fertility Rate, or TFR), it is expressed as children per woman. It is calculated as the average number of children an average woman will have during her reproductive period (15 to 49 years old) based on the current fertility rates of every age group in the countries within Africa, and assuming she is not subject to mortality.}
#'  \item{med.age}{dbl Median age of population: Age that divides the population into two numerically equal groups: half of the people are older than the median age indicated and half are younger. This parameter provides an indication of age distribution.}
#'  \item{urban.pop}{dbl Population living in areas classified as urban according to the criteria used by each country.}
#'  \item{world.share}{dbl Total population as a percentage of total World Population as of July 1 of the year indicated.}
#'  \item{pop_in_mill}{dbl Country population in millions.}
#'  \item{year}{dbl Year of panel data.}
#'  }
#'  
#'  @source The most up-to-date data for these variables can be found at \url{https://www.worldometers.info/population/countries-in-africa-by-population/}
"africa_data_all"
#'  @references None
#'  @example summarize(critstats::africa_data_all)

# run devtools::document() in console to make Roxygen comments "concrete"



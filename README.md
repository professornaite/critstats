# critstats

This package contains a variety of data sets provied by different organizations and sources. These data accompany Introduction to Critical Statistics (ICS) by Nathan Alexander (Howard University).

## Installation

```R
install.packages("devtools")
install.packages("remotes")
library(remotes)
remotes::install_github("professornaite/critstats", force=TRUE)
```

### Installation issues

```R
library(utils)
remove.packages("critstats")
```

## Datasets

*  `africa_data_2020`: 2020 data on 54 African countries and 4 dependencies/territories

* `africa_data_2023`:	2023 data on 54 African countries and 4 dependencies/territories

* `africa_data_all`: Combined 2020 and 2023 data on 54 African countries and 4 dependencies/territories

* `africa_subregion`:	Data on 54 African countries and their subregions

* `blackmedianincome`: Sample Census data B19013B_001 black median income 2020

* `continents_pop_2010`: 2010 continental populations

* `continents_pop_2021`: 2021 continental populations

* `continents_pop_2023`: 2023 continental populations

* `presidential_elections`: Data on US presidential elections by democratic vote since 1932

* `taxpoll`: US Poll on who it is better to raise taxes on

* `true_size`: Data on 18 countries and their land area in relation to the African continent

* `us_presidents`: Data on US Presidents through 2023

* `world_pop`: World Bank global population data by country, 1960-2020

* `yahoo_data`:	Yahoo! News Race and Justice poll results

Sources of the data are included in descriptions, use `??critstats:dataset`

#### View datasets in `critstats`

```R
data(package='critstats')
```


### Functions and vignettes

* This package is still in development. 

Please cite:

Alexander, N. N. (2024). critstats: Data package for Introduction to Critical Statistics. Quantitative Histories Workshop and Center for Applied Data Science and Analytics (CADSA), Howard University, Washington, DC.

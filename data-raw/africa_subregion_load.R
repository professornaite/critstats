# africa_subregion_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

africa_sub_raw <- readr::read_csv("data-raw/africa_pop_country_subregion.csv")
View(africa_sub_raw)

africa_sub <- as_tibble(africa_data_sub_raw) # so the data prints a little nicer
summary(africa_sub) # view raw summary statistics
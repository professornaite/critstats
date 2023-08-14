# africa_subregion_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

africa_sub_raw <- readr::read_csv("data-raw/africa_pop_country_subregion.csv")
df <- as_tibble(africa_sub_raw) # so the data prints a little nicer
summary(df) # view raw summary statistics
df

# remove rows with NA's
df %>% 
  na.omit()





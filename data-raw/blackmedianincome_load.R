# census_blackmedianincome_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

census_blackmedianincome_raw <- readr::read_csv("data-raw/census-blackmedianincome.csv")
df <- as_tibble(census_blackmedianincome_raw) # so the data prints a little nicer
summary(df) # view raw summary statistics
df

# remove first column
df <- df %>% 
  select(-c(1))
df

blackmedianincome <- df

usethis::use_data(blackmedianincome, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("blackmedianincome") to open new window for documentation




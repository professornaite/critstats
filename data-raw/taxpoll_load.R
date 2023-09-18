# taxpoll_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)
stats::filter() # add; dplyr overwrite of base R functions
stats::lag() # add; dplyr overwrite of base R functions

taxpoll <- readr::read_csv("data-raw/taxes_poll/ppp_201503.csv")
df <- as_tibble(taxpoll) # so the data prints a little nicer
summary(df) # view raw summary statistics
df

df <- select(df, -c(1))
df

taxpoll <- df

usethis::use_data(taxpoll, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("taxpoll") to open new window for documentation
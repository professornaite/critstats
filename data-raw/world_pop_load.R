# world_pop_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)
stats::filter() # add; dplyr overwrite of base R functions
stats::lag() # add; dplyr overwrite of base R functions

world_pop <- readr::read_csv("data-raw/world_pop/world_pop.csv")
df <- as_tibble(world_pop) # so the data prints a little nicer
summary(df) # view raw summary statistics
df
head(df,n=10)
tail(df, n=10)

# remove columns
df <- select(df, -c(`...1`))
view(df)

world_pop <- df

usethis::use_data(world_pop, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("world_pop") to open new window for documentation
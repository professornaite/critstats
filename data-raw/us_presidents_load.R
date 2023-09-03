# us_presidents_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)
stats::filter() # add; dplyr overwrite of base R functions
stats::lag() # add; dplyr overwrite of base R functions

us_presidents <- readr::read_csv("data-raw/us_presidents/president.csv")
df <- as_tibble(us_presidents) # so the data prints a little nicer
summary(df) # view raw summary statistics
df
tail(df, n=10)

# remove columns
df <- select(df, -c(`...1`))
view(df)

# update data
df <- df %>% 
  rbind(c("Donald Trump", "Republican", 2016, 2020, "Mike Pence")) %>% 
  rbind(c("Joe Biden", "Democrat", 2020, "", "Kamala Harris"))

# change variable type from character to numeric
df <- df %>% 
  mutate_at(c('start', 'end'), as.numeric)

us_presidents <- df

usethis::use_data(us_presidents, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("us_presidents") to open new window for documentation
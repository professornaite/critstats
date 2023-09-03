# true_size_of_africa_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)
stats::filter() # add; dplyr overwrite of base R functions
stats::lag() # add; dplyr overwrite of base R functions

true_size <- readr::read_csv("data-raw/true_size_of_africa.csv")
df <- as_tibble(true_size) # so the data prints a little nicer
summary(df) # view raw summary statistics
df

# remove percent symbols
df$percent.africa <- gsub("%$","", df$`% of Africa`)

# remove text from variables
df$area.sq.km <- gsub(" million$","", df$`Land Area (sq. km)`)
df$area.sq.mi <- gsub(" million$", "", df$`Land Area (sq. mi)`)
df

# change variable type from character to numeric
df <- df %>% 
  mutate_at(c('percent.africa', 'area.sq.km', 'area.sq.mi'), as.numeric)

# remove columns
df <- select(df, -c(`Land Area (sq. km)`, `Land Area (sq. mi)`, `% of Africa`))
df

true_size <- df

usethis::use_data(true_size, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("true_size") to open new window for documentation
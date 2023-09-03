# continents_pop_2021_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

continents_pop_2021_raw <- readr::read_csv("data-raw/continents_pop_2021.csv")
View(continents_pop_2021_raw)

df <- as_tibble(continents_pop_2021_raw) # so the data prints a little nicer
summary(df) # view raw summary statistics

df
head(df)
tail(df)

df<- rename(df,
            "pop" = "population",
            "percent.world.pop" = "percent world pop",
            "growth.rate" = "per annum growth rate"
)

# remove commas
df$percent.world.pop <- gsub("%","", df$percent.world.pop)
df$growth.rate <- gsub("%", "", df$percent.world.pop)

df

# change pop variable from character to numeric
df <- df %>% 
  mutate_at(c('pop', 'percent.world.pop', 'growth.rate'), as.numeric)
df

continents_pop_2021 <- df

usethis::use_data(continents_pop_2021, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("continents_pop_2021") to open new window for documentation
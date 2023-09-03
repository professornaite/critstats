# continents_pop_2010_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

continents_pop_2010_raw <- readr::read_csv("data-raw/continents_pop_2010.csv")
View(continents_pop_2010_raw)

continents_pop_2010 <- as_tibble(continents_pop_2010_raw) # so the data prints a little nicer
summary(continents_pop_2010) # view raw summary statistics

continents_pop_2010
head(continents_pop_2010)
tail(continents_pop_2010)

continents_pop_2010 <- rename(continents_pop_2010,
                      "continent" = "Continent",
                      "area.sq.km" = "Area (km²)",
                      "area.sq.mi" = "Area (mi²)",
                      "pop" = "2010 Population",
                      "pop.density" = "Population Density (per km²)",
)

# making sense of the data set
sapply(continents_pop_2010, class) # one option is to display class of each variable
str(continents_pop_2010) # a better option is to view structure of the data frame

# remove commas
continents_pop_2010$pop <- gsub(",","", continents_pop_2010$pop)

df <- continents_pop_2010

# change pop variable from character to numeric
df <- df %>% 
  mutate_at(c('pop'), as.numeric)
df

continents_pop_2010 <- df

usethis::use_data(continents_pop_2010, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("continents_pop_2010") to open new window for documentation


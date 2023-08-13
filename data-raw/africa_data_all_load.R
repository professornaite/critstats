# africa_data_all_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

# load 2020 and 2023 data
africa_data_2020 <- readr::read_csv("data-raw/africa_data_all.csv")
africa_data_2023 <- readr::read_csv("data-raw/africa_data_2023.csv")

africa_data_2020
africa_data_2023


africa.2020 <- rename(africa_data_2020,
       "country" = "Country (or dependency)",
       "pop" = "Population (2020)",
       "pop.yearly.change" = "Yearly change",
       "pop.net.change" = "Net change",
       "density" = "Density (P/Km²)",
       "area" = "Land Area (Km²)",
       "migrants" = "Migrants (net)",
       "fertility.rate" = "Fert. Rate",
       "med.age" = "Med. Age",
       "urban.pop" = "UrbanPop %",
       "world.share" = "World Share"
)

africa.2023 <- rename(africa_data_2023,
                      "country" = "Country (or dependency)",
                      "pop" = "Population\n (2023)",
                      "pop.yearly.change" = "Yearly\n Change",
                      "pop.net.change" = "Net\n Change",
                      "density" = "Density\n (P/Km²)",
                      "area" = "Land Area\n (Km²)",
                      "migrants" = "Migrants\n (net)",
                      "fertility.rate" = "Fert.\n Rate",
                      "med.age" = "Med.\n Age",
                      "urban.pop" = "Urban\n Pop %",
                      "world.share" = "World\n Share"
)

# remove percent symbols
# 2020
africa.2020$pop.yearly.change <- gsub("%$","", africa.2020$pop.yearly.change)
africa.2020$fertility.rate <- gsub("%$","", africa.2020$fertility.rate)
africa.2020$med.age <- gsub("%$","", africa.2020$med.age)
africa.2020$urban.pop <- gsub("%$","", africa.2020$urban.pop)
africa.2020$world.share <- gsub("%$","", africa.2020$world.share)
# 2023
africa.2023$pop.yearly.change <- gsub("%$","", africa.2023$pop.yearly.change)
africa.2023$fertility.rate <- gsub("%$","", africa.2023$fertility.rate)
africa.2023$med.age <- gsub("%$","", africa.2023$med.age)
africa.2023$urban.pop <- gsub("%$","", africa.2023$urban.pop)
africa.2023$world.share <- gsub("%$","", africa.2023$world.share)

# change variables from character to numeric
sapply(africa.2020, class) # display class of each variable
africa.2020 <- africa.2020 %>% 
  mutate_at(c('pop.yearly.change', 'fertility.rate', 'med.age', 'urban.pop', 'world.share'), as.numeric)
africa.2020
str(africa.2020) # view structure of the data frame

sapply(africa.2023, class) # display class of each variable
africa.2023 <- africa.2023 %>% 
  mutate_at(c('pop.yearly.change', 'fertility.rate', 'med.age', 'urban.pop', 'world.share'), as.numeric) %>% 
  select(-1) # remove column of former country IDs out front
africa.2023
str(africa.2023) # view structure of the data frame

# create pop_in_mill variable
africa.2020 <- africa.2020 %>% 
  mutate(pop_in_mill = pop/1e06)
africa.2023 <- africa.2023 %>% 
  mutate(pop_in_mill = pop/1e06)
africa.2020
africa.2023

# add a year variable to each data set
africa.2020$year <- 2020
africa.2020

africa.2023$year <- 2023
africa.2023

# combine data sets
joint <- bind_rows(africa.2020, africa.2023)

africa_data_all <- joint

usethis::use_data(africa_data_all, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("africa_data_all") to open new window for documentation

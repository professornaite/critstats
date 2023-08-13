# africa_data_2023_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

africa_data_2023 <- readr::read_csv("data-raw/africa_data_2023.csv")
View(africa_data_2023)

africa_data_2023 <- as_tibble(africa_data_2023) # so the data prints a little nicer
africa_data_2023
summary(africa_data_2023) # view raw summary statistics

head(africa_data_2023, n=15)
tail(africa_data_2023, n=15)

africa_2023 <- rename(africa_data_2023,
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

# making sense of the data set
sapply(africa_2023, class) # one option is to display class of each variable
str(africa_2023) # a better option is to view structure of the data frame

# remove percent symbols
africa_2023$pop.yearly.change <- gsub("%$","", africa_2023$pop.yearly.change)
africa_2023$fertility.rate <- gsub("%$","", africa_2023$fertility.rate)
africa_2023$med.age <- gsub("%$","", africa_2023$med.age)
africa_2023$urban.pop <- gsub("%$","", africa_2023$urban.pop)
africa_2023$world.share <- gsub("%$","", africa_2023$world.share)

# change variables from character to numeric
africa_2023 <- africa_2023 %>% 
  mutate_at(c('pop.yearly.change', 'fertility.rate', 'med.age', 'urban.pop', 'world.share'), as.numeric) %>% 
  select(-1)
africa_2023

africa_data_2023 <- africa_2023 

usethis::use_data(africa_data_2023, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("africa_data_2023") to open new window for documentation

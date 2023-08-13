# africa_data_2020_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

africa_data_2020_raw <- readr::read_csv("data-raw/africa_data_all.csv")
View(africa_data_2020_raw)

africa_2020 <- as_tibble(africa_data_2020_raw) # so the data prints a little nicer
summary(africa_2020) # view raw summary statistics

africa_2020
head(africa_2020, n=15)
tail(africa_2020, n=15)

africa_2020 <- rename(africa_2020,
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

# making sense of the data set
sapply(africa_2020, class) # one option is to display class of each variable
str(africa_2020) # a better option is to view structure of the data frame

# remove percent symbols
africa_2020$pop.yearly.change <- gsub("%$","", africa_2020$pop.yearly.change)
africa_2020$fertility.rate <- gsub("%$","", africa_2020$fertility.rate)
africa_2020$med.age <- gsub("%$","", africa_2020$med.age)
africa_2020$urban.pop <- gsub("%$","", africa_2020$urban.pop)
africa_2020$world.share <- gsub("%$","", africa_2020$world.share)

# change variables from character to numeric
africa_2020 <- africa_2020 %>% 
  mutate_at(c('pop.yearly.change', 'fertility.rate', 'med.age', 'urban.pop', 'world.share'), as.numeric)
africa_2020

africa_data_2020 <- africa_2020 

usethis::use_data(africa_data_2020, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("africa_data_2020") to open new window for documentation


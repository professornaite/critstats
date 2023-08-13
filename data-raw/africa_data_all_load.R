# africa_data_all_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

africa_data_all_raw <- readr::read_csv("data-raw/africa_data_all.csv")
View(africa_data_all_raw)

africa <- as_tibble(africa_data_all_raw) # so the data prints a little nicer
summary(africa) # view raw summary statistics

africa
head(africa, n=15)
tail(africa, n=15)

africa <- rename(africa,
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
sapply(africa, class) # one option is to display class of each variable
str(africa) # a better option is to view structure of the data frame

# remove percent symbols
africa$pop.yearly.change <- gsub("%$","", africa$pop.yearly.change)
africa$fertility.rate <- gsub("%$","", africa$fertility.rate)
africa$med.age <- gsub("%$","", africa$med.age)
africa$urban.pop <- gsub("%$","", africa$urban.pop)
africa$world.share <- gsub("%$","", africa$world.share)

# change variables from character to numeric
africa <- africa %>% 
  mutate_at(c('pop.yearly.change', 'fertility.rate', 'med.age', 'urban.pop', 'world.share'), as.numeric)
africa

africa_data_2020 <- africa 

usethis::use_data(africa_data_2020, overwrite = TRUE)

# create a documentation of our data
usethis::use_r("africa_data_all")

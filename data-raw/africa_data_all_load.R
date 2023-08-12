# africa_data_all_load.R

install.packages("tidyverse")
library(tidyverse)

africa_data_all_raw <- readr::read_csv("data-raw/africa_data_all.csv")
View(africa_data_all_raw)

africa <- as_tibble(africa_data_all_raw) # so the data prints a little nicer
summary(africa) # view raw summary statistics

# examine data
africa
head(africa)
tail(africa)

# rename variables
rename(africa, 
       "country" = "Country (or dependency)",
       "pop" = "Population (2020)",
       "yearly.change" = "Yearly change",
       "net.change" = "Net change",
       "density" = "Density (P/Km²)",
       "area" = "Land Area (Km²)",
       "migrants" = "Migrants (net)",
       "fertility.rate" = "Fert. Rate",
       "med.age" = "Med. Age",
       "urban.pop" = "UrbanPop %",
       "world.share" = "World Share"
)

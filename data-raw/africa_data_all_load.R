# africa_data_all_load.R

install.packages("tidyverse")
library(tidyverse)

africa_data_all_raw <- readr::read_csv("data-raw/africa_data_all.csv")
View(africa_data_all_raw)



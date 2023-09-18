# presidential_elections_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

df<-readr::read_csv("data-raw/elections_presidents_confederacy/presidentialElections.csv")
View(df)

df <- select(df, -c(1))

# view the top and bottom of the data
head(df, n=10)
tail(df, n=10) 

presidential_elections <- df # add a more appropriate title to the data

usethis::use_data(presidential_elections, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("presidential_elections") to open new window for documentation




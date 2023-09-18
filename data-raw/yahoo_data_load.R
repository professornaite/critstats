# yahoo_data_load.R
 
install.packages("tidyverse")
library(tidyverse)
library(dplyr)

yahoo_data_raw <- readr::read_csv("data-raw/yahoo_news_race_justice_poll/race_justice.csv")
View(yahoo_data_raw)

# view the top and bottom of the data
head(yahoo_data_raw, n=10)
tail(yahoo_data_raw, n=10) # there are a total of 1059 observations in the data set

df <- as_tibble(yahoo_data_raw)
summary(df)

# remove variable
df <- select(df, -c(1))
df
# transform data
sapply(df, class) # view the class of each variable
str(df) # show the structure of the data frame

# remove missing values from the data set; note: there are no missing values
df <- df %>% 
  na.omit()

View(df)

yahoo_data <- df

usethis::use_data(yahoo_data, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("yahoo_data") to open new window for documentation



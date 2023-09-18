# yahoo_data_load.R
 
install.packages("tidyverse")
library(tidyverse)
library(dplyr)

yahoo_data_raw <- readr::read_csv("data-raw/yahoo_news_race_justice_poll/race_justice.csv")
View(yahoo_data_raw)

# view the top and bottom of the data
head(yahoo_data_raw, n=10)
tail(yahoo_data_raw, n=10) # there are a total of 1059 observations in the data set

# generate code to view data set outputs by response variables?
# what are the three categories and how can we create a simple graph of those?
# how can we associate those categories to the race of the respondents?
# generate simple visuals
  # begin with base r code for factors (bar charts)
  # continue with intermediate code for factors
  # end with GGPLOT construction of the variables that you will need to use
# look at the conditional probabilities of each response by race (see the codebook)

df <- as_tibble(yahoo_data_raw)
summary(df)

df <- rename(df,
             "...1" = "respondent.id",
             "race_eth" = "race",
             "response" = "equal_treatment"
             )


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



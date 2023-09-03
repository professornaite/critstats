# continents_pop_2023_load.R

install.packages("tidyverse")
library(tidyverse)
library(dplyr)

continents_pop_2023_raw <- readr::read_csv("data-raw/continents_pop_2023.csv")
View(continents_pop_2023_raw)

df <- as_tibble(continents_pop_2023_raw) # so the data prints a little nicer
summary(df) # view raw summary statistics

# remove columns
df <- select(df, -c(`...1`))

df<- rename(df,
            "pop" = "population",
            "area.sq.km" = "area-km2",
            "pop.density.km2" = "density-pkm2",
            "world.share" = "world-pop-share"
)

# remove percent symbol
df$world.share <- gsub("%","", df$world.share)

# change pop variable from character to numeric
df <- df %>% 
  mutate_at(c('world.share'), as.numeric)

df
head(df)
tail(df)

continents_pop_2023 <- df

usethis::use_data(continents_pop_2023, overwrite = TRUE)

# create a documentation of our data
# uncomment and use usethis::use_r("continents_pop_2023") to open new window for documentation
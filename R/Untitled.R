
# additional code examples (for africa_data_all_load)
# now that we have numeric variables, we can do some early graphics


#install.packages(c("usethis", "devtools", "roxygen2"))
library(devtools)
library(roxygen2)
library(devtools)

install.packages("here")
here::here()

create_package(getwd())

library(dplyr)
library(scales)
library(ggplot2)

#### EXERCISE 1

## an okay plot of the relationship between two variables
ggplot(data = joint) +
  geom_point(mapping = aes(x = urban.pop, y = migrants, size = pop_in_mill)) +
  geom_smooth(mapping = aes(x = urban.pop, y = migrants))

## a better plot of the same relationship between two variables
ggplot(data = africa) +
  geom_point(mapping = aes(x = urban.pop, y = migrants, size = med.age)) +
  geom_smooth(mapping = aes(x = urban.pop, y = migrants)) +
  expand_limits(x = c(0,NA), y = c(0, NA)) +
  scale_y_continuous(labels = unit_format(unit = "", scale = 1e-0))


df <- africa %>% 
  filter(migrants > 1e+05)
df
df <- africa %>% 
  filter(migrants < -1e+05)
df
df <- africa %>% 
  filter(migrants == 0)
df

younger <- africa %>% 
  filter(med.age < 19)
younger

older <- africa %>% 
  filter(med.age > 29)
older

df <- africa %>% 
  sort(world.share)


ggplot(data = africa) +
  geom_point(mapping = aes(x = pop, y = migrants, size = area), color = "blue")

ggplot(data = africa) +
  geom_point(mapping = aes(x = pop, y = migrants), color = "blue") +
  facet_wrap(~ med.age, nrow = 2)



ggplot(data = africa) +
  geom_point(mapping = aes(x = pop, y = migrants, size = area)) +
  geom_smooth(mapping = aes(x = pop, y = migrants))




# plot of population and migrants with added shape feature
# shows why we need to be mindful of our coding choices
ggplot(data = africa) +
  geom_point(mapping = aes(x = pop, y = migrants, shape = med.age))
## explain the issue.



library(scales)

ggplot(economics, aes(x = date, y = psavert)) +
  geom_line(color = "indianred3", 
            size=1 ) +
  geom_smooth() +
  scale_x_date(date_breaks = '5 years', 
               labels = date_format("%b-%y")) +
  labs(title = "Personal Savings Rate",
       subtitle = "1967 to 2015",
       x = "",
       y = "Personal Savings Rate") +
  theme_minimal()


sub <- critstats::africa_subregion
sub

sub <- sub %>% 
  rename(country = "Country",
         pop = "Population",
         region = "Subregion") %>% 
  transform(pop_in_mill = pop/1e6)

sub %>% 
  group_by(Region = sub$region) %>% 
  summarize(Avg_Population = mean(pop_in_mill))

sub %>% 
  group_by(Region = sub$region) %>% 
  summarize(Avg_Population = mean(pop))






# finding the mean of a variable

# using pipe operator
df %>% 
  summarize(mean = mean(Population), n = n())

# a more direct way
mean(df$Population)




gapminder

library(dplyr)
df <- gapminder

# FILTER verb , using  this -> pipe operator (%>%) before the verb

df %>%
  filter(year == 1957 , country == "United States")

# Arrange verb ("usefull to knoww extrem values in the dataset")

# ascending w.r.t gdp per capita

df %>%
  arrange(gdpPercap)

#descending with filter 

df %>%
  filter(year == 2007) %>%
  arrange(desc(gdpPercap))

# using mutate to change a variable

df %>%
  mutate(pop = pop/1000000) 

df %>%
  mutate(gdp = gdpPercap*pop) 

# example "country with highest total gdp in year 2007" 

df %>%
  filter(year == 2007) %>%
  mutate(gdp = gdpPercap * pop) %>% # this create a column
  arrange(desc(gdp))


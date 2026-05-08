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
#descending
df %>%
  filter(year == 2007) %>%
  arrange(desc(gdpPercap))

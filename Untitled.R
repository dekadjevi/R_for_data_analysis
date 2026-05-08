gapminder

library(dplyr)
df <- gapminder

df %>%
  filter(year == 1957 , country == "United States")

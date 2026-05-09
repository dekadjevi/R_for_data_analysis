install.packages("tidyverse")
library(gapminder)
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
  mutate(gdp = gdpPercap*pop)# this creates a new column gdp 

# example "country with highest total gdp in year 2007" 

df %>%
  filter(year == 2007) %>%
  mutate(gdp = gdpPercap * pop) %>% # this create a column
  arrange(desc(gdp))

# summarize verb

df%>%
  filter(year == 2007) %>%
  summarize(meanlifeExp = mean(lifeExp), totpop = sum(pop)) # average life expe in 2007

# Filter for 1957 then summarize to find median life expectancy and the maximum GDP per capita

df %>%
  filter(year == 1957) %>%
  summarize(medianlifeExp = median(lifeExp),max(gdpPercap))

# Grouping verb 

df %>%
  group_by(year) %>%
  summarize(meanlifeExp = mean(lifeExp))
#average lifeExp and total population in 2007 witin each continent
df %>%
  filter(year == 2007) %>% 
  group_by(continent) %>%
  summarize(avgLifeExp = mean(lifeExp), totpop = sum(pop))
  
df %>%
  group_by(year, continent) %>%
  summarize(avgLifeExp = mean(lifeExp), totpop = sum(pop))


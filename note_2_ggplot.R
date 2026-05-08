
gapminder_2007 <- gapminder %>%
  filter(year == 2007)

gapminder_2007

# creating a scatter plot with ggplot2

library(ggplot2)

# aesthetic (aes) is a visual dimension of the graph that can be use communicating information
# specify the type of graphic 
# geom (means you are adding a geometric object to the graph)
# point indicate a scatter plot each observation correspond to a point

ggplot(gapminder_2007 ,aes(x=gdpPercap ,y= lifeExp)) +
  geom_point()

# Log scale ()

ggplot(gapminder_2007 ,aes(x=gdpPercap ,y= lifeExp)) +
  geom_point() +
  scale_x_log10() # just adding this line

# add color and size 

ggplot(gapminder_2007 ,aes(x=gdpPercap ,y= lifeExp, color = continent, size= pop)) +
  geom_point() +
  scale_x_log10()

# divide plot in sub plots " Faceting " here based on continent in gapminder dataset

ggplot(gapminder_2007 ,aes(x=gdpPercap ,y= lifeExp)) +
  geom_point() +
  scale_x_log10() + 
  facet_wrap( ~ continent)
  

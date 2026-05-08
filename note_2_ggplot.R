
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


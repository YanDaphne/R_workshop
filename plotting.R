library(ggplot2)

#get data
gapminder <- read.csv("Data/gapminder_data.csv")

#ggplot to create plot
#three things of ggplot: data, aesthetics(x and y),layers
ggplot(data = gapminder, 
       mapping = aes(x = gdpPercap, y = lifeExp)) +
    geom_point()

ggplot(data = gapminder, 
       mapping = aes(x = year, y = lifeExp, color = continent)) +
  geom_point()

ggplot(data = gapminder, 
       mapping = aes(x = year, 
                     y = lifeExp, 
                     group = country)) +
  geom_line(mapping = aes(color = continent))+
  geom_point()

#color of continent; log is transformation of our data; alpha is for transparency
ggplot(data = gapminder,
       mapping = aes(x= gdpPercap,
                     color = continent,
                     y = lifeExp)) +
  geom_point(alpha = 0.5) +
  scale_x_log10() +
  geom_smooth(method = "lm")


#modify the points with different shape and color with new trend lines
my_plot <- ggplot(data = gapminder,
       mapping = aes(x= gdpPercap,y = lifeExp)) +
  geom_point(alpha = 0.5, 
             shape = "triangle") +
  scale_x_log10() +
  geom_smooth(method = "lm")
#save output of ggplot

ggsave("result/my_plot.png", plot = my_plot,
       width = 12,
       height = 10,
       units = "cm",
       dpi = 300)


# day2 plot
# make a subset
americas <- gapminder[gapminder$continent == "Americas",]
panelplot <- ggplot(americas, mapping = aes(
  x = year, 
  y = lifeExp,
  color = continent)) +
  geom_line() +
  facet_wrap( ~ country) +
  theme(axis.text.x = element_text(
    angle = 45, size = 7)) + 
  labs(title = "Life Expectancy", 
       x = "year", 
       y = "Life Expectancy", 
       color = "Contient")
ggsave("result/panelplot.pdf", plot = panelplot)

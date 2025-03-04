gapminder <- read.csv("data/gapminder_data.csv")
calcGDP <- function(gapminder_data){
  gdp <- gapminder$pop * gapminder$gdpPercap
  return(gdp)
}
calcGDP(8)

#check head
head(gdp)

#use function
calcGDP(gapminder[gapminder$country == "Ghana",])

calcGDP <- function(gapminder_data, Country){
  gdp <- gapminder$pop * gapminder$gdpPercap
  return(gdp)
}

#
calcGDP <- function(gapminder_data, country = NULL) {
  if ( !is.null(country) ){
    gapminder_data <- gapminder_data[gapminder_data$country == country, ]
  }
  gdp <- gapminder_data$pop * gapminder_data$gdpPercap
  return(gdp)
}
#how many is in that
length(calcGDP(gapminder, "Ghana"))


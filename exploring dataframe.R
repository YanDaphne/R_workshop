gapminder <- read.csv("Data/gapminder_data.csv")

#see the type of all the variables
str(gapminder)
#produce a summary on numbers
summary(gapminder)

#number of rows
nrow(gapminder)

#number of column
ncol(gapminder)

#number of rows and column
dim(gapminder)

#names of column
colnames(gapminder)

#see table
head(gapminder)
tail(gapminder)


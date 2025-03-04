#calculating
3 * (100 + 1)
sin(pi * 30)

getwd() 

#comparing entities
1 + 1 == 3 
1 != 2
3 < 9

#apply a value
x <- 1/40
x == 0.025
x
log(x)
#override variables
x <- x + 1
min_height <- 10
max.height <- 5

# a vector
1:5
#vectoriazation
2 ^ (1:5)
#apply the vector on x
x <- 1:5
2^5
#c is a function: combine
y <- c(1, 3, 5) 
2 ^ y

#list your variables: R care more about variables
#you need peren everythime you have a fuction
ls()

#remove variables
rm(x)
ls()
#use list function in rm=remove
rm(list = ls())
#ask R about this question
?rm

#function installation
install.packages("ggplot2")

#pull functions to use them
library(ggplot2)
install.packages("dplyr")
library(dplyr)

#practice
mass <- 47.5
age <- 122
mass <- mass * 2.3
age <- age - 20
#ask whether mass is greater than age
mass > age



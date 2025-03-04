#use a function to calculate
fahr_to_kelvin <- function(temperature_f){
  kelvin <- (temperature_f - 32) *(5/9) + 273.15
  return (kelvin)
}
fahr_to_kelvin(10)

kelvin_to_celsius <- function(temperature_c){
  celsius <- (temperature_c - 273.15)
  return(celsius)
}
kelvin_to_celsius(0)
#function can apply vector in it

#refer to the name of anotehr codebook
#source ('converters.R')
#.Rproj.user,.Rhistory,.RData,.Ruserdata




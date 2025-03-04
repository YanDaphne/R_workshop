#Data.frame is a spreadsheet: three observation with three variables
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_catnip = c(1, 0, 1))

#these are vectors when we extract from dataframe
cats$weight
cats$coat
cats$weight + 2

# error
cats$weight + cats$coat

#five data types: double, integer, complex, logical, characters

typeof(cats$weight)
#double: double-precision floating-point number) is a numeric data type that represents real numbers (decimal numbers). It is the default type for numbers with decimal points.

typeof(3.14)#double

typeof(1L)#Integer (denoted with L)
#integer:numeric data type that represents whole numbers (without decimal points)

typeof(1+1i) #complex

typeof(TRUE)#logical: only two values; binary

typeof("3.14")#character

typeof(cats$coat)
typeof(cats$likes_catnip) #R see numbers as double

#convert types of values to other types
as.logical(cats$likes_catnip)
cats$likes_catnip <- as.logical(cats$likes_catnip)

cats
c(3.14, TRUE, "banana")
list(3.14, TRUE, "banana")

#not working
cats$coat + 2

#list
typeof(cats)

#find values
cats[1,2]

#find first row
cats[1,]#indexing rows: observations

#find first column
cats[,1]

#a list of one column:
cats[1]
cats["coat"]
typeof(cats["coat"])

cats[2] + 2

#take the first column out as a vector: index columns
cats[[1]]
cats$coat #use this to index columns
typeof(cats[[1]])

list (cats[1,], cats[3,])
c(cats[1,], cats[3,])

#combine the first and third row
cats[c(1,3),]
cats[-2,] #delete second row, - function is deletion

#I want a subset with weight less than 4
cats$weight < 4
cats[cats$weight<4, ]


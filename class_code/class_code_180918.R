data("iris")

colnames(iris)

iris$Sepal.Length

iris["Sepal.Length"]

iris[["Sepal.Length"]]

iris[ , "Sepal.Length"]

sl <- "Sepal.Length"

iris[ , sl]
iris[[sl]]
iris[sl]
iris$sl #won't work

iris$Spec
iris$Sepal #won't work
iris[["Species"]]
iris[["Spec"]] #won't work

library(tibble)
iris2 <- as_tibble(iris)
iris2$Species
iris2$Spec #won't work

str_c("hedge", "hog")
library(stringr)
str_c("hedge", "hog")

class(iris[1, ]) #single row, default preserves, returns data frame
class(iris[ , 1]) # single column, defauult simplifies, returns vector
# you can overrule defaults with drop
class(iris[1, ,drop = T])
class(iris[ , 1, drop = F])

class(iris2[1, ])
class(iris2[, 1])

class(iris2[ , 1, drop = T])

funny_named_tibble <- tibble( `  space :)` = c(1,4, 5))
funny_named_tibble

funny_named_tibble[, "  space :)"]
funny_named_tibble$`  space :)`

new_tribble <- tribble(~x, ~y, ~z,"a", 1, 2,"b", 4, 5)

new_tribble

new_tribble_2 <- tribble(~x, ~y, ~z,"a", 1, 2,"b", 4) #won't work

new_tribble_3 <- tribble(~x, ~y, ~z, ~n, ~m,
                         "a", 1, 2, 3, "dog",
                         "b", 4, 5, 6, "cat")
new_tribble_3

new_tribble_4 <- rbind(new_tribble, 
                       tribble(~x, ~y, ~z, "", NA, 20))

new_tribble_4

iris
iris2

install.packages("nycflights13")

nycflights13::flights

print(nycflights13::flights, n = 5)

print(nycflights13::flights, n = 5, width = Inf)

head(nycflights13::flights, n = 9)

options(tibble.width = Inf)

nycflights13::flights

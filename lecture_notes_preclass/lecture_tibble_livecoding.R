###############
### Slide 3 ###
###############

# load library
library(tibble)

# build a tibble with tibble()

# build a tibble from a data frame with as_tibble()

################
### Slide 4 ####
################


###############
### Slide 5 ###
###############

# We can also convert a tibble back to a (base) data frame with tibble::as_data_frame() or as.data.frame(), this will also keep characters as characters

###############
### Slide 6 ###
###############

# data frame subset as list (e.g., [1:2])

# tibble subset as list (e.g., [1:2])

# data frame subset as matrix (e.g., [1, 3])

# tibble subset as matrix (e.g., [1, 3])

###############
### Slide 7 ###
###############

# coding challenge

# If you didn't already, set up the dataframe: my_data_frame <- data.frame(x = 1:3, y = -4:-6, z = LETTERS[1:3])

# What happens if you call my_data_frame[1]?

# What happens if you call my_data_frame[1, ]?

# What happens if you call my_data_frame["x"]?

# What happens if you call my_data_frame[ , "x"]?

# How would you return the first and third columns of the data frame?

# What type of structure is returned when you index as a list to return one column?

# What type of structure is returned when you index as a matrix to return one column?

###############
### Slide 8 ###
###############

# demo colnames on data frame and tibble

# demo row.names on data frame and tibble

# demo dim on data frame and tibble

# demo length on data frame and tibble

# demo str on data frame and tibble

###############
### Slide 9 ###
###############

# demo $ (alone) for tibble and df

# demo $ with [n:k] for tibble and df

################
### Slide 10 ###
################

# partial column matching iris$Spec

# partial column matching iris$Sepal (make sure they know their are sepal columns)

# make iris a tibble and show both examples again

################
### Slide 11 ###
################

# save "Sepal.Length" as sl and show how it works with $ [] and [[]] for data frames and tibbles


################
### Slide 12 ###
################

# show [[]] with variable, column name, and column position for data frame and tibble

# show [[]] fails with multiple columns for data frame or tibble


################
### Slide 13 ###
################

# show no partial matching with [[]] (compared to $) for data frames and tibbles

################
### Slide 14 ###
################

## Simplifying versus Preserving

# show by default a single row is still a df/tibble in both data frames and tibbles with [,]

# show by default a single column is a vector in data frame, but a tibble with tibble [,]

# show that $ and [[]] always simplify (data frames and tibbles)

# demo drop = F to preserve in data frame class(tester[ , 1, drop = F])

# what happens if you set drop to true on a column?

# drop with tibbles

################
### Slide 15 ###
################

# tibble column names with special characters, show that when $ subsetting need back ticks

# demo don't need back ticks for other subsetting variants

################
### Slide 16 ###
################

# a well formatted tribble
troublesome_tribble <- tribble(~x, ~y, ~z,
                              "a", 2, 3.6,
                              "b", 1, 8.5)

# a tribble on one line still works, but is less readable
troublesome_tribble_2 <- tribble(~x, ~y, ~z, "a", 2, 3.6, "b", 1, 8.5)

# tribbles are particularly useful for adding new observations to a data frame, avoids coercion
troublesome_tribble_3 <- rbind(troublesome_tribble, tribble(~x, ~y, ~z, "c", 3, -4.1))

################
### Slide 17 ###
################

# install a large tibble
install.packages("nycflights13")

# A large tibble
nycflights13::flights

# set number of rows printed with n = number
# set a screen width with width = number... note this does not correspond to number of columns!
print(nycflights13::flights, n = 5, width = 50)

# you can also set width to Inf to display all columns regardless of screen size

print(nycflights13::flights, n = 5, width = Inf)

# head and tail still work on tibbles
head(nycflights13::flights)

# you can also set options for your tibbles that will then be applied whenever you print a tibble during this R session

options(tibble.width = Inf)
nycflights13::flights

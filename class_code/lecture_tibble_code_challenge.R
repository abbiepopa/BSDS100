###############
### Slide 7 ###
###############

# coding challenge

my_data_frame <- data.frame(x = 1:3, y = -4:-6, 
                            z = LETTERS[1:3])
my_data_frame
# What happens if you call my_data_frame[1]?
my_data_frame[1]

# What happens if you call my_data_frame[1, ]?
my_data_frame[1, ]
my_data_frame[, 1]

# What happens if you call my_data_frame["x"]?
my_data_frame["x"]

# What happens if you call my_data_frame[ , "x"]?
my_data_frame[ , "x"]

# How would you return the first and third columns of the data frame?
my_data_frame[c("x", "z")]

# What type of structure is returned when you index as a list to return one column?
my_data_frame["x"]

# What type of structure is returned when you index as a matrix to return one column?
my_data_frame[, "x"]


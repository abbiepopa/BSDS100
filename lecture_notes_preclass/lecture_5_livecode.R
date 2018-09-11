###############
### Slide 5 ###
###############

# lists are useful because they can hold data of different types
my_list <- list(10:12, "abc", c(3.1415, 9), c(T, F, F, F))
my_list
str(my_list)

###############
### Slide 6 ###
###############

# lists can even hold other lists!

my_list_2 <- list(my_list, "hedgehog", 1:3)
my_list_2
str(my_list_2)

# we can test if something is a list with is.list()

is.list(my_list)
is.list("hedgehog")

# and can convert something to a list with as.list

my_vec <- 1:10
is.atomic(my_vec)
is.list(my_vec)

my_list_3 <- as.list(my_vec)
is.atomic(my_list_3)
is.list(my_list_3)

# note, coercing to list won't change the underlying datatypes...

my_vec_2 <- c(1, 3.14, "Abbie", T)
str(as.list(my_vec_2))

# you can convert something to a vector with "unlist," this will induce coercion

str(my_list)

unlist(my_list)
str(unlist(my_list))

# though note unlist will only work on lists, you can't unlist a matrix!

unlist(matrix(1:9, ncol = 3))

# it's still a matrix

###############
### Slide 7 ###
###############

# there are several ways to subset a list

# if you want to get a single item from a list you will usually want to use [[]]

my_list_4 <- list(10:12, letters = "abc", c(3.1415, 9), logicals = c(T, F, F, F))

my_list_4
str(my_list_4)

my_list_4[[2]]

# using single [ ] will return that element as a list

my_list_4[2]

typeof(my_list_4[[2]])
typeof(my_list_4[2])

# if you want to get multiple entries in a list you must use single brackets

my_list[1:2]

my_list[[1:2]]
# what did this get us? (second element of the first item)

# you can also call named elements in the list using the $ operator

my_list_4$letters

# importantly, you can also call an element of an element of a list

my_list_4[[3]][1]

# you can even put n-D objects like matrices and arrays into lists

my_list_5 <- list(matrix(1:9, nrow = 3), c(T, F, T), letters = c("a", "d", "e"))
my_list_5
str(my_list_5)

# then you can call an element of the matrix from the list

my_list_5[[1]][2,]

# you can also index based on a named element
my_list_5$letters[2]

# you can put lists and lists
my_list_6 <- list(1:3, "Abc", numbers = list("n" = 14, "m" = 13, "l" = 12))
my_list_6
str(my_list_6)

# and subset with dollar signs all the way down!
my_list_6$numbers$n

################
### Slide 11 ###
################

# we've played around with some data frames to learn R markdown, recall how we subsetted then

str(ToothGrowth)
head(ToothGrowth)

# data frames are usually stored in this manner, 
# rows are observations or samples (in this case guinea pigs)
# columns are usually different measurements/features/variables
# this is the recommended way of storying data because it makes machine learning and regession modelling straightforward!

ToothGrowth$dose


################
### Slide 12 ###
################

# we create a data frame using data.frame()

xyz <- data.frame(1:3, c("a", "b", "c"))
xyz
str(xyz)

# note how the column names are really crummy here? in general with a data frame you will name your columns

xyz <- data.frame(numbers = 1:3, letters = c("a", "b", "c"))
xyz
str(xyz)

# that's better!

# though note that the letters in the letters column are something called a "Factor" rather than a string

################
### Slide 14 ###
################

# we can prevent this by using stringsAsFactors = F

xyz <- data.frame(numbers = 1:3, letters = c("a", "b", "c"), stringsAsFactors = F)
xyz
str(xyz)

# brief comment that we will be going into strings and factors in more detail later, but there are reasons you may want one or the other. most people prefer strings

################
### Slide 15 ###
################

# note all dfs are lists (like how all dogs are mammals), so typeof will return list

typeof(xyz)

# but we can use class(_) or (is.data.frame())

class(xyz)
is.data.frame(xyz)

# we can make an object into a dataframe by using as.data.frame()

as.data.frame(my_list)
# not all lists can become dataframes, the elements must be of the same length!

my_list_5 <- list(nums = 1:3, letters = c("a", "b", "c"), logicals = c(T, F, F))
as.data.frame(my_list_5)

################
### Slide 16 ###
################

# cbind and rbind also work with dataframes

# note relying on rownames is dangerous, as these will be ignored during a cbind

df_row_names <- data.frame(a = 1:3, b = 4:6, c = -1:-3)
row.names(df_row_names) <- c("sally", "george", "bob")
df_row_names

df_row_names_2 <- data.frame(d = -4:-6, f = 10:12)
row.names(df_row_names_2) <- c("dyson", "fred", "sheryl")
df_row_names_2

cbind(df_row_names, df_row_names_2)

# we lost the names dyson, fred, sheryl

# in general if you need to preserve information you should keep it as a column, rather than relying on row naemes

# cbind and rbind can also effect the datatypes of your dataframe

df_strings <- data.frame(logicals = c(T, F, T, F), Age = c(21, 17, 32, 81), Strings = c("my", "name", "is", "bob"), stringsAsFactors = F)

Strings_2 <- c("her", "names", "is", "kate")

df_cbind_trial <- cbind(df_strings, Strings_2)
str(Strings_2)
str(df_cbind_trial)

# even though the vectors were strings the new column is treated as a factor

df_cbind_trial_2 <- cbind(df_strings, Strings_2, stringsAsFactors = F)
str(df_cbind_trial_2)

# what if we want to rbind a new observation to our data frame?

new_obs_vec <- c(T, 13, "lucy")
df_rbind_vec <- rbind(df_strings, new_obs_vec)

str(df_rbind_vec)

# What happened? The vector coerced everything to characters, so then the whole data frame became characters!

# instead bind data frames with data frames

df_rbind_df <- rbind(df_strings, data.frame(logicals = T, Age = 13, Strings = "lucy"))

str(df_rbind_df)

# note when rbinding you MUST have matched column names, even attempting to bind a df without column names will not work

rbind(df_strings, data.frame(T, 13, "lucy"))

################
### Slide 19 ###
################

# Challenge for Class

################
### Slide 23 ###
################

a_data_frame <- data.frame(numbers = 1:10, even_numbers = seq(2, 20, 2), letters = LETTERS[1:10])
  
# demo $ gives a column

a_data_frame$even_numbers

# demo [ , ] matrix notation

a_data_frame[5, 3]
a_data_frame[ , "letters"]

# demo [[ ]] gives a column

a_data_frame[["numbers"]]

# demo [ ] gives columns

a_data_frame[1:2]

# demo $ [[]] and [,] for adding columns

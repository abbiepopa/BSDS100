my_factor_vector <- factor(c("cat", "dog", "cat", "dog", "cat", "cat"))

my_factor_vector

class(my_factor_vector)
typeof(my_factor_vector)
levels(my_factor_vector)

my_factor_vector_2 <- factor(c("dog", "cat", "cat"), 
                             levels = c("dog", "cat", "bunny"))

my_factor_vector_2

is.ordered(my_factor_vector)

my_abbr_vec <- factor(c("c", "c", "d", "d"), 
                      levels = c("c", "d"),
                      labels = c("cat", "dog"))

my_abbr_vec

my_factor_vector
sort(my_factor_vector)
is.ordered(my_factor_vector)

ordered_fac_vec <- factor(c("kittens", "cats", "old_cats"), ordered = T)
ordered_fac_vec

ordered_fac_vec <- factor(c("kittens", "cats", "old_cats"), ordered = T, 
                          levels = c("kittens", "cats", "old_cats"))
ordered_fac_vec

ordered_fac_vec[ordered_fac_vec < "old_cats"]

# Coding Challenge

myCyl <- mtcars$cyl
str(myCyl)
myCyl
table(myCyl)

myCyl <- factor(myCyl, levels = c(4, 6, 8), 
                labels = c("small", "medium", "large"),
                ordered = T)

str(myCyl)
myCyl

length(myCyl[myCyl <= "medium"])


my_factor_vector
new_fac_vector <- c(my_factor_vector, "bunny")
new_fac_vector

newer_fac_vec <- factor(c(as.character(my_factor_vector), "bunny"))
newer_fac_vec

new_fac_vector
newest_fac_vec <- factor(c(my_factor_vector, "bunny"), 
                         levels = c(1, 2, "bunny"),
                         labels = c("cat", "dog", "bunny"))
newest_fac_vec

###
demonstration <- "this is a string"

a_string <- 'platypus'
a_string
class(a_string)

b_string <- "platypus"
b_string

x <- "\u00b5"
x

library(stringr)

a_string_vec <- c("a", "really cool string", NA)
a_string_vec

str_length(a_string_vec)
length(a_string_vec)

str_c("x", "y", "z")

str_c(c("x", "y", "z"))

str_c("prefix-", c("x", "y", "z"))
str_c("prefix-", c("x", "y", "z"), "-suffix")

str_c(c("x", "y", "z"), collapse = "")

str_c(c("x", "y", "z"), collapse = "; ")

fruits <- c("Apple", "Banana", "Pear")
fruits

str_sub(fruits, 1, 3)

str_sub(fruits, -3, -1)

str_sub(fruits, 3, 1)

str_sub(fruits, -1, -3)

str_sub("ab", 1, 5)

fruits

str_to_lower(fruits)
str_to_upper(fruits)

str_detect(fruits, "e")
fruits[str_detect(fruits, "e")]
fruits[!str_detect(fruits, "e")]

children <- c("13yo_boy", "8yo_boy", "5yo_girl", "17yo_girl", "12yo_boy")
boys <- children[str_detect(children, "boy")]
boys

children <- c("13yo_boy", "8yo_Boy", "5yo_girl", "17yo_girl", "12yo_boy")
boys <- children[str_detect(children, "boy")]
boys
boys <- children[str_detect(str_to_lower(children), "boy")]
boys

children <- str_to_lower(children)

library(tibble)

kid_activities <- tibble(children = children, 
                         activities = c("soccer", "flute", "hockey", 
                                        "painting", "4h"))
kid_activities

kid_activities$gender <- NA
kid_activities

kid_activities[str_detect(kid_activities$children, "boy"), "gender"] <- "male"
kid_activities[str_detect(kid_activities$children, "girl"), "gender"] <- "female"
kid_activities

### interlude for stringi

str_detect(children, "_")

library(stringi)

stri_locate(children, pattern = "_", fixed = T)

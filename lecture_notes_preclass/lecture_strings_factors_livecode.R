### Factors

###############
### Slide 5 ###
###############

# Demo of making a factor, seeing it's levels, setting it's labels

my_fac_vec <- factor(c("cat", "dog", "cat", "dog", "cat", "cat"))
class(my_fac_vec)
typeof(my_fac_vec)
levels(my_fac_vec)

is.ordered(my_fac_vec)

my_abbr_fac_vec <- factor(c("c", "d", "c", "d", "c", "c"), levels = c("c", "d"), labels = c("cat", "dog"))

my_abbr_fac_vec

###############
### Slide 7 ###
###############

# Show you can sort my_fac_vec using sort() even though is.ordered = F

# show that we cannot use <, min, max on my_fac_vec

# demo of ordered factor

ordered_fac_vec <- factor(c("kittens", "cats", "old_cats"), ordered = T)
ordered_fac_vec
#that's not what we want! kittens should be younger than cats.
ordered_fac_vec <- factor(c("kittens", "cats", "old_cats"), ordered = T, levels = c("kittens", "cats", "old_cats"))
ordered_fac_vec
# much better

# now we can use this to find the kittens and cats

ordered_fac_vec[ordered_fac_vec < "old_cats"]

###############
### Slide 8 ###
###############

# Coding Challenge


###############
### Slide 9 ###
###############

# be careful! what happens when we try to add something new to a factor vector?

new_fac_vec <- c(my_fac_vec, "bunny")
new_fac_vec
class(new_fac_vec)
# it's no longer a factor... AND dog and cat reverted to characters of integers.
# what if we try to force it to be a factor vector?

newer_fac_vec <- factor(c(my_fac_vec, "bunny"))
newer_fac_vec
# it still doesn't remember the dog and cat labels

# two options...

# we can pass the dog-cat vector through a character state

newerer_fac_vec <- factor(c(as.character(my_fac_vec), "bunny"))
newerer_fac_vec

# or we can specify level:label mappings for the new vec

newest_fac_vec <- factor(c(my_fac_vec, "bunny"), levels = c(1, 2, "bunny"), labels = c("cat", "dog", "bunny"))
newest_fac_vec

# if you take option 2 be VERY cautious you don't mess up your labels!

### Strings

################
### Slide 11 ###
################

# demo an unclosed string on the console

# show that RStudio REALLY freaks out if we don't close the string
i_forgot_to_close_the_string <- "Hello I am Abbie"

# a special character with backslash
x <- "\u00b5"
x

################
### Slide 12 ###
################

library(stringr)

str_length(c("a", "really cool string", NA))

# note str_c takes strings, not a vector of strings
str_c("x", "y", "z")

str_c(c("x", "y", "z"))

# you can use this behavior to do the same thing to a bunch of strings 

str_c("prefix-", c("x", "y", "z"), "-suffix")

# if you wish to collapse a vector of strings you would add collapse as an argument

str_c(c("x", "y", "z"), collapse = ", ")

# subsetting strings by index

# positive numbers count from the left

fruits <- c("Apple", "Banana", "Pear")

str_sub(fruits, 1, 3)

# negative numbers count from the right

str_sub(fruits, -3, -1)

# be careful of order!

str_sub(fruits, -1, -3)


# and note it will not fail if string is too short, but will return as much as possible

str_sub("ab", 1, 5)

# demo str_to_lower and str_to_upper

################
### Slide 13 ###
################


# finding strings with str_detect()

str_detect(fruits, "e")
fruits[str_detect(fruits, "e")]

children <- c("13yo_boy", "8yo_boy", "5yo_girl", "17yo_girl", "12yo_boy")

boys <- children[str_detect(children, "boy")]
boys

# if you have a mix of capitals and lowercases you will want to combine with str_to_lower()

children <- c("13yo_boy", "8yo_Boy", "5yo_girl", "17yo_girl", "12yo_boy")
boys <- children[str_detect(children, "boy")]
boys
#uh oh
boys <- children[str_detect(str_to_lower(children), "boy")]
boys
#that's better!
library(tibble)

kid_activities <- tibble(children = str_to_lower(children), activities = c("soccer", "flute", "hockey", "painting", "4h"))
kid_activities$gender <- NA
kid_activities[str_detect(kid_activities$children, "boy"), "gender"] <- "male"
kid_activities[str_detect(kid_activities$children, "girl"), "gender"] <- "female"
kid_activities

################
### Slide 14 ###
################

library(readr)
parse_number(children)

#this can also be used to make columns
kid_activities$age_in_years <- parse_number(kid_activities$children)
kid_activities

################
### Slide 15 ###
################

# sometimes, you may want to split a string into multiple strings using some boundary

str_split(kid_activities$children, "_")
str_split("The quick brown fox jumps over the lazy dog", " ")

################
### Slide 16 ###
################

# stringr's detect returns true or false if a pattern is in a string, if you need to know WHERE a pattern is in in a string you will need a new package stringi

library(stringi)

# lazy
stri_locate(pattern = "i", "string", fixed = T)

# greedy
stri_locate_all(pattern = "i", "stringing along", fixed = T)

# why is there a start and an end?
stri_locate_all(pattern = "ing", "strining along", fixed = T)

# can be combined with str_sub

str_sub(kid_activities$children, 1, stri_locate(kid_activities$children, pattern = "_", fixed = T)[1]-1)

################
### Slide 17 ###
################

# remove whitespace before and after a string with str_trim()
str_trim(" I am a string ")

# remove repeated whitespace with str_squish()
str_squish(" I am a        string ")

################
### Slide 18 ###
################

# count a character or pattern with str_count
str_count("hedgehog", "h")

### dates

################
### Slide 22 ###
################

library(lubridate)

mdy("May 18, 1951")

mdy("may 18 51")

mdy("5-18-51")

#still won't work on really weird inputs

mdy("5-18-951")

dmy("18-5-1951")

# If you pick the wrong function, it will not work

dmy("5-18-1951")

# in this case since there is no month 18 we get an error, but we could get a (wrong) answer if we used the wrong function on a date that was possible

#May 1st, 1951

dmy("5-1-1951")

################
### Slide 23 ###
################

today()

bday <- mdy("5-18-1951")

interval(bday, today())/years(1)

interval(bday, today())/months(1)

################
### Slide 24 ###
################

ymd_hms("2017-11-28 10:00:00")

now()

# admittedly, some time functions are not perfect, be very cautious!
hm("10:00 pm")

am(hm("10:00 pm"))

# intervals with time
sometime <- ymd_hms("2017-11-28 10:00:00")

anothertime <- ymd_hms("2017-11-28 14:00:00")

anothertime - sometime

interval(sometime, anothertime)/minutes(1)

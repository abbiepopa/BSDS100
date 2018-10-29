###############
### Slide 7 ###
###############

library(stringr)

letters

str_detect(letters, "[aeiou]")

which(str_detect(letters, "[aeiou]"))

str_subset(letters, "[aeiou]")

# note, case sensitive

str_subset(letters, "[AEIOU]")

###############
### Slide 8 ###
###############

fruit

str_subset(fruit, "[QZqz]")

###############
### Slide 9 ###
###############

weird_things <- c("a", "1", "_", " ", ".", "&", "+", "!")

str_subset(weird_things, "\\d")

str_subset(weird_things, "\\s")

str_subset(weird_things, "\\w")

################
### Slide 11 ###
################

str_subset(fruit, "k?li.e")

str_subset(fruit, "k+li.e")

str_subset(fruit, "o+li.e")

olives <- c("olive", "olie", "olivvvvve", "olivvve")

str_subset(olives, "oliv*e")

str_subset(olives, "oliv{1,3}e")

################
### Slide 12 ###
################

# Fill in the blank to find fruits whose names contain (capital or lower case) q, z, j, or x

str_subset(fruit, "[QZqz____]")

#Fill in the blank to fruits whose names contain the pattern any character, a, any chracter
str_subset(fruit, "___")

################
### Slide 14 ###
################

str_subset(fruit, "^[aeiou]")
str_subset(fruit, "[aeiou]$")
str_subset(fruit, "berry")
str_subset(fruit, "\\bberry\\b")

################
### Slide 15 ###
################

str_subset(fruit, "^(black)")

str_subset(fruit, "(black)|(blue)")

mathy_strings <- c("5 - 10", "2 + 2", "3 * 6")

str_subset(mathy_strings, "\\+")

################
### Slide 16 ###
################

# Using the built-in dataset words find all the words that:
  # Start with the letter y
  # End with the letter m
  # Are exactly three letters long (with regex, not with str_length()!
  # Are 7 or more letters long

################
### Slide 17 ###
################

sentence_frame <- data.frame(sentences = sentences, direct_obj = F)

sentence_frame[str_detect(sentence_frame$sentences, "^The\\b"), 
               "direct_obj"] <- T

# str_replace() and str_replace_all() examples

names <- c("Abbie Popa", "Ripleyxander Catilton", "Joseph Gordon Levitt")

names_one_space <- str_replace(names, "\\s", "_")

names_one_space

names_all_spaces <- str_replace_all(names, "\\s", "_")

names_all_spaces

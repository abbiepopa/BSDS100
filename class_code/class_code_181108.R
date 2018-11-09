library(stringr)
letters
str_detect(letters, "[aeiou]")
which(str_detect(letters, "[aeiou]"))
str_subset(letters, "[aeiou]")
str_subset(letters, "[AEIOU]")

fruit
str_subset(fruit, "[QqZz]")

weird_things <- c("a", "1", "_", " ", ".", "&", "+", "!")
str_subset(weird_things, "\\d")
str_subset(weird_things, "\\s")
str_subset(weird_things, "\\w")

# wild cards
str_subset(fruit, "k?li.e")
str_subset(fruit, "k+li.e")
str_subset(fruit, "o+li.e")
olives <- c("olive", "oooolive", "olie", "olivvvvve", "olivvve", "olives", "pves")
str_subset(olives, "o+li.e")
str_subset(olives, "ev*p")
str_subset(olives, "oliv{1,3}e")

# practice
str_subset(fruit, "[QqZzJjXx]")
str_subset(fruit, ".a.")

#positionals
str_subset(fruit, "^[aeiouAEIOU]")
str_subset(fruit, "[aeiou]$")
str_subset(fruit, "berry")
str_subset(fruit, "\\bberry\\b")

str_subset(fruit, "^(black)")
str_subset(fruit, "(black)|(blue)")
mathy_strings <- c("5 - 10", "2 + 2", "3 * 6")
str_subset(mathy_strings, " \\*")
str_subset(mathy_strings, "\\+")

#practice
str_subset(words, "^y")
str_subset(words, "m$")
str_subset(words, "\\b...\\b")
str_subset(words, ".{7,}")

sentence_frame <- data.frame(sentences = sentences,
                             direct_obj = F)
sentence_frame[str_detect(sentence_frame$sentences,
                          "^The\\b"), "direct_obj"] <- T
sentence_frame[1:10,]

people <- c("Abbie Popa", "Ripleyxander Catilton",
            "Joseph Gordon Levitt")
people_one_space <- str_replace(people, "\\s", "_")
people_all_spaces <- str_replace_all(people, "\\s", "_")
people_all_spaces

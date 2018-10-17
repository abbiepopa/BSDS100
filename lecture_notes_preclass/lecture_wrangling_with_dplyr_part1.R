###############
### Slide 4 ###
###############

library(dplyr)

select(mtcars, mpg, cyl)

# equivalent to

mtcars[ , c("mpg", "cyl")]

###############
### Slide 5 ###
###############

head(select(iris, contains(".")))

head(select(iris, ends_with("Length")))

head(select(iris, one_of(c("Species", "Genus"))))

head(select(iris, starts_with("Sepal")))

head(select(iris, "Sepal.Length":"Petal.Width"))

head(select(iris, -Species))

# pause

###############
### Slide 7 ###
###############

library(ggplot2)
summarise(msleep, avg_sleep = mean(sleep_total))

summarise(msleep, avg_sleep = mean(sleep_total), 
          med_sleep = median(sleep_total))

summarise(msleep, avg_sleep = mean(sleep_total), 
          avg_rem = mean(sleep_rem, na.rm = T))

###############
### Slide 8 ###
###############

summarise_all(iris, funs(mean))

# note warning is bc Species cannot have a "mean" taken

summarise_all(msleep, funs(mean(., na.rm = T)))

# note, though this allows it to take the man of numeric columns with nas, the non-numeric columns still can't have means taken

summarise_all(select(iris, -Species), funs(mean, median, sd))

# pause!

###############
### Slide 9 ###
###############

summarise(group_by(msleep, vore), mean_sleep = mean(sleep_total))

summarise_all(group_by(iris, Species), funs(mean))

################
### Slide 10 ###
################

sum_sleep <- summarise(group_by(msleep, vore), 
                      mean_sleep = mean(sleep_total),
                      se_sleep = sd(sleep_total)/sqrt(length(sleep_total)))

ggplot(sum_sleep, aes(x = vore, y = mean_sleep, fill = vore)) + 
  geom_bar(stat = "identity") + 
  geom_errorbar(aes(ymin = mean_sleep - se_sleep, ymax = mean_sleep + se_sleep), width = 0.2)

################
### Slide 12 ###
################

count(msleep, vore)

count(mtcars, interaction(cyl, vs))

################
### Slide 14 ###
################

# how many diamonds are there for each cut?

# what is the average price for each cut of diamond?

################
### Slide 17 ###
################

slice(iris, 3:5)

iris[3:5, ]

################
### Slide 18 ###
################

filter(mtcars, mpg > 32)

filter(mtcars, mpg > 30, mpg < 33, wt < 2)

filter(mtcars, mpg < 30 | mpg > 33, wt < 2)

################
### Slide 19 ###
################

my_msleep <- msleep

my_msleep <- mutate(msleep, rem_per_sleep = sleep_rem/sleep_total)

my_msleep[ , c("name", "rem_per_sleep")]

my_msleep$rem_per_sleep <- my_msleep$sleep_rem/my_msleep$sleep_total

my_msleep[ , c("name", "rem_per_sleep")]
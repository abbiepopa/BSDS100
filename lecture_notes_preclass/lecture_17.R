################
### Slide 13 ###
################

library(tibble)
library(tidyr)
library(ggplot2)

animals <- tribble(
  ~species, ~weight_when_admitted, ~weight_when_adopted, ~supplement,
  "cat", 8, 15, "turkey",
  "cat", 9, 11, "kibbles", 
  "dog", 18, 27, "turkey"
)

animals

# make a graph showing weight at the two time points colored by species and shaped by supplement
# ???

# make a linear model predicting weight based on species, supplement, and time of measurement
# ???

tidy_animals <- gather(animals, key = "measurement", value = "weight", 
                       weight_when_admitted, weight_when_adopted)

ggplot(tidy_animals, aes(x = measurement, y = weight, colour = species, shape = supplement)) +
  geom_point(size = 2)

summary(lm(weight ~ measurement + species + supplement, data = tidy_animals))

################
### Slide 18 ###
################
install.packages('rvest')

library('rvest')

webpage <- read_html('http://www.uscourts.gov/glossary')

anchors <- html_nodes(webpage, 'a')

#what does a useful anchor look like?

which(str_detect(anchors, "Impeachment"))
anchors[339]
html_attrs(anchors[339])

#okay, let's get that type of contents
anchor_contents <- html_attr(anchors, "id")

#check it worked
library(stringr)
str_subset(anchor_contents, "Impeachment")

# remove blanks
anchor_contents <- str_subset(anchor_contents, ".+")
anchor_contents

################
### Slide 20 ###
################

library(MASS)
head(Boston)

# predict housing price based on crime, average rooms per dwelling, pupil-teacher ratio

lm_fit <- lm(medv ~ crim + rm + ptratio, data = Boston)

summary(lm_fit)

predict(lm_fit, data.frame(crim = 0.5, rm = 5, ptratio = 23))

predict(lm_fit, data.frame(crim = 0.5, rm = 5, ptratio = 23))* 1000

#that's pretty cheap!  should move back in time to the 1960s.

predict(lm_fit, data.frame(crim = 0.5, rm = 5, ptratio = 23), interval = "confidence")

################
### Slide 21 ###
################

ggplot(Boston, aes(x = rm, y = medv)) + geom_point() + geom_smooth(method = 'lm')
# linear regression fits a line to allow us to explain one variable based on other(s)

ggplot(Boston, aes(x = ptratio, y = medv)) + geom_point() + geom_smooth(method = 'lm')
# it must be a straight line, even when that doesn't make sense

ggplot(Boston, aes(x = crim, y = medv)) + geom_point() + geom_smooth(method = 'lm')

################
### Slide 23 ###
################

install.packages('randomForest')
library(randomForest)

set.seed(1)
boston_forest <- randomForest(medv ~ crim + rm + ptratio, data = Boston, importance = T)

predict(boston_forest, data.frame(crim = 0.5, rm = 5, ptratio = 23))
predict(boston_forest, data.frame(crim = 0.5, rm = 5, ptratio = 23))*1000

#you know I'm more willing to believe that

importance(boston_forest)

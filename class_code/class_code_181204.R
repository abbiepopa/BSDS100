library(tibble)
library(tidyr)
library(ggplot2)

animals <- tribble(
  ~species, ~weight_when_admitted, ~weight_when_adopted,
  ~supplement, 
  "cat", 8, 15, "turkey",
  "cat", 9, 11, "kibbles",
  "dog", 18, 27, "turkey"
)

tidy_animals <- gather(animals, key = "measurment",
                       value = "weight",
                       weight_when_admitted,
                       weight_when_adopted)

ggplot(tidy_animals, aes(x = measurment, 
                         y = weight,
                         colour = species,
                         shape = supplement)) + geom_point()

summary(lm(weight ~ measurment + species
           + supplement, data = tidy_animals))


### web scraping

install.packages('rvest')
library(rvest)

webpage <- read_html('http://www.uscourts.gov/glossary')

anchors <- html_nodes(webpage, 'a')

anchor_contents <- html_attr(anchors, 'id')

library(stringr)

anchor_contents <- str_subset(anchor_contents, ".+")

anchor_contents

### ML
install.packages("MASS")
library(MASS)

head(Boston)
?Boston

lm_fit <- lm(medv ~ crim + rm + ptratio, data = Boston)
summary(lm_fit)

predict(lm_fit, data.frame(crim = 0.5, 
                           rm = 5, ptratio = 23))*1000

predict(lm_fit, data.frame(crim = 0.5, 
                           rm = 5, ptratio = 23),
        interval = "confidence")

ggplot(Boston, aes(x = rm, y = medv)) + 
  geom_point() + geom_smooth(method = 'lm')

ggplot(Boston, aes(x = crim, y = medv)) +
  geom_point() + geom_smooth(method = 'lm')

install.packages('randomForest')
library(randomForest)

set.seed(1)
boston_forest <- randomForest(medv ~ crim + rm + ptratio, data = Boston, importance = T)

predict(boston_forest, data.frame(crim = 0.5,
                                  rm = 5, 
                                  ptratio = 23))*1000

importance(boston_forest)

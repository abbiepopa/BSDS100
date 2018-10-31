library(dplyr)
mtcars[ ,c("mpg", "cyl")]
select(mtcars, mpg, cyl)

head(iris)
head(select(iris, contains(".")))
head(select(iris, ends_with("Length")))
head(select(iris, starts_with("Sepal")))
head(select(iris, one_of(c("Species", "Genus"))))
colnames(iris)
head(select(iris, "Sepal.Length":"Petal.Width"))
head(select(iris, -Species))

library(ggplot2)

summarise(msleep, avg_sleep = mean(sleep_total))

summarise(msleep, avg_sleep = mean(sleep_total),
          med_sleep = median(sleep_total))

summarise(msleep, avg_sleep = mean(sleep_total),
          med_sleep = median(sleep_total),
          avg_rem = mean(sleep_rem, na.rm = T))

summarise_all(iris, funs(mean))

summarise_all(msleep, funs(mean))
              
summarise_all(msleep, funs(mean(., na.rm = T)))

summarise_all(select(iris, -Species),
              funs(mean, median, sd))

summarise(group_by(msleep, vore),
          mean_sleep = mean(sleep_total))

summarise_all(group_by(iris, Species),
              funs(mean))

sum_sleep <- summarise(group_by(msleep, vore),
                       mean_sleep = mean(sleep_total),
                       se_sleep = 
                         sd(sleep_total)/
                         sqrt(length(sleep_total)))

ggplot(sum_sleep, aes(x = vore, y = mean_sleep,
                      fill = vore)) +
  geom_bar(stat = "identity") + 
  geom_errorbar(aes(ymin = mean_sleep - se_sleep,
                    ymax = mean_sleep + se_sleep),
                width = .2)

count(msleep, vore)

count(mtcars, interaction(cyl, vs))


# Answers to Practice

str(diamonds)
colnames(diamonds)

count(diamonds, cut)

summarise(group_by(diamonds, cut),
          mean_price = mean(price))

group_by(diamonds, cut) %>% summarise(., 
                                      mean_price = mean(price))

iris[3:5,]
slice(iris, 3:5)
iris %>% slice(3:5)

select(iris, 3:5) %>% slice(3:5)
iris[3:5, 3:5]

mtcars[mtcars$mpg > 32, ]

filter(mtcars, mpg > 32)

mtcars[mtcars$mpg > 30 & mtcars$mpg < 33, ]

filter(mtcars, mpg > 30, mpg < 33, wt < 2)

filter(mtcars, mpg < 30 | mpg > 33, wt < 2)

my_sleep <- msleep

my_sleep$rem_per_sleep <- my_sleep$sleep_rem/my_sleep$sleep_total

my_sleep[1:3, c("name", "rem_per_sleep")]

my_sleep <- mutate(my_sleep, 
                   rem_per_sleep_2 = sleep_rem/sleep_total)

my_sleep[1:3, c("name", "rem_per_sleep", "rem_per_sleep_2")]

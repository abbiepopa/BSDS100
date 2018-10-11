# even numbers, 2 - 10, each twice

sort(rep(seq(2, 10, 2), 2))

even_numbers <- seq(2, 10, 2)

rep_even_numbers <- rep(even_numbers, 2)

sort_rep_even_numbers <- 
  sort(rep_even_numbers)

rm(list = c("even_numbers", 
            "rep_even_numbers"))

sort(rep(seq(2, 10, 2), 2))

library(magrittr)

seq(2, 10, 2) %>% rep( , times = 2) %>% sort()

dog_cat <- factor(c("dog", "dog", "cat", "dog"))
dog_cat
class(dog_cat)

as.character(dog_cat)
class(dog_cat)

dog_cat <- as.character(dog_cat)
class(dog_cat)

iris[iris$Species == "versicolor",
     "Sepal.Length"]

iris[iris$Species == "versicolor", 
     c("Sepal.Length", "Sepal.Width")]

## Answers to Warm-Up

plot(iris$Sepal.Length, iris$Sepal.Width)

library(ggplot2)

qplot(Sepal.Length, Sepal.Width,
      data = iris, colour = Species)

qplot(carat, price, 
      data = diamonds, colour = cut)

ggplot(diamonds, aes(carat, price,
                     colour = cut)) +
  geom_point()

my_plot <- ggplot(diamonds, aes(carat,
                                price,
                                colour = cut))

my_plot + geom_boxplot()

my_plot + geom_point()

my_fit_line <- 
  geom_smooth(method = "lm",
  se = F, colour = "steelblue",
  size = 2)

qplot(sleep_rem, sleep_total, data = msleep) +
  my_fit_line

qplot(awake, brainwt, data = msleep) +
  my_fit_line

summary(my_plot)

my_car_plot <- ggplot(mtcars,
                      aes(x = mpg,
                          y = wt)) +
  geom_point()

my_car_plot + geom_point(aes(
  colour = factor(cyl)))

my_car_plot + geom_point(aes(
  colour = cyl))

my_car_plot + geom_point(aes(y = disp)) +
  ylab("disp")

ggplot(mtcars, aes(group = factor(cyl),
                   y = mpg, 
                   fill = factor(cyl))) +
  geom_boxplot()

ggplot(mtcars, 
       aes(group = interaction(cyl, vs),
           y = mpg, 
           fill = interaction(cyl, vs))) +
  geom_boxplot()

install.packages("nlme")
library(nlme)

colnames(Oxboys)

ggplot(Oxboys, aes(age, height, 
                   group = Subject)) +
  geom_line() + geom_smooth(group = 1)

ggplot(Oxboys, aes(Occasion, height)) +
  geom_boxplot() +
  geom_line(aes(group = Subject), 
                colour = "steelblue")

ggplot(Oxboys, aes(height)) + geom_bar()

ggplot(Oxboys, aes(height)) + geom_point()

ggplot(Oxboys, aes(Occasion, height)) +
  geom_point()

ggplot(Oxboys, aes(Occasion, height)) +
  geom_point(position = "jitter")

plot_pos <- ggplot(mtcars, 
                   aes(factor(cyl), 
                       fill = factor(vs)))

plot_pos + geom_bar()

plot_pos + geom_bar(position = "dodge")

plot_pos + geom_bar(position = "fill")

plot_pos + geom_bar(position = "stack")

plot_pos + geom_bar(position = "identity")

plot_pos + geom_bar() + 
  theme_grey(base_size = 16)

plot_pos + geom_bar() + 
  xlab("Cylinders")

ggplot(msleep, aes(bodywt, sleep_total)) +
  geom_point() + xlim(xmin = -1, 
                      xmax = 1000)

msleep[msleep$bodywt > 2000, "name"]

plot_pos + geom_bar() + 
  ggtitle("A Car Plot") +
  theme(plot.title = 
          element_text(hjust = 0.5)) +
  theme_bw() + scale_fill_brewer(
    palette = "Pastel1")

?scale_fill_brewer

ggplot(msleep, aes(bodywt, sleep_total,
                   colour = vore)) +
  geom_point() + xlim(xmin = -1, 
                      xmax = 1000) +
  scale_color_brewer(palette = "Pastel1")

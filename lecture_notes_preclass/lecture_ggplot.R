################
### Slide 19 ###
################

?plot

################
### Slide 20 ###
################

food <- read.csv("https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/Food.csv")
str(food)
head(food)
tail(food)
summary(food)

################
### Slide 21 ###
################

plot(food$pnns_groups_1)

################
### Slide 22 ###
################

plot(swiss)

################
### Slide 24 ###
################

hist(food$energy_100g)

################
### Slide 25 ###
################

plot(density(food$energy_100g, na.rm = T))

################
### Slide 27 ###
################

hist(food$energy_100g, n = 100, probability = T)
lines(density(food$energy_100g, na.rm = T), col = "red")

################
### Slide 28 ###
################

boxplot(food$energy_100g ~ food$pnns_groups_1)

################
### Slide 33 ###
################

library(ggplot2)

plot(mtcars$cyl)

#dangit, I didn't want a scatter plot!

plot(as.factor(mtcars$cyl))

#okay, that's better, but a bit hard to read... no x axis, the "8" group is taller than the y axis

qplot(mtcars$cyl)
# that's a little better

qplot(as.factor(mtcars$cyl))
# that's much better

################
### Slide 34 ###
################

str(diamonds)
summary(diamonds)
head(diamonds)

################
### Slide 37 ###
################

qplot(carat, price, data = diamonds, colour = color)

# that's a lot of diamonds! one data science trick is to take a subset
# naively, we might just take the first 100 observations

qplot(carat, price, data = diamonds[1:100,], colour = color)

# that gave us a pretty odd set of diamonds, perhaps it would be better to take a RANDOM subset

# makes sure we all get the same random subset
set.seed(1410)
diamonds_subset_01 <- diamonds[sample(nrow(diamonds), 100), ]

# map "color" from the diamonds dataset to "colour" of the points
qplot(carat, price, data = diamonds_subset_01, colour = color)

# map "cut" from the diamonds dataset to shape
qplot(carat, price, data = diamonds_subset_01, shape = cut)

# can't it be both?
qplot(carat, price, data = diamonds_subset_01, shape = cut, colour = color)


################
### Slide 39 ###
################

qplot(carat, data = diamonds, geom = "histogram", fill = color)

qplot(carat, data = diamonds, geom = "density", colour = color)

################
### Slide 40 ###
################

qplot(carat, data = diamonds, geom = "histogram", fill = color, bins = 30)
qplot(carat, data = diamonds, geom = "histogram", fill = color, bins = 10)
qplot(carat, data = diamonds, geom = "histogram", fill = color, bins = 100)


qplot(carat, data = diamonds, geom = "density", colour = color, adjust = 1)
qplot(carat, data = diamonds, geom = "density", colour = color, adjust = 10)
qplot(carat, data = diamonds, geom = "density", colour = color, adjust = .1)

################
### Slide 41 ###
################

qplot(color, carat, data = diamonds, geom = "point")

qplot(color, carat, data = diamonds, geom = c("point", "jitter"))

################
### Slide 42 ###
################

qplot(lag.quarterly.revenue, y, data = freeny, geom = "point")
qplot(lag.quarterly.revenue, y, data = freeny, geom = "line")
qplot(lag.quarterly.revenue, y, data = freeny, geom = c("line", "point"))

################
### Slide 44 ###
################

qplot(carat, data = diamonds, facets = . ~ color, geom = "histogram")

################
### Slide 46 ###
################

# warm-up answers

################
### Slide 47 ###
################

qplot(carat, price, data = diamonds, colour = cut)

ggplot(diamonds, aes(carat, price, colour = cut))
# nothing there! yet...

################
### Slide 48 ###
################

ggplot(diamonds, aes(carat, price, colour = cut)) + geom_point()

# maybe we want to make a bunch of plots based on the same basic settings, in this case it may be useful to store the ggplot as an object!

my_plot <- ggplot(diamonds, aes(carat, price, colour = cut))

my_plot + geom_point()

my_plot + geom_boxplot()

################
### Slide 49 ###
################

# Let's see how a given fit line can be applied to a few different plots

myBestFitLine <- geom_smooth(method = "lm", se = F,
                               colour = alpha("steelblue", 0.5), size = 2)
qplot(sleep_rem, sleep_total, data = msleep) + myBestFitLine
qplot(awake, brainwt, data = msleep) + myBestFitLine

################
### Slide 50 ###
################

myPlot <- ggplot(diamonds, aes(carat, price, colour = cut)) +
  geom_point()
summary(myPlot)

myPlot

################
### Slide 50 ###
################

ggplot(diamonds, aes(x = carat, y = price, colour = color)) + geom_point()

################
### Slide 53 ###
################

(myPlot <- ggplot(mtcars, aes(x = mpg, y = wt)) + geom_point())

################
### Slide 54 ###
################

myPlot + geom_point(aes(colour = factor(cyl)))

# what happens if we don't make cyl  a factor?
myPlot + geom_point(aes(colour = cyl))

# it treats the cyl variable as continuous

################
### Slide 55 ###
################

myPlot + geom_point(aes(y = disp))
# note the name of the y axis didn't change, darn it!
# better to update these key aesthetics in the ggplot() call

################
### Slide 59 ###
################

install.packages("nlme")
library(nlme)

ggplot(Oxboys, aes(age, height)) + geom_line()
# it didn't know we wanted a separate line for each boy, which makes an... unusual graph

ggplot(Oxboys, aes(age, height, group = Subject)) + geom_line()

################
### Slide 61 ###
################

# example (wrong)
ggplot(Oxboys, aes(age, height, group = Subject)) + geom_line() + geom_smooth()

# example, fixed!
ggplot(Oxboys, aes(age, height, group = Subject)) + geom_line() + geom_smooth(group = 1)

################
### Slide 62 ###
################

ggplot(Oxboys, aes(Occasion, height)) + geom_boxplot() + geom_line(aes(group = Subject))

#looks pretty good, but lets change the color of the lines to make it pretteir

ggplot(Oxboys, aes(Occasion, height)) + geom_boxplot() + geom_line(aes(group = Subject), colour = "steelblue")

################
### Slide 63 ###
################

ggplot(Oxboys, aes(height)) + geom_bar()

ggplot(Oxboys, aes(height)) + geom_point()

ggplot(Oxboys, aes(Occasion, height)) + geom_point()

################
### Slide 65 ###
################

# recall, for scatter pltos we use "jitter"
ggplot(Oxboys, aes(Occasion, height)) + geom_point(position = "jitter")

# mtcars
# cyl = number of cylinders
# vs = engine shape (0 = v, 1 = straight)

plot_pos <- ggplot(mtcars, aes(factor(cyl), fill = factor(vs))) 

plot_pos + geom_bar()
#by default will guess which position you want, in this case "stack"

plot_pos + geom_bar(position = "dodge")
# dodge moves overlapping bars beside each other

plot_pos + geom_bar(position = "fill")
# fill changes bars to represent the percent of the fill aes (this one vs), and position represents cyl

plot_pos + geom_bar(position = "stack")
# the different bars are stacked on top of each other

plot_pos + geom_bar(position = "identity")
# just lets them overlap

################
### Slide 67 ###
################

plot_pos + geom_bar()

plot_pos + geom_bar() + theme_grey(base_size = 16)

plot_pos + geom_bar() + xlab("Cylinders")

ggplot(msleep, aes(bodywt, sleep_total)) + geom_point() 

ggplot(msleep, aes(bodywt, sleep_total)) + geom_point() + xlim(xmin = -1, xmax = 1000)

################
### Slide 68 ###
################

plot_pos + geom_bar() + ggtitle("Engines and Cylinders") + theme(plot.title = element_text(hjust = 0.5))

?element_text

################
### Slide 69 ###
################

plot_pos + geom_bar()

plot_pos + geom_bar() + theme_bw()

plot_pos + geom_bar() + scale_fill_brewer(palette="Accent")

ggplot(msleep, aes(bodywt, sleep_total)) + geom_point() + xlim(xmin = -1, xmax = 1000)

ggplot(msleep, aes(bodywt, sleep_total, colour = vore)) + geom_point() + xlim(xmin = -1, xmax = 1000)

ggplot(msleep, aes(bodywt, sleep_total, colour = vore)) + geom_point() + xlim(xmin = -1, xmax = 1000) + scale_color_brewer(palette = "Set1")

# view your palette options in documentation
?scale_color_brewer

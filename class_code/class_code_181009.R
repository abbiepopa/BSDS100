?plot

food <- read.csv(
  "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/Food.csv")

str(food)
head(food)
tail(food)
summary(food)

plot(food$pnns_groups_1)

str(swiss)
?swiss
plot(swiss)

hist(food$energy_100g)

plot(density(food$energy_100g, 
             na.rm = T))

plot(food$energy_100g)

hist(food$energy_100g, 
     n = 100, 
     probability = T)
lines(density(food$energy_100g,
              na.rm = T),
      col = "red")

boxplot(food$energy_100g ~ 
          food$pnns_groups_1)

library(ggplot2)
#install.packages("ggplot2")

str(mtcars)
table(mtcars$cyl)

plot(mtcars$cyl)

plot(as.factor(mtcars$cyl))

qplot(mtcars$cyl)
qplot(as.factor(mtcars$cyl))

str(diamonds)
summary(diamonds)
head(diamonds)

set.seed(1410)

qplot(carat, price, data = diamonds,
      colour = color)

qplot(carat, price, data = diamonds[1:100, ],
      colour = color)

diamonds_subset <- 
  diamonds[sample(nrow(diamonds), 100), ]

qplot(carat, price, data = diamonds_subset,
      colour = color)

qplot(carat, price, data = diamonds_subset,
      shape = cut)

qplot(carat, price, data = diamonds_subset,
      colour = color, shape = cut)

qplot(carat, data = diamonds, 
      geom = "histogram", fill = color)

qplot(carat, data = diamonds,
      geom = "density", colour = color)

qplot(carat, data = diamonds,
       geom = "histogram", fill = color,
      bins = 10)

qplot(carat, data = diamonds, 
      geom = "density", colour = color,
      adjust = 5)

qplot(color, carat, data = diamonds, 
      geom = "point")

qplot(color, carat, data = diamonds,
      geom = c("point", "jitter"))


qplot(lag.quarterly.revenue, y, 
      data = freeny, geom = "point")

qplot(lag.quarterly.revenue, y,
      data = freeny, geom = "line")

qplot(lag.quarterly.revenue, y,
      data = freeny, geom = c("point", "line"))

qplot(carat, data = diamonds, facets = . ~ color,
      geom = "histogram")

getwd()
setwd("~/Dropbox/BSDS100_Development/Code Demonstrations/live-coding/")

getwd()

pdf("my_diamond_plot.pdf")
qplot(carat, data = diamonds,
      facets = . ~ color,
      geom = "histogram",
      fill = color)
dev.off()
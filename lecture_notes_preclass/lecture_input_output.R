###############
### Slide 8 ###
###############

midterm_grades <- c(85, 72, 90)
measurement_1 <- c(1, 1.5, 0.25)

class_stats <- data.frame(Grade = midterm_grades, Measurement1 = measurement_1)

class_stats
plot(class_stats)
summary(lm(class_stats$Grade~class_stats$Measurement1))

################
### Slide 14 ###
################

### .RData File Example

# Create new data

x <- c(2, 3, 5)
y <- rep(seq(5, 20, by = 2), 2)

# save data
save(x, y, file = "saved_Data.RData")

# remove data from this session
rm(list = ls())

# load saved data
load("saved_Data.RData")
x
y

# Note! recall from day 1, working directories!
# R is saving this file to your current working directory
getwd()
setwd("~/Dropbox/BSDS100_Development/Code Demonstrations/live-coding/")
getwd()

# that's better!
# if you are having trouble loading data that you know you have into R, be sure to check your working directory!

################
### Slide 14 ###
################

?read.table

################
### Slide 21 ###
################

# Example: Airport Data

airports1 <- read.table(file = "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/airports.csv", header = F, sep = ",")

# note, if the file were saved to disk you could use:
airports1 <- read.table("airports.csv", header = F, sep = ",")
# and get the same thing, but you presumably do not have this data on your hard drive, so I recommend using the url to follow along

airports1[1:2, 1:3]

################
### Slide 22 ###
################

airports2 <- read.table(file = "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/airports.csv", header = T, sep = ",")

airports2[1:2, 1:3]

airports3 <- read.csv(file = "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/airports.csv")

airports3[1:2, 1:3]

################
### Slide 24 ###
################

install.packages("openxlsx")
library(openxlsx)
airports4 <- read.xlsx("airports_excel.xlsx")
airports4[1:2, 1:3]

################
### Slide 25 ###
################

# Importing irregular datasets

email_trial <- read.table(file = "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/USF_email.txt")

################
### Slide 26 ###
################

# readLines() function for irregular data

email1 <- readLines("https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/USF_email.txt")

email1[1:3]

################
### Slide 26 ###
################

email2 <- readLines("https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/USF_email.txt", n = 2)

email2

################
### Slide 29 ###
################

singles <- scan("singles.txt", what = numeric(0))
singles
str(singles)

################
### Slide 31 ###
################

triples <- scan("triples.txt", what = list(date = character(0), high = numeric(0), low = numeric(0)))

triples

# note, though you could coerce triples into a data.frame

triples_df <- data.frame(triples)
triples_df

# scan needs to return a list, and what must be a list

triples_2 <- scan("triples.txt", what = data.frame(date = character(0), high = numeric(0), low = numeric(0))) #scan requires "what" be a list

################
### Slide 33 ###
################

# generally we have been printing an object to our console simply by calling it

name <- "Abbie Popa"
name

# sometimes, if we're feeling fancy, we print the object as we construct it by wrapping it in ()
(name <- "Abbie Popa")

# we can also print with more context:
cat("My name is", name, sep = " ")

################
### Slide 34 ###
################

cat("hello world", file = "my_doc.txt")
cat("\n", "My name is", name, "\n", file = "my_doc.txt", append = T)

readLines("my_doc.txt")

################
### Slide 34 ###
################

sink("my_doc2.txt")

cat("hello world")

cat("\n", "My name is ", name, "\n")

sink()

readLines("my_doc2.txt")

# note, sink accept objects that we print to the console the old-fashioned way, but they look... weird

sink("my_doc3.txt")
cat("hello world")
name
sink()

readLines("my_doc3.txt")

# if you want them to look pretty, instead print them using "cat()"

sink("my_doc4.txt")
cat("hello world \n")
cat(name)
sink()

readLines("my_doc4.txt")

################
### Slide 37 ###
################

airports3 <- read.csv(file = "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/airports.csv",
                      header = T)

mod_airports <- airports3[1:100, ]

write.table(mod_airports, file = "modified_airports.csv", sep = ",", row.names = F)

# equivalent to

write.csv(mod_airports, file = "modified_airports.csv", row.names = F)

# or you can save as an RData file

save(mod_airports, file = "modified_airports.Rdata")

# one other disadvantage or Rdata files, your buddy will need R to open it!

################
### Slide 39 ###
################

airports <- read.csv(file = "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/airports.csv", 
                     header = T)

pdf("US_Airports.pdf")

plot(airports$lat ~ airports$long, col = "green", 
     xlim = c(-180, -50), ylim = c(10, 72),
     xlab = "",
     ylab = "")

dev.off()

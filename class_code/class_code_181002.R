midterm_grades <- c(85, 72, 90)
measurement_1 <- c(1, 1.5, 0.25)

class_stats <- data.frame(Grade = midterm_grades, 
                          measurement = measurement_1)

class_stats
plot(class_stats)
summary(lm(class_stats$Grade ~ 
             class_stats$measurement))

#.Rdata files

x <- c(2, 3, 5)
y <- rep(seq(5, 20, by = 2), 2)

x
y

save(x, y, file = "save_data.RData")

rm(list = ls())

x
y

load("save_data.RData")
x
y

getwd()
setwd("~/Dropbox/BSDS100_Development/Code Demonstrations/live-coding/")
getwd()

load("save_data.RData")

### read.table

?read.table()

airports1 <- read.table(
  file = "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/airports.csv",
  sep = ",")

airports1[1:2, 1:3]

airports2 <- read.table(
  file = "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/airports.csv",
  sep = ",", header = TRUE
)

airports2[1:2, 1:3]

airports2 <- read.table("airports.csv", 
                        sep = ",",
                        header = T)

airports2[1:2, 1:3]

airports3 <- read.csv("https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/airports.csv")

airports3[1:2, 1:3]

install.packages("openxlsx")
library(openxlsx)

airports4 <- read.xlsx("airports_excel.xlsx")
airports4[1:2, 1:3]

#Irregular Data

email_test <- read.table(
  "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/USF_email.txt"
)

email1 <- readLines(
  "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/USF_email.txt"
)

email1[1:3]

email2 <- readLines(
  "https://raw.githubusercontent.com/abbiepopa/bsds100/master/Data/USF_email.txt",
  n = 2
)

email2

singles <- scan("singles.txt", what = numeric(0))

singles
str(singles)

triples <- scan("triples.txt", 
                what = list(date = character(0),
                            high = numeric(0),
                            low = numeric(0)))

triples

triples_df <- data.frame(triples)

triples_df

# will not work
triples_broken <- scan("triples.txt", 
                       what = data.frame(date = character(0),
                                         high = numeric(0),
                                         low = numeric(0)))
#what has to be a list

### output

my_name <- "Abbie Popa"
my_name

(my_name <- "Abbie Popa")

cat("My name is", my_name, sep = " ")

# cat to file

cat("hello world", file = "my_class_doc.txt")

cat("\n", "My name is Abbie", file = "my_class_doc.txt", 
    append = T)

readLines("my_class_doc.txt")

sink("my_second_class_doc.txt")
cat("hello bsds100")
cat("\n", "how are you?", "\n")
sink()

readLines("my_second_class_doc.txt")

sink("my_third_class_doc.txt")
cat("hello bsds100")
cat("\n")
my_name
sink()

readLines("my_third_class_doc.txt")

sink("my_prettier_class_doc.txt")
cat("hello bsds100")
cat("\n")
cat(my_name)
sink()

readLines("my_prettier_class_doc.txt")

head(airports3)

mod_airports <- airports3[1:100, ]

write.table(mod_airports, 
            file = "modified_airports.csv", 
            sep = ",",
            row.names = F)

pdf("US_airports.pdf")
plot(airports3$lat ~ airports3$long, col = "green",
     xlim = c(-180, -50),
     ylim = c(10, 72),
     xlab = "",
     ylab = "")
dev.off()
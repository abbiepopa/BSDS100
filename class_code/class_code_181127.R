titanic <- read.csv("https://raw.githubusercontent.com/abbiepopa/BSDS100/master/Data/titanic.csv")

str(titanic)

table(titanic$Survived)

titanic$survived_text <- "survived"

for(i in 1:length(titanic$Survived)){
  if(titanic$Survived[i] == 0){
    titanic$survived_text[i] <- "perished"
  }
}

table(titanic$survived_text, titanic$Survived)

summary(titanic$Age)

titanic$ageClass <- NA

for(i in 1:length(titanic$Age)){
  j <- titanic$Age[i]
  if(is.na(j)){
    titanic$ageClass[i] <- NA
  }else if(j <= 18){
    titanic$ageClass[i] <- "minor"
  }else if(j <= 65){
    titanic$ageClass[i] <- "adult"
  }else if(j > 65){
    titanic$ageClass[i] <- "senior"
  }
}

titanic$ageClass <- factor(titanic$ageClass, ordered = T,
                           levels = c("minor", "adult", "senior"))
head(titanic[, c("Age", "ageClass")], n = 15)

library(dplyr)
summarise(group_by(titanic, ageClass), 
          mean_age = mean(Age, na.rm = T),
          min_age = min(Age, na.rm = T),
          max_age = max(Age, na.rm = T))

for(i in titanic$Pclass){
  print(
    switch(i,
           "1" = "First Class",
           "2" = "Business",
           "3" = "Economy")
  )
}

### Functions

?sd
sd

my_square <- function(x){
  x^2
}

my_square(4)

# returns 

my_cube_wrong <- function(x){
  x^3
  x
}

my_cube_wrong(3)

my_cube_wrong_2 <- function(x){
  x <- x^3
}

my_cube_wrong_2(2)

my_cube_correct <- function(x){
  x^3
}
my_cube_correct(3)

#example more complex function

letterizer <- function(x){
  x <- x[which(x >0 & x <27)]
  out <- rep(NA, length(x))
  for(i in 1:length(x)){
    out[i] <- letters[x[i]]
  }
  out
}

letterizer(c(-2, 3, 20, 13, 55))

sum_two <- function(a, b){
  a + b
}

sum_two(10, 236)

## subtract_two example

subtract_two <- function(a, b){
  if(a == b){
    0
  }else if (a < b){
    b-a
  }else if (b < a){
    a-b
  }
}
subtract_two(3,3)
subtract_two(5, 1)
subtract_two(1, 5)


square_df <- function(x){
  data.frame(original = x, squared = x^2)
}

saved_square <- square_df(c(1,2,3))
square_df(c(5,5,5))

# scoping

x <- 1

return_one_two <- function(){
  y <- 2
  c(x,y)
}

return_one_two()

rm(x)

return_one_two()

return_one_two <- function(){
  x <- 1
  y <- 2
  c(x,y)
}

return_one_two()


#scoping practice

num_divide_three <- function(user_chosen_number){
  three <- 3
  user_chosen_number/three
}

num_divide_three(10)

# default arguments

my_func <- function(a,b){
  c(a,b)
}

my_func(1,12)
my_func()

my_func1 <- function(a = 1, b = 2){
  c(a,b)
}

my_func1(5,6)
my_func1()

my_func2 <- function(a = 1, b = 2*a){
  c(a, b)
}

my_func2()
my_func2(111)
my_func2(4,5)

# functionals

set.seed(42)
test_matrix <- matrix(runif(100)*rnorm(100),
                      nrow = 10, ncol = 10)

apply(test_matrix,1, mean)

test_matrix[runif(5,1,100)] <- NA
test_matrix
apply(test_matrix,1, mean)
apply(test_matrix, 1, mean(,na.rm = T)) #won't work

mean_na <- function(x){
  mean(x, na.rm = T)
}

apply(test_matrix, 1, mean_na)

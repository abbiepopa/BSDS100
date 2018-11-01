###############
### slide 5 ###
###############

?sd
sd

###############
### slide 6 ###
###############

my_square <- function(x){
  x^2
}

my_square(4)

###############
### slide 7 ###
###############

my_cube_wrong <- function(x){
  x^3
  x
}

my_cube_wrong(3)

my_cube_wrong_2 <- function(x){
  x <- x^3
}

my_cube_wrong_2(3)

my_cube <- function(x){
  x^3
}

my_cube(3)

###############
### slide 9 ###
###############

# Let's write a function that takes a numeric vector, removes any numbers lower than 1 or higher than 26, then returns the letter of the alphabet that matches each number in the resulting vector

letterizer <- function(x){
  x <- x[which(x > 0 & x < 27)]
  out <- rep(NA, length(x))
  for(i in 1:length(x)){
    out[i] <- letters[x[i]]
  }
  out
}

letterizer(c(-2, 3, 20, 13, 55))

################
### slide 10 ###
################

sum_two <- function(a, b){
  a + b
}

sum_two(10, 20)

################
### slide 11 ###
################

# Arrange the follow lines to make a function named \texttt{subtract\_two} that takes two numbers and subtracts the smaller number from the larger number (or returns zero if they are equal)
# 0
# b - a
# a - b
# subtract\_two <- function(a,b)\{
# if(a == b)\{
# } else if(a < b)\{
# } else if(b < a)\{
# }
# }

################
### slide 12 ###
################

# Write a function named \texttt{square\_df} that takes a vector and returns a data frame with two columns where
# the first column is named "original" and is the original vector
# the second column is named "squared" and is each of the elements of the original vector squared

################
### slide 13 ###
################

x <- 1

return_one_two <- function(){
  y <- 2
  c(x,y)
}

return_one_two()

rm(x)

return_one_two()

################
### slide 14 ###
################

return_one_two <- function(){
  x <- 1
  y <- 2
  c(x,y)
}

return_one_two()

################
### slide 15 ###
################

# We write a function which returns a number (chosen by the user) divided by 3, we initially write the function like so: \\ \\
# user\_chosen\_number <- 10 \\ \\
# three <- 3 \\ \\
# num\_divide\_three <- function()\{ \\ \\
# user\_chosen\_number / three \}}
# Rewrite the function so that the user passes their chosen number as an argument and three is locally scoped

################
### slide 19 ###
################

my_func_10 <- function(a,b){
  c(a,b)
}

my_func_10()

my_func_11 <- function(a=1, b=2){
  c(a,b)
}

my_func_11()

################
### slide 20 ###
################

my_func_12 <- function(a=1, b=a*2){
  c(a,b)
}

my_func_12()

my_func_12(111)

my_func_12(99, 100)

################
### slide 21 ###
################

my_func_18 <- function(xyz){
  if(xyz < 10){
    0
  } else{
    10
  }
}

my_func_18(5)
my_func_18(12)

################
### slide 23 ###
################

# simple function

my_func_15 <- function(x){
  x + 10
}

my_func_18 <- function(xyz){
  if(xyz < 10){
    return(0)
  } else{
    return(10)
  }
}

################
### slide 26 ###
################

?apply

set.seed(42)

test_matrix <- matrix(runif(100)*rnorm(100), nrow = 10, ncol = 10)

apply(test_matrix, 1, mean) #row means
apply(test_matrix, 2, mean) #column means

################
### slide 27 ###
################

apply(test_matrix, 1, mean(na.rm = T))
apply(test_matrix, 1, mean(., na.rm = T))

################
### slide 28 ###
################

na_mean <- function(x){
  mean(x, na.rm = T)
}

test_matrix[runif(5, 1, 100)] <- NA

apply(test_matrix, 1, mean)
apply(test_matrix, 1, na_mean)
apply(test_matrix, 1, function(x){mean(x, na.rm = T)})

################
### slide 29 ###
################
# Use \texttt{apply()} to get the standard deviation, removing \texttt{NA}'s, from the test matrix
# You can either define a new function or use an anonymous function

################
### slide 31 ###
################

myDataFrame_01 <- data.frame(
                             A = c(1, 10, 7, 2, 1, 6),
                             B = c(6, 4, 9, 9, 10, 2), 
                             C = c(1, 4, 5, 3, 5, 1),
                             D = c(5, -99, 4, 8, 9, 3),
                             E = c(-99, 9, 1, 6, 8, 8),
                             G = c(1, 3, 4, 8, 6, 5)
                             )

################
### slide 34 ###
################

fix99s_byCol <- function(myCol){
  myCol[myCol == -99] <- NA
}

################
### slide 35 ###
################

fix99s_byCol <- function(myCol){
  myCol[myCol == -99] <- NA
  myCol
}

################
### slide 36 ###
################

myDataFrame_02 <- lapply(myDataFrame_01, fix99s_byCol)
myDataFrame_02
str(myDataFrame_02)

################
### slide 37 ###
################

myDataFrame_03 <- as.data.frame(lapply(myDataFrame_01, fix99s_byCol))
myDataFrame_03                                
str(myDataFrame_03)

myDataFrame_04[] <- lapply(myDataFrame_01, fix99s_byCol)
myDataFrame_01[] <- lapply(myDataFrame_01, fix99s_byCol)
myDataFrame_01
str(myDataFrame_01)

################
### slide 38 ###
################
# First, make a function that takes a column and changes all values 4 or smaller to 0 and all values 5 or larger to 10 by filling in the blanks below: \\ \\
#{big\_small <- function(myCol)\{ \\ \\
#  myCol[myCol < \_\_\_] <- \_\_\_ \\ \\
#  myCol[myCol > \_\_\_] <- \_\_\_ \\ \\
#  \_\_\_ \}}
# Then, use your new function and \texttt{lapply()} to change myDataFrame\_01 into myDataFrame\_0\_10

number_vector <- c(3.14, 10, -5)
number_vector
typeof(number_vector)

integer_vector <- c(1L, 3L, 5L)
typeof(integer_vector)

my_atomic_vector <- c(1, 2, 3, 4, -99, 5, NA, 4, 22.2222)

my_atomic_vector

my_atomic_vector[1]

my_atomic_vector[5]

my_atomic_vector[c(1, 3, 5)]

length(my_atomic_vector)

my_atomic_vector[11]

my_atomic_vector[2:5]

my_atomic_vector[-7]

my_atomic_vector[-c(3, 7)]

my_atomic_vector[(length(my_atomic_vector)-1): length(my_atomic_vector)]


head(my_atomic_vector)
head(my_atomic_vector, n = 2)
tail(my_atomic_vector)
tail(my_atomic_vector, n = 2)

vec_1 <- c(1, 2, 3)
vec_2 <- c(4, 5, 6)

vec_3 <- c(vec_1, vec_2)
vec_3

vec_1 + vec_2

sqrt(vec_1)

sum(vec_1)

mean(vec_1)

sd(vec_1)

min(vec_1)

max(vec_1)

my_atomic_vector
sum(my_atomic_vector)
sum(my_atomic_vector, na.rm = T)

is.character(myVec)
is.numeric(myVec)

sum(is.na(my_atomic_vector))

myVec
typeof(myVec)
as.double(myVec)

str(myVec)
str(my_atomic_vector)

(my_new_atomic_vector <- c(99.1, 98.2, 97.3, 96.4))

my_new_atomic_vector[my_new_atomic_vector > 98]

my_new_atomic_vector > 98

my_big_temps <- my_new_atomic_vector[c(T, T, F, F)]

seq(from = 2, to = 10, by = 2)

seq(2, 10, 2)

rep(9, 100)
rep("dog", 100)

rep(NA, 100)

seq(0, -3, -0.5)
seq(0, -3, 0.5)

1:10
0:-10

rep(1:3, 100)
rep(seq(10, -5, -2), 10)

1:10 < 5
1:10 <=5

x <- 10

x == 5

x

my_atomic_vector == 3

my_atomic_vector != 3

my_atomic_vector[ !is.na(my_atomic_vector)]

my_atomic_vector[my_atomic_vector < 20 | is.na(my_atomic_vector)]

my_atomic_vector[my_atomic_vector > 0 & my_atomic_vector < 20 & !is.na(my_atomic_vector)]

x <- c(1, 2, 3)
names(x) <- c("a", "b", "c")
x
names(x)

x <- c(a = 1, b = 2, c = 3)
x
names(x)

x <- c(a = 1, 2, c = 3)
x
names(x)

x[names(x) == "a"]
x

my_first_matrix <- matrix(1:10, ncol = 5, nrow = 2)
my_first_matrix

matrix(1:10, 5, 2)

my_first_matrix

matrix(1:10, nrow=2, ncol = 5, byrow = T)

my_first_array <- array(1:20, c(2, 2, 5))
my_first_array

length(my_atomic_vector)

length(my_first_matrix)
dim(my_first_matrix)

length(my_first_array)
dim(my_first_array)

nrow(my_first_matrix)
ncol(my_first_matrix)

my_second_matrix <- matrix(10:20, nrow = 2, ncol = 5)

rbind(my_first_matrix, my_second_matrix)
cbind(my_first_matrix, my_second_matrix)

my_third_matrix <- matrix(1:9, nrow = 3, ncol = 3)
my_third_matrix

rbind(my_first_matrix, my_third_matrix)
cbind(my_first_matrix, my_third_matrix)

my_n5_vector <- 1:5
my_n3_vector

rbind(my_first_matrix, my_n5_vector)
rbind(my_first_matrix, my_n3_vector)

my_n2_vector <- 1:2

cbind(my_third_matrix, my_n2_vector)

#######################
### Slides 9 and 10 ###
#######################


# coding challenge
# in pairs
## create the vector myFavNum of your favorite fractional number

myFavNum <- c(7/2)
## create the vector myNums of your seven favorite numbers
myNums <- c(2, 3, 3.12, 1, sqrt(2), 10/7, -5)

## create the vector of firstNames of the first two people next to you (you should ask them if you don't know)

firstNames <- c("Abbie", "Marin")

## create the vector myVec of the last name and age of someone you know

myVec <- c("Ripley", 3)

## guess and then check what types your vectors are

typeof(myFavNum)
typeof(myNums)
typeof(firstNames)
typeof(myVec)

myVec

## guess and then check the lengths of each vector
length(myFavNum)
length(myNums)
length(firstNames)
length(myVec)

## did you write the code in the console window or the editor?
## How do you execute a line of code from the editor
## how do you execute multiple lines of code from the editor?
## did you use the tab button for auto-completion?
length(myNums)


################
### Slide 13 ###
################

# Coding Challenge (cont.)
# In pairs, complete the following
## Add myFavNum to the seventh entry of myNums and store the result in a variable named myFirstAddition

myFirstAddition <- (myFavNum + myNums[7])
myFirstAddition

## Add myFavNum to each of the seven entries of myNums and store the result in a variable named mySecondAddition

(mySecondAddition <- myFavNum + myNums[1:7])

## Add myFavNum to the total of all of the values in myNums and store the result in a variable named myFirstSum

myFirstSum <- myFavNum + sum(myNums)

## Add myFavNum to the smallest number in myNums and store the result in a variable named thisIsGettingMoreComplex

(thisIsGettingMoreComplex <- myFavNum + min(myNums))
## Add the second entry of myNums to the age of the person from myVec and store the result in a variable named whatTypeOfVectorIsThis

whatTypeOfVectorIsThis <- myNums[2] + myVec[2]

myVec[2]


### Does what we did make sense? Did it work? Why?

################
### Slide 15 ###
################

# Coding Challenge
# In pairs, set-up:
my_n1_vector <- 5
my_n3_vector <- 1:3
my_n7_vector <- c(3, 7, 28, 43, 1, 5.5, 19)
my_n9_vector <- sample(1:100, 9)

## What happens if you add my_n1_vector to my_n3_vector?

my_n1_vector + my_n3_vector
## What happens if you add my_n3_vector to my_n9_vector?
my_n3_vector + my_n9_vector

## What happens if you add my_n7_vector to my_n9_vector?

my_n7_vector + my_n9_vector
## Bonus! Compare your my_n9_vector to your partners. Do they match? Why?


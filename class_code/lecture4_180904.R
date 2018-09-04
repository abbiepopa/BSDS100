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

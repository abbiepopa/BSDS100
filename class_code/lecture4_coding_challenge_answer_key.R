### Coding challenge:
## In pairs, complete the following
## Create a vector, triangle.vec, that has the first 1000 triangle numbers using the following code

# initialize the vector for memory
triangle.vec <- rep(NA, 1000)

#store the first entry 
triangle.vec[1] <- 1

#iterate to get the remaining values
for(i in 2:1000){
  triangle.vec[i] <- triangle.vec[i -1] + i
}

## What are the first 10 and last 10 entries of triangle.vec?

triangle.vec[1:10]
triangle.vec[991:1000]
head(triangle.vec, n = 10)
tail(triangle.vec, n = 10)

## Make a plot with the values of the first 100 values from triangle.vec (the y axis) versus the number 1-100 (the x axis)
plot(triangle.vec[1:100])
plot(1:100, triangle.vec[1:100])
plot(x = 1:100, y = triangle.vec[1:100])

## Make a plot with the values of the first 100 values from triangle.vec (the y axis) versus the squares of the numbers 1-100 (the x axis)

plot(x = (1:100)^2, triangle.vec[1:100])
## Comment on your two plots, what do you see?

## Using triangle.vec, make a matrix of size 10x100 whose columns, when stacked on top of one another, return the original vector, name it triangle.matrix1

(triangle.matrix1 <- matrix(triangle.vec, nrow = 10, ncol = 100))
(triangle.matrix1 <- matrix(triangle.vec, nrow = 10, ncol = 100, byrow = F))
## Using triangle.vec, make a matrix of size 10x100 whose rows, when stacked side by side will return the original vector, name it triangle.matrix2

triangle.matrix2 <- matrix(triangle.vec, nrow = 10, ncol = 100, byrow = T)

triangle.matrix2
## Using triangle.vec make an array of dimensions 5 x 20 x 10 where each 5 x 20 matrix is an array such that when it's columns are stacked on top of each other they return the original vector name it triangle.array

triangle.array <- array(triangle.vec, c(5, 20, 10))

triangle.array

## what is the sum of the 2nd column of triangle.matrix1

sum(triangle.matrix1[ , 2])

## what is the mean of the 9th row of triangle.matrix2

mean(triangle.matrix2[9, ])

## what is the entry on the 2nd row of the 18th column, of the 3rd matrix in triangle.array?

triangle.array[2, 18, 3]

my_matrix <- matrix(1:50, nrow = 10, ncol = 5)
my_matrix

my_matrix[2, 3]
my_matrix[2, c(1, 2, 5)]
my_matrix[2:8, c(1, 2, 5)]
my_matrix[ ,c(1,2,5)]
my_matrix[c(2, 5, 7), ]

my_matrix[2:5]

array_1 <- array(1:100, c(4,5,5))
array_1[2, 3, 5]
array_1[2:4, 3, 5]
array_1[ , 3, 5]

matrix(1:20, c(4,5))

my_matrix
my_matrix[, c(4, 2)]

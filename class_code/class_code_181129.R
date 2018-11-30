set.seed(42)

test_matrix <- matrix(runif(100)*rnorm(100),
                      nrow = 10, ncol = 10)
apply(test_matrix, 1, mean)
apply(test_matrix, 2, mean)

#two things that won't work
apply(test_matrix, 1, mean(na.rm = T))
apply(test_matrix, 1, mean(., na.rm = T))

test_matrix[runif(5, 1, 100)] <- NA

apply(test_matrix, 1, mean)

na_mean <- function(x){
  mean(x, na.rm = T)
}

apply(test_matrix, 1, na_mean)

apply(test_matrix, 1, function(x){mean(x, na.rm = T)})

apply(test_matrix, 1, function(x){sd(x, na.rm = T)})

#lapply

my_df <- data.frame(
  A = c(1, 10, 7, 2, 1, 6),
  B = c(6, 4, 9, 9, 10, 2),
  C = c(1, 4, 5, 3, 5, 1),
  D = c(5, -99, 4, 8 ,9, 3),
  E = c(-99, 9, 1, 6, 8, 8),
  G = c(1, 3, 4, 8, 6, 5)
)

fix99s_byCol <- function(mycol){
  mycol[mycol == -99] <- NA
  mycol
}

my_df2 <- lapply(my_df, fix99s_byCol)

str(my_df2)

my_df3 <- as.data.frame(lapply(my_df, fix99s_byCol))

my_df3

my_df4 <- my_df
my_df4[] <- lapply(my_df4, fix99s_byCol)

my_df4

big_small <- function(mycol){
  mycol[mycol < 5] <- 0
  mycol[mycol > 4] <- 10
  mycol
}

new_df <- as.data.frame(lapply(my_df, big_small))
new_df[] <- lapply(my_df, big_small)

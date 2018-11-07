movie_genre <- data.frame(
  title = c("Avatar", "Titanic", "Frozen"),
  genre = c("Sci-Fi", "Romance", "Animation")
)
movie_profit <- data.frame(
  title = c("Avatar", "Frozen", "Titanic"),
  profit_mil = c(2.787, 1.290, 2.187)
)
movie_wrong <- cbind(movie_genre, movie_profit)

movie_genre <- rbind(movie_genre,
                     data.frame(
                       title = "Skyfall",
                       genre = "Action"
                     ))
movie_wronger <- cbind(movie_genre, movie_profit)

library(dplyr)
movie_profit <- rbind(
  movie_profit,
  data.frame(title = "Skyfall",
             profit_mil = 1.108)
)

movie_correct <- full_join(movie_genre,
                           movie_profit,
                           by = "title")

movie_genre <- rbind(
  movie_genre,
  data.frame(title = "Finding Dory",
             genre = "Animation")
)
movie_profit <- rbind(movie_profit,
  data.frame(title = "Zootopia",
             profit_mil = 1.024)
)
movie_full <- full_join(movie_genre, movie_profit,
  by = "title")
movie_inner <- inner_join(movie_genre, movie_profit,
                          by = "title")
movie_left <- left_join(movie_genre, movie_profit,
                        by = "title")
movie_right <- right_join(movie_genre, movie_profit,
                          by = "title")

cust_data <- read.csv("https://github.com/abbiepopa/BSDS100/raw/master/Data/customer_table.csv")
trans_data <- read.csv("https://github.com/abbiepopa/BSDS100/raw/master/Data/transaction_table.csv")

str(cust_data)
str(trans_data)
left_join(trans_data, cust_data, by = "cust_id")
right_join(cust_data, trans_data)

set.seed(12)
d <- data.frame(
  pid = 1:10, rt = rnorm(n = 10, mean = 250, sd = 25),
  acc = sample(c(1,0), 10, replace = T))
consent_on_file <- data.frame(pid = 3:10)
known_health_condition <- data.frame(pid = c(6, 10))
d_consent <- semi_join(d, consent_on_file, by = "pid")
d_consent_healthy <- anti_join(
  d_consent, known_health_condition, by = "pid")

semi_join(cust_data, trans_data, by = "cust_id")
anti_join(cust_data, trans_data, by = "cust_id")

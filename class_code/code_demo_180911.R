my_list <- list(10:12, "abc", c(3.1415, 9), c(T, F, F, F))
my_list
str(my_list)

my_list_2 <- list(my_list, "hedgehog", 1:3)
str(my_list_2)
my_list_2

is.list(my_list)
is.list("hedgehog")

my_vec <- 1:10
is.atomic(my_vec)
is.list(my_vec)

my_list_3 <- as.list(my_vec)
is.atomic(my_list_3)
is.list(my_list_3)

my_vec_2 <- unlist(my_list_3)
is.atomic(my_vec_2)
is.list(my_vec_2)

my_list_3

max(my_list_3)
max(my_vec_2)

my_vec_3 <- c(1, 3.14, "Abbie", T)
my_vec_3

str(as.list(my_vec_3))
now_I_saved_it <- as.list(my_vec_3)
now_I_saved_it

my_matrix <- matrix(1:10, nrow = 2, ncol = 5)
unlist(my_matrix)

my_list_4 <- list(10:12, letters = "abc", c(3.1415, 9), logicals = c(T, F, F, F))
str(my_list_4)

my_list_4[[2]]

typeof(my_list_4[[2]])

my_list_4[2]
typeof(my_list_4[2])

my_list_4[[1]]
my_list_4[1]

length(my_list_4[[1]])

length(my_list_4[1])

my_list[1:2]

# don't do this
my_list[[1:2]]

my_list_4$letters

my_list_4[[3]][1]

my_list_5 <- list(matrix(1:9, nrow =3), c(T, F, T), letters = c("a", "B", "c"))

str(my_list_5)

my_list_5[[1]]

my_list_5[[1]][2, ]

my_list_5$letters

my_list_5$letters[2]

my_list_6 <- list(1:3, "abc", numbers = list("n" = 14, "m" = 13, "z" = 26))

str(my_list_6)

my_list_6$numbers$n

data("ToothGrowth")
head(ToothGrowth)

str(ToothGrowth)

zyx <- data.frame(1:3, c("a","b", "c"))

zyx

zyx <- data.frame(numbers = 1:3, letters = c("a", "b", "c"))

zyx

nmp <- data.frame(numbers = 1:5, letters = c("a", "B", "C"))
# error because columns are different lengths

str(zyx)

xyz <- data.frame(numbers = 1:3, letters = c("a", "B", "C"), stringsAsFactors = F)

xyz
zyx

str(xyz)
str(zyx)

typeof(xyz)
class(xyz)
is.data.frame(xyz)

str(my_list)

as.data.frame(my_list)

my_equal_len_list <- list (nums = 1:3, letters = c("a", "b", "c"), truth = c(T, F, F), animals = c("dog", "Cat", "mouse"))

str(my_equal_len_list)

dataframe_from_list <- as.data.frame(my_equal_len_list)

str(dataframe_from_list)

dataframe_from_list

my_equal_len_list

colnames(dataframe_from_list)

df_row_names <- data.frame(a = 1:3, b = 4:6, c = -1:-3)
row.names(df_row_names) <- c("sally", "george", "bob")
df_row_names

df_row_names_2 <- data.frame(d = -4:-6, f = 10:12)
row.names(df_row_names_2) <- c("dyson", "Fred", "sheryl")
df_row_names_2

cbind(df_row_names, df_row_names_2)

df_strings <- data.frame(logicals = c(T, F, T, F), Age = c(21, 17, 32, 81), Strings = c("my", "name", "is", "bob"), stringsAsFactors = F)

df_strings
str(df_strings)

strings_2 <- c("her", "name", "is", "kate")

typeof(strings_2)

cf_bind <- cbind(df_strings, strings_2)

cf_bind

str(cf_bind)

cf_bind_2 <- cbind(df_strings, strings_2, stringsAsFactors = F)
cf_bind_2
str(cf_bind_2)

df_strings

new_obs <- c(T, 13, "lucy")
new_obs

df_rbind_vec <- rbind(df_strings, new_obs)

df_rbind_vec

str(df_rbind_vec)

new_obs_2 <- data.frame(logicals = T, Age = 13, Strings = "lucy")

df_rbind_df <- rbind(df_strings, new_obs_2)
df_rbind_df
str(df_rbind_df)

df_rbind_df_nonames <- rbind(df_strings, 
                    data.frame(T, 13, "lucy"))

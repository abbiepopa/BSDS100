animals_in_aug <- data.frame(
              pet_names = c("Max", "fido", "spot"),
              ages = c(2, 5, 3),
              breed = c("dog", "cat", "lizard"))
animals_in_aug

animals_in_sept <- data.frame(
          pet_names = c("Chance", "Shadow", "Sassy"),
          ages = c(2, 11, 5),
          breed = c("dog", "dog", "cat"))

animals_in_sept

all_animals <- rbind(animals_in_aug, animals_in_sept)

all_animals

arrival_month <- c("aug", "aug", "aug", "sept", "sept", "sept")

all_animals <- cbind(all_animals, arrival_month)

all_animals

wont_work <- c(1,2,3,4)

cbind(all_animals, wont_work)

new_animal <- data.frame(pet_names = "Oliver", age = 3, breed = "rabbit", arrival_month = "oct")

rbind(all_animals, new_animal)

colnames(all_animals) == colnames(new_animal)

# Subsetting Dataframe

a_data_frame <- data.frame(numbers = 1:10, 
                           even_numbers = seq(2, 20, 2),
                           letters = LETTERS[1:10])

a_data_frame

str(a_data_frame)

a_data_frame$even_numbers

a_data_frame[3, 2]

a_data_frame[3, ]
a_data_frame[ , 2]

a_data_frame[3, "even_numbers"]
a_data_frame$numbers

a_data_frame[[1]]
a_data_frame[["letters"]]

is.atomic(a_data_frame[1])
is.data.frame(a_data_frame[1])
is.atomic(a_data_frame[[1]])

a_data_frame[1:2]
a_data_frame[[1:2]]

head(a_data_frame)

a_data_frame$odd_numbers <- seq(1,19,2)

a_data_frame

###############
### Tibbles ###
###############

library(tibble)
install.packages("tidyverse")

my_pets <- tibble(pet_names = c("Chance", "Shadow", "Sassy"),
                  ages = c(2, 11, 5),
                  breed = c("dog", "dog", "cat"))

my_pets
str(my_pets)

my_data_frame <- data.frame(numbers = 1:10, letters = LETTERS[1:10])

str(my_data_frame)

my_tibble <- as_tibble(my_data_frame)

my_tibble

is_tibble(my_data_frame)
is_tibble(my_tibble)

is.data.frame(my_tibble)

my_data_frame_2 <- as.data.frame(my_tibble)
my_data_frame_2

str(as.data.frame(my_pets))

# Subsetting Tibbles

my_pets$pet_names # dollar sign notation

my_pets[3, 1] # matrix notation

my_pets[[2]] # list notation -> returns contents

my_pets[2] # list notation -> returns column (as tibble)

###

colnames(my_data_frame)
colnames(my_pets)

row.names(my_data_frame)
row.names(my_pets)

dim(my_data_frame_2) # gives number of rows and columns
length(my_data_frame_2) # gives number of columns ONLY

###
data("iris")
str(iris)

iris$Spec 

colnames(iris)

iris$Sepal 

iris2 <- as_tibble(iris)

iris2

iris2$Spec 

iris$Species[1:3]

iris2$Species[1:3]


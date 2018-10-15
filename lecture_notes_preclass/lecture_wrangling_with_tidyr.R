###############
### Slide 7 ###
###############

my_df <- data.frame(
  city = c("Austin", "Georgia", "Vancouver"),
  fancy = c(35000, 43000, 106000),
  normal = c(30000, 44000, 77000)
)

my_df

###############
### Slide 9 ###
###############

library(tidyr)
library(dplyr)

tidy_df <- gather(my_df, key = light_sign, value = sales, fancy, normal)
tidy_df

# what just happened?!
?gather

# the first argument to gather is the data frame we want to transform, in this case, my_df
# next we are giving it a name for a new column that will store an indicator of sign type
# next we are giving it a name for a new column that will contain the values from the old columns
# then we tell it which columns to use in the rearrangement

################
### Slide 10 ###
################
library(ggplot2)

ggplot(tidy_df, aes(x = city, y = sales, group = light_sign, colour = light_sign)) +
  geom_line() + 
  geom_point(size = 3)

# bonus question, is there anything weird about this data representation?

################
### Slide 14 ###
################

set.seed(1979)

mobile_time <- data.frame(
  unique_id = 1:4,
  treatment = sample(rep(c("ios", "android"), each = 2)),
  work_am = runif(4, 0, 1), 
  home_am = runif(4, 0, 1),
  work_pm = runif(4, 1, 2),
  home_pm = runif(4, 1, 2)
)

mobile_time

################
### Slide 15 ###
################

#first we need to gather the data

mobile_time_tidy <- gather(mobile_time,
                           key = sample, 
                           value = time, 
                           -unique_id, -treatment)

mobile_time_tidy
head(mobile_time_tidy)

################
### Slide 16 ###
################

mobile_time_tidier <- separate(mobile_time_tidy, sample,
                               into = c("location", "time_of_day"),
                               sep = "\\_")

head(mobile_time_tidier)

################
### Slide 17 ###
################

ggplot(mobile_time_tidier, aes(group = interaction(location, time_of_day), 
                               y = time,
                               fill = interaction(location, time_of_day))) +
  geom_boxplot() + 
  facet_wrap(~treatment) + 
  theme(legend.title = element_blank())

################
### Slide 20 ###
################

# Answer to review activity
# a tibble rest_ profit, with name, `1999`, and `2000`
# gather 1999 and 2000 into year, profit

################
### Slide 21 ###
################

head(tidy_df <- gather(my_df, light_sign, sales, 
                       fancy, normal), 4)

################
### Slide 22 ###
################
(spread(tidy_df, light_sign, sales))

################
### Slide 23 ###
################
head(mobile_time_tidier)
head(unite(mobile_time_tidier, col = sample, location, time_of_day))

################
### Slide 24 ###
################

# answers to practice questions

# unite table 3 columns country and year into country_year

# spread table 3 year column so there's a rate for 1999 and a rate for 2000
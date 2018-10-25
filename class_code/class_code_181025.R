data("mtcars")

save(mtcars, file = "~/Desktop/mtcars.csv") # won't work

# correct way
write.csv(mtcars, file = "~/Desktop/mtcars_1.csv",
          row.names = F)

# txts, write.table instead of csv

my_df <- data.frame(city = c("Austin", "Georgia",
                             "Vancouver"),
                    fancy = c(35000, 43000, 106000),
                    normal = c(30000, 44000, 770000))

library(tidyr)

tidy_df <- gather(my_df, key = light_sign,
                  value = sales, fancy, normal)
dim(my_df)
dim(tidy_df)

library(ggplot2)

ggplot(tidy_df, aes(x = city, y = sales,
                    group = light_sign,
                    colour = light_sign)) + 
  geom_point(size = 3) +
  geom_line()

set.seed(1979)

mobile_time <- data.frame(unique_id = 1:4,
                          treatment = sample(rep(c("ios",
                                                   "android"),
                                                 each = 2)),
                          work_am = runif(4, 0, 1),
                          home_am = runif(4, 0, 1),
                          work_pm = runif(4, 1, 2),
                          home_pm = runif(4, 1, 2))

mobile_time_tidy <- gather(mobile_time, key = sample,
                           value = time, -unique_id,
                           -treatment)

mobile_time_tidier <- separate(mobile_time_tidy,
                               sample,
                               into = c("location", 
                                        "time_of_day"),
                               sep = "\\_")

ggplot(mobile_time_tidier, aes(
  group = interaction(location, time_of_day),
  x = interaction(location, time_of_day),
  fill = interaction(location, time_of_day),
  y = time)) + geom_boxplot() +
  facet_wrap(~treatment)

### Review Activity

library(tibble)

rest_profit <- tibble( 
  name = c("Papalote", "Nopa", "Jannah"),
  `1999` = c(745, 737, 2458),
  `2000` = c(2666, 8488, 2766))

rest_profit <- gather(rest_profit,
                      key = "year",
                      value = "profit",
                      `1999`,
                      `2000`)
rest_profit

spread(tidy_df, light_sign, sales)

unite(mobile_time_tidier, col = sample, 
      location, time_of_day, sep = "zzz")

table3

unite(table3, col = "country_year", 
      country, year)

spread(table3, year, rate)
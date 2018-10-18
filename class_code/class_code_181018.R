load("~/Dropbox/BSDS100_Development/Assignments/Case Study 1/dir/ramen.Rdata")

# Q3

length(unique(ramen[ramen$Country == "USA" | ramen$Country == "United States", "Brand"]))

# Q5

ramen_avgs <- data.frame(brands = as.character(unique(ramen$Brand)), avg_ratings = NA)

for(i in ramen_avgs$brands){
  ramen_avgs[ramen_avgs$brands == i, 
             "avg_ratings"] <- mean(ramen[ramen$Brand ==i,
                                          "Stars"],
                                    na.rm = T)
}

ramen_avgs[ramen_avgs$avg_ratings == max(ramen_avgs$avg_ratings,
                                    na.rm = F), "brands"]

ramen_avgs <- aggregate(Stars ~ Brand, data=ramen, mean)

### An unasked question
colnames(ramen_avgs)
winning_brands <- ramen_avgs[ramen_avgs$Stars == max(ramen_avgs$Stars, na.rm = F), "Brand"]

length(ramen[ramen$Brand %in% winning_brands & ramen$Top.Ten != "", "Brand"])

## Q7

length(ramen[ramen$Country == "Singapore" & ramen$Top.Ten != "", "Stars"])

length(ramen[(ramen$Country == "USA" | ramen$Country == "United States") & ramen$Top.Ten != "", "Stars"])
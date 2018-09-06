# Real World Examples, Lecture 4

# Imagine we have information about how much stocks cost stored in vectors

apple_stock <- c(75, 110, 100, 150, 230)

netflix_stock <- c(50, 100, 100, 100, 300)

groupon_stock <- c(10, 5, 3, 3, 3)

starbucks_stock <- c(40, 40, 60, 60, 60)

gm_stock <- c(40, 30, 30, 35, 40)

# Lets say I think that the stock with the smallest difference between the max value and the current value is the best to buy, I could compare max(stock) - tail(stock, n = 1) for each stock

max(apple_stock) - tail(apple_stock, n = 1)
max(netflix_stock) - tail(netflix_stock, n = 1)

# But this is annoying, because I have to do it over and over, what if I combine these into a matrix?

stock_matrix <- cbind(apple_stock, netflix_stock, groupon_stock, starbucks_stock, gm_stock)

stock_matrix

# We can quickly get the max of each stock using an apply statement, and the current value of each stock is the final row (or column depending how we bound)

apply(stock_matrix, 2, max) - stock_matrix[5, ]

# By this metric it's pretty unclear which stock we should buy, though groupon isn't looking good, maybe we should try something more sophisticated, we can look at a a plot using matplot(1:5, stock_matrix, type= "l")

row.names(stock_matrix) <- c(2013:2017)

stock_matrix

matplot(1:5, stock_matrix, type = "l")

matplot(1:5, stock_matrix, type = "l", col = c("red", "orange", "blue", "green", "purple"))

colnames(stock_matrix)
# Though now we don't know which stock is which! Let's manually set this information with col
# We know the colors are assigned to the columns in order, later we will learn how to add legends to our plots and generally make more sophisticated plots. But for now I will go buy all the Netflix Stock! (Kidding)


# Arrays

# IRL, arrays of brain activations have millions of voxels! But this takes a long time to process so won't fit in a simple demo, so we will pretend our brain only have 5 x 5 x 5 voxels

# These are functions I'm using to make fake data rather than coming up with 125 random numbers off the top of my head
data_resting <- runif(125)
data_picture_viewing <- abs(rnorm(125))

# We can store data from resting scans and data from picture-viewing scans in two 5 x 5 x 5 arrays

array_resting <- array(data_resting, c(5,5,5))

array_picture_viewing <- array(data_picture_viewing, c(5,5,5))
# Then, we can see the difference in activation by subtracting one array from the other

array_diff <- array_picture_viewing - array_resting

# This array is still pretty hard to read, we should make a new empty 5 x 5 x 5 array then mark the voxels that have high difference scores using "which" and array indexing

array_active <- array(rep(0, 125), c(5,5,5))

array_active[which(array_diff > 1)] <-1

# In reality our difference test would be something more sophisticated than > 1, but that is outside the scope of this lesson. We would also likely use neuro specific packages to mark these location on a picture of a brain.
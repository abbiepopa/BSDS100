# Note, lines that begin with a # (like this one!) are called "comments" and R skips them when running your script.

#R can work as a caculator

#example of adding two numbers

10352 + 987653

#can you divide 10352 by 987653

10352/987653

#R can also perform more advanced math
2^6 * 99

914545%%33
#(%%, or modulo, gives you the remainder from long devision, can also use %/% to get the quotient)

# Store x as 1 through 10

x <- 1:10
x

# store y as x squared

y <- x^2

#plot of y against x, with y on the y-axis

plot(y ~ x)

#plot with blue lines and points

plot(y ~ x, type = "b", col = "blue", cex = 1.5, main = "My first Plot")

#get help with a function, in this case plot

?plot

#for more graphical parameters one can peruse <https://www.statmethods.net/graphs/index.html>
#we will also be learning how to visualize data in R using the popular and powerful package ggplot2, so stay tuned!

#seeing a warning
z <- -3
sqrt(z)

#seeing an error
sqrt(a)

#note a warning still gives a result, while an error cannot

#we can remove an object from our environment

rm(x)

#or we can clear everything
rm(list = ls())

#note that while this removed all the environmental variables our console still has clutter, we can clear that as well
cat("\014")

# a few more examples
age <- c(23, 35, 31, 49, 77, 42, 50, 30, 12)
salary_in_thousands <- c(33, 105, 153, 0, 74, 99, 32, 188, 12)

mean(age)
sd(age)
var(salary_in_thousands)
cor(age, salary_in_thousands)
hist(age)
hist(salary_in_thousands)
plot(age, salary_in_thousands)

# In groups complete the following coding challenge:

# The temperature in fahrenheit is 68 degrees, assign that value to a variable named "temperature_in_fahrenheit".

temperature_in_fahrenheit <- 68

# The conversion of fahrenheit to celsius is (<temperature in fahrenheit> - 32)*5/9. Calculate the temperature in celsius and assign that value to a variable named temperature_in_celsius.

temperature_in_celsius <- (temperature_in_fahrenheit - 32)*5/9 

# What is the log base-10 of the fahrenheit temperature minus the celsius temperature?

log10(temperature_in_fahrenheit - temperature_in_celsius)

x <- 10
# x <- 32

# Practice saving the above challenge as a script (click the floppy disc icon at the top of the screen to save)

# Add a comment to your script listing your name, your group member's name(s) and the date

# Save any changes and close and re-open RStudio

# Check your working directory

getwd()

# Run ls(), what do you see?

ls()
# should say "character(0) meaning nothing, because you have not run the script yet

# Run your script, then check your working directory and run ls() again, what do you see now?

ls()

# Should output [1] "temperature_in_celsius" "temperature_in_fahrenheit" "x"

# Remove the temperature in fahrenheit variable from your workspace

rm(temperature_in_fahrenheit)

# Try to call the temperature in fahrenheit variable to print it's value, what happens?

temperature_in_fahrenheit

# Your console should display "Error: object 'temperature_in_fahrenheit' not found"

# Try to call the temperature in celsius variable to print it's value, what happens?

temperature_in_celsius

# You console should display "[1] 20"

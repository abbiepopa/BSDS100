###############
### Slide 4 ###
###############

for(i in 1:5) print("BSDS 100")

for(i in 1:5){
  print("BSDS 100")
}

###############
### Slide 5 ###
###############

for(i in 1:5){
  print(paste("i equals", i))
}

###############
### Slide 6 ###
###############

myVector <- factor(c("A", "A", "B", "C", "C", "C", "ZzZ"))

for (k in levels(myVector)) print(k)

###############
### Slide 7 ###
###############

for(animal in c("cat", "dog", "bird")){
  print(animal)
}

# show running from "print(animal)"

for(i in 1:5){
  for(word in c("hi", "bye")){
    print(paste(i, word))
  }
}

###############
### Slide 8 ###
###############

for(i in 1:5){
  print(paste("i equals", i))
  i <- 777
  print(paste("now i equals", i))
}

for(i in 1:5){
  print(paste("i equals", i))
}

i

###############
### Slide 9 ###
###############

# Write a for loop to print the even numbers 2-10

################
### Slide 10 ###
################

n <- 3

while (n > 0) {print("BSDS"); n <- n - 1}

n <- 3

while(n > 0){
  print("BSDS")
  n <- n-1
}

################
### Slide 11 ###
################

n <- 3

while(n > 0){
  print("BSDS")
}

################
### Slide 14 ###
################

x <- 7

repeat{
     print(x)
     x <- x + 2
     if (x > 10) break
}

################
### Slide 16 ###
################

# Which of the following loops are infinite?

for(i in 1:1000000) print(i)

n <- 0
while(n < 10){ 
  print(n) 
  n <- n + 1}


x <- 10 
repeat{
  print(x)
  x <- x - 2
  if(x == 1) break
  }

################
### Slide 18 ###
################

x <- 3

if (x > 0) print(paste("x is: ", x, sep = ""))

x <- -1

################
### Slide 19 ###
################

x <- 3

if(x > 0){
  print(paste("x is:", x))
}

################
### Slide 20 ###
################

x <- -3

if(x > 0) print("x is positive") else print("x is negative")

################
### Slide 21 ###
################

if(x > 0){
  print("x is positive")
} else{
  print("x is negative")
}

################
### Slide 23 ###
################

if(x > 0){
  print("x is positive")
} 
else{
  print("x is negative")
}

################
### Slide 26 ###
################

if(x > 0){
  print("x is positive")
} else if(x < 0){
  print("x is negative")
} else{
  print("x is zero")
}

################
### Slide 27 ###
################

for(i in 1:10){
  if(i%%2 == 0){
    print(paste(i, "is even"))
  } else{
    print(paste(i, "is odd"))
  }
}

################
### Slide 29 ###
################

x <- c(3, 2, 1)

if ( x > 2) {print("first element in vector > 2")}

ifelse(x > 2, ">2", "<=2")

################
### Slide 31 ###
################

grades <- c("A", "D", "F")

for (i in grades) {
  print(
    switch(i,
           "A" = "Well Done",
           "B" = "Alright",
           "C" = "C's get Degrees!",
           "D" = "Meh",
           "F" = "Uh-Oh"
    )
  )
}

switch(3,
       "A" = "Well Done",
       "B" = "Alright",
       "C" = "C's get Degrees!",
       "D" = "Meh",
       "F" = "Uh-Oh"
)

switch(T,
       "A" = "Well Done",
       "B" = "Alright",
       "C" = "C's get Degrees!",
       "D" = "Meh",
       "F" = "Uh-Oh"
)
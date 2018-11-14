for(i in 1:5) print("BSDS 100")

for(i in 1:5){
  print("BSDS 100")
}

for(i in 1:5){
  print(paste("i equals", i))
}

my_factors <- factor(c("A","A", "B", "C", "C","C", "ZzZ"))

for(k in my_factors){
  print(k)
}
for(k in levels(my_factors)){
  print(k)
}

for(i in 1:5){
  for(word in c("hi","bye")){
    print(paste(i, word))
  }
}

for(i in 1:5){
  print(paste("i equals", i))
  i <- 777
  print(paste("now i equals", i))
}

# for loop practice

for(i in seq(2, 10, 2)){
  print(i)
}

for(i in 2:10){
  if(i%%2 == 0){
    print(i)
  }
}

for(i in 1:5){
  print(i*2)
}

# while loops
n <- 3
while(n > 0){print("BSDS"); n <- n - 1}

n <- 3
while(n > 0){
  print("BSDS")
  n <- n - 1
}

n <- 3
while(n > 0){
  print("BSDS")
}

# repeat loops
x <- 7
repeat{
  print(x) 
  x <- x + 2
  if(x > 10) break
}

# infinite loop practice

for(i in 1:100000000) print(i)

n <- 0
while(n < 10){
  print(n)
  n <- n + 1
}

x <- 10
repeat{
  print(x)
  x <- x-2
  if(x==1) break
}

# if statements
x <- 3
if(x > 0) print(paste("x is", x))

x <- -1
if(x > 0) print(paste("x is", x))

if(x > 0){
  print(paste("x is", x))
}

x <- -3
if(x > 0){
  print("x is positive")
} else{
  print("x is negative")
}

# wrong, else on wrong line
if(x > 0){
  print("x is positive")
} 
else{
  print("x is negative")
}

x <- 0
if(x > 0){
  print("x is positive")
} else if (x == -3){
  
  }else if(x < 0){
  print("x is negative")
} else if(x == 0){
  print("x is zero")
}

for(i in 1:10){
  if(i%%2==0){
    print("i is even")
  } else{
    print("i is odd")
  }
}

# ifelse()

x <- c(3, 2, 1)
x
if(x > 2){print(">2")}
ifelse(x > 2, ">2", "<=2")

# switch()

grades <- c("A", "D", "F")
for(grade in grades){
  print(
    switch(grade,
           "A" = "Well Done",
           "B" = "Alright",
           "C" = "C's get degrees",
           "D" = "Meh",
           "F" = "Uh-oh")
  )
}

switch(3,
       "A" = "Well Done",
       "B" = "Alright",
       "C" = "C's get degrees",
       "D" = "Meh",
       "F" = "Uh-oh")

switch(TRUE,
       "A" = "Well Done",
       "B" = "Alright",
       "C" = "C's get degrees",
       "D" = "Meh",
       "F" = "Uh-oh")

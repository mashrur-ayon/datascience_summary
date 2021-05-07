

# And operation practice

a <- c(10, 6,7)

a < 5 & 10 > a

# OR operation practice

b <- 6

b < 7 | b >= 6

# Not operation practice

# Test on work from Datacamp
x <- 5
y <- 7
!(!(x < 4) & !!!(y > 12))


# Testing SD function. 

values <- c(1,3,6,7,NA)

standarddev <- sd(values, TRUE)

standarddev

args(sd)


# writing function 

my_fun <- function(a,b = 1)

  { 
  if (b==0){
     
    return(0)
  }  
  a*b + a/b
}

my_fun(3,0)



two_dice <- function() {
  possibilities <- 1:6
  dice1 <- sample(possibilities, size = 1)
  dice2 <- sample(possibilities, size = 1)
  dice1 + dice2
}

two_dice(2)


increment <- function(x, inc = 1) {
  x <- x + inc
  x
}
count <- 5
a <- increment(count, 2)
b <- increment(count)
count <- increment(count, 2)

library(c("data.table", "rjson"))

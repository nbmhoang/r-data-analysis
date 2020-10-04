data <- c(15, 20, 21, 20, 36, 15, 25, 15)

data
mean(data)
median(data)
sd(data)
var(data)
data()

# install.packages("")
library(tidyverse)
library(modelr)
sim1

# range(sim1)
n <- length(sim1$y)

x <- sim1$x
x
y <- sim1$y
y

r <- function(n, x, y) {
  Sx = sum(x)
  Sy = sum(y)
  top <- n*sum(x*y) - Sx*Sy
  bottom <- sqrt((n*sum(x*x) - Sx*Sx)*(n*sum(y*y) - Sy*Sy))
  r = top/bottom
  
  return(r)
}

t <- r(n, x, y)
t

# built in function
cor(x, y)
cor.test(x, y)

plot(x, y)
# y = a + bx --> a: intercept, b: gradient of the line(slop)

b <- (n*sum(x*y) - sum(x)*sum(y))/(n*sum(x*x) - sum(x)^2)
b

a = sum(y)/n - b*sum(x)/n
a

abline(a=a, b=b)

x0 <- 7
y0 <- a + b*x0
points(x0, y0, col=c(255,0,0))


lm(y~x)

# TODO
# Build a function calculate r(correlation)
# Sample -> r, y = a + bx
# Draw graph
# Draw y
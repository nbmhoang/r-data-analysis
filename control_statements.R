x <- c(8, 3, 1, 2, 3)

is_prime <- function(x) {
  if (x < 2) return(FALSE)
  for(i in seq(from=2, to=(x%/%2), by=1)) {
    if ((x %% i) == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

double <- function(x) {
  return(x*x)
}

# Shorthand
# if (any(x < 0)) print("x contains negative numbers") else print("x doesnt contain negative numbers")
ifelse(any(x < 0), "x contains negative numbers", "x doesnt contain negative numbers")

for(i in 2010:2016) {
  output <- paste("The year is", i)
  print(output)
}
x <- NULL
for(i in 2010:2020) {
  output <- paste('The year is', i)
  x <- append(x, output)
}
print(x)

counter <- 1
x <- 5
set.seed(3)
while (x >= 3 & x <= 8) {
  coin <- rbinom(1, 1, 0.5)
  if (coin == 1) {
    x <- x + 1
  } else {
    x <- x - 1
  }
  cat("On iteration", counter, ", x = ", x, '\n')
  counter <- counter + 1
  x <- x + 1
}

print(is_prime(2))

counter <- 1
x <- 5
set.seed(3)
repeat {
  if (x < 3 | x > 8) {
    break
  }
  coin <- rbinom(1, 1, 0.5)
  if (coin == 1) {
    x <- x + 1
  } else {
    x <- x - 1
  }
  cat("On iteration", counter, ", x = ", x, '\n')
  counter <- counter + 1
  x <- x + 1
}


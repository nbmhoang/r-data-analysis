x <- seq(0, 20, 1)
y <- 10 + (x-10)^3
plot(x, y, type='l')

set.seed(10)
x0 <- seq(0, 20, 0.1)
y0 <- 10 + (x0-10)^3

# Add noise 
noise <- rnorm(length(y0), mean=10, sd=80)
noisy.y <- y0 + noise
plot(x0, noisy.y, xlab = "x", ylab = "y")
lines(x0, y0, col="red", lwd=3)


model <- lm(noisy.y ~ poly(x0, 3))
# confint(model, level=.95)

y_predict <- predict(model, data.frame(x0))
lines(x0, y_predict, col="blue", lwd=3)

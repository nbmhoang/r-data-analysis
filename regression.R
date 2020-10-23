setwd("~/R-try-hard")
df = read.csv("dataset3.csv", header=TRUE)
df
sm <- df[, c("y", "x1", "x2", "x3", "x4")]
sm
attach(sm)

m1 <- lm(y~x1)
summary(m1)

m2 <- lm(y~x2)
summary(m2)

m3 <- lm(y~x3)
summary(m3)

m4 <- lm(y~x4)
summary(m4)

m5 <- lm(y~x1+x2)
summary(m5)

m6 <- lm(y~x1+x3)
summary(m6)

m7 <- lm(y~x1+x4)
summary(m7)

m8 <- lm(y~x2+x3)
summary(m8)

m9 <- lm(y~x2+x4)
summary(m9)

m10 <- lm(y~x3+x4)
summary(m10)

m11 <- lm(y~x1+x2+x3)
summary(m11)

m12 <- lm(y~x1+x2+x4)
summary(m12)

m13 <- lm(y~x1+x3+x4)
summary(m13)

m14 <- lm(y~x2+x3+x4)
summary(m14)

m15 <- lm(y~x1+x2+x3+x4)
summary(m15)

pairs(sm)

# RSS: Residual Sum of Squares
# AIC = log(RSS/n)+2k/n --> AIC min == Optimize. n: n.o sample k: n.o variable
attach(df)

model <- lm(y~x1+x2+x3+x4+x5+x6+x7, data=df)
summary(model)

model2 <- lm(y~x6)
summary(model2)

pairs(df)

# Find best model
model <- lm(y~., data=df)
step(model, direction = "both") # y~x6+x7

best_model <- lm(y~x6+x7)
summary(best_model)

# Find a large dataset(>= 10 columns and >= 1000 rows) and find the most optimize model
# Polynomial
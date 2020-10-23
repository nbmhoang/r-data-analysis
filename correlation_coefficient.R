# Use faithful dataset
df <- faithful
df
df <- df[1:20,]
df

x <- df$eruptions
y <- df$waiting
plot(x, y)

cor(x, y)

t <- lm(y~x)
plot(x, y)
abline(t)
x_predict <- data.frame(x<-c(2.5))
y_predict <- predict(t, new.df)

a <- t$coefficients[1]
b <- t$coefficients[2]

abline(a,b)
a
b
summary(t)

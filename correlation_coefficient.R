# Use faithful dataset
df <- faithful
df
df <- df[1:20,]
df

x <- df$eruptions
y <- df$waiting
plot(x, y)

cor(x, y)

lm(y~x)
a <- 32.55
b <- 11.59

abline(a,b)

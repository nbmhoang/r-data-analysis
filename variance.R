# init
a <- c(8, 9, 11, 4, 7, 8, 5)
b <- c(7, 17, 10, 14, 12, 24, 11, 22)
c <- c(28, 21, 26, 11, 24, 19)
d <- c(26, 16, 13, 12, 9, 10, 11, 17, 15)



# calculate the mean of each vector
ma <- mean(a)
ma

mb <- mean(b)
mb

mc <- mean(c)
mc

md <- mean(d)
md

average <- (sum(a) + sum(b) + sum(c) + sum(d))/(na + nb + nc + nd)
average

ssb <- na*(ma-average)^2 + nb*(mb-average)^2 + nc*(mc-average)^2 + nd*(md-average)^2
ssb

na <- length(a)
nb <- length(b)
nc <- length(c)
nd <- length(d)

max.length <- max(na, nb, nc, nd)
max.length

a1 <- c(a, rep(NA, max.length - na))
b1 <- c(b, rep(NA, max.length - nb))
c1 <- c(c, rep(NA, max.length - nc))
d1 <- c(d, rep(NA, max.length - nd))

df <- data.frame(A=a1, B=b1, C=c1, D=d1)
df
mean(df, na.rm = TRUE)

# SSW = Sum Square Within Group
ma
sswa = 0
for(i in a) {
  sswa <- sswa +  (i - ma)^2
}
sswa

sswb = 0
for(i in b) {
  sswb <- sswb +  (i - mb)^2
}
sswb

sswc = 0
for(i in c) {
  sswc <- sswc +  (i - mc)^2
}
sswc

sswd = 0
for(i in d) {
  sswd <- sswd +  (i - md)^2
}
sswd

ssw = sum(sswa, sswb, sswc, sswd)
ssw

# Mean square(MS) = Sum square(SS)/Degrees freedom
# ms_b
# ms_w
msb <- ssb/3
msb

msw <- ssw/26
msw

f <- msb/msw
f

col1 <- c(a, b, c, d)
col1

col2 <- c(rep('A', na), rep('B', nb), rep('C', nc), rep('D', nd))
col2

df2 <- data.frame(x=col1, group=col2)
df2

boxplot(df2$x~df2$group, col="yellow")

t <- aov(x~group, data=df2)
summary(t)
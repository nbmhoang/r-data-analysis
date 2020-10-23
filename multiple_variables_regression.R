df <- read.csv("https://duonghuuphuc.com/download/cs505043/does_vn07.csv", header=TRUE)
str(df)

# fnbmd(mat do xuong), age, wt, ht, gender

df <- na.omit(df)

df <- df[,c("fnbmd", "age", "wt", "ht", "gender")]

# fnbmd <- df$fnbmd
# age <- df$age
# weight <- df$wt
# height <- df$ht
# gender <- df$gender
dim(df)

attach(df)
# fnbmd ~ wt/ht/age/age+wt/age+ht/age+wt+ht
par(mfrow = c(2, 2))

m1 <- lm(fnbmd~wt)
plot(wt, fnbmd)
abline(m1, col="green")

m2 <- lm(fnbmd~ht)
plot(ht, fnbmd)
abline(m2, col="green")

m3 <- lm(fnbmd~age)
plot(age, fnbmd)
abline(m3, col="green")

m4 <- lm(fnbmd~age+ht)
plot(age+ht, fnbmd)
abline(m4)
# Pr should be < 0.05
summary(m4)

# Age + weight -> FNBMD?
# Age depending on weight?
# Ratio

# y = a + b*weight + c*age + e

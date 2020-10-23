getwd()

df = read.csv('Downloads/archive/CarPrice_Assignment.csv', header=TRUE)
df
str(df)
sm <- df[, c("fueltype", "aspiration", "doornumber", "wheelbase", "carlength", "carwidth", "carheight", "enginesize", "horsepower", "citympg", "highwaympg", "price")]
sm
attach(sm)

model <- lm(price~., data=sm)
step(model, direction = "both")

best_model <- lm(price~fueltype+aspiration+carwidth+carheight+enginesize+horsepower)
summary(best_model)

x_predict <- data.frame(fueltype<-c("diesel"), aspiration<-c("std"), carwidth<-c(64), carheight<-c(51), enginesize<-c(120), horsepower<-c(150))
predict(best_model, x_predict)

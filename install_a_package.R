install.packages("dplyr")

# getwd()
# setwd()
# Load the tidyverse & dplyr package 
setwd("~/R-try-hard/")
getwd()
# install.packages("dplyr")

# Reading data frame iris

df <- iris
dim(df)
# View column  name
names(df)
# View data type
str(df)
# View all datas
View(df)
# Edit data
edit(df)
head(df, n = 10)
# df[, -n] --> Ignore n-th column
# df[, c(1, 3)] --> First and third column of all rows
ndf <- df[,-1]
ndf
df[seq(1,150, 2),]
# new <- na.omit(df) --> Remove invalid data(NA)

table(df$Species)
# Group data
# First method
aggregate(df$Sepal.Length, by=list(df$Species), FUN=max)
# Second method
library(dplyr)

df %>% group_by(Species) %>% summarise(Sepal.Length = n())
# Calculate min, max, mean, sum of every group
aggregate(df$Sepal.Length, by=list(df$Species), FUN=min)
aggregate(df$Sepal.Length, by=list(df$Species), FUN=max)
aggregate(df$Sepal.Length, by=list(df$Species), FUN=sum)
aggregate(df$Sepal.Length, by=list(df$Species), FUN=mean)

# Sort by column

attach(df) # Attach a list

t <- order(Sepal.Length)
str(t)

order_length = df[order(df$Sepal.Length),] # Ascending
order_length = df[order(-df$Sepal.Length),] # Descending
order_length

# Sort by multiple column
x <- order(Sepal.Length, Sepal.Width)
x

summarise(df, SpLength=mean(Sepal.Length), SpWidth=median(Sepal.Width))

## ---------------------------
##
## Author: Nguyen Bao Minh Hoang
##
## Date Created: 11/09/2020

getwd() # Get current working directory

URL = 'https://raw.githubusercontent.com/guru99-edu/R-Programming/master/computers.csv'

df <- read.csv(URL) # Read csv from url
# Get rows & columns count
dim(df) # 6259 11
# Get rows count
nrow(df) # 6259
# Get column count
ncol(df) # 11

# View data
View(df)
# Edit data
edit(df)
# View column name & datatype
str(df)

t <- colnames(df)[apply(df, 2, anyNA)]
t # character(0) --> Dataset doesn't contain NA value

# Remove duplicated data on rows
t1 <- unique(df)
dim(t1) # Still 6259 rows & 11 columns

# Remove duplicated data on price column
t2 <- distinct(df, price, .keep_all = TRUE)
t2 # 808 rows

# Filter data
library(dplyr)
# Get all computers that have cd slot
result <- df %>% filter(cd == "yes")
result # 2908 rows

# Get all computers that have larger or equal than 16GB ram
result2 <- df %>% filter(ram >= 16)
result2 # 12191 rows

# Get all computers that have 16GB ram and price less than 2500
result3 <- df %>% filter(ram == 16 & price < 2500)
result3 # 199 rows

# Get all computers that have hd equal 340 or screen equal 15
result4 <- df %>% filter(hd == 340 | screen == 15)
result4 # 2432 rows

# Get all computers that have max speed
max_speed = max(df$speed) # 100
result5 <- df %>% filter(speed == max_speed)
result5 # 426 rows

# Get all computers have range price from 1000 to 1200
result6 <- df %>% filter(between(price, 1000, 1200))
result6 # 58 rows
setwd("~/R-try-hard")
getwd()
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/test.csv"
df <- read.csv(PATH, sep=",") # Read data from url
# Common method
dim(df) # Get columns & rows count: 418 11
ncol(df) # 418
nrow(df) # 11
names(df) # Get columns/variables name
str(df) # Get data type
sapply(df, class) # Get column name and data type

edit(df) # Edit data
View(df)

# Cast a column to factor
df$Pclass <- as.factor(df$Pclass)
str(df) # Recheck
nlevels(df$Pclass) # Get total levels of a factor variable

# Extract data
df[,] # All rows and columns

rd <- df[sample(nrow(df), 3), ] # Get 3 rows randomly
rd

sm <- df[, c(1,2,4,5,10,11)]
sm

t1 <- sm[sample(nrow(sm), 5),]
t1

# Filter data
library(dplyr)
str(sm)

or_result <- sm %>% filter(Pclass =="1" | Age >=40)
or_result

and_result <- sm %>% filter(Pclass == "3" & Sex == "female" & Age >= 40)
and_result

# TODO
# Filter Pclass 2 and Sex = Female
sm %>% filter(Pclass == "2" & Sex == "female")

# Filter Pclass 3 and Sex = male
sm %>% filter(Pclass == "3" & Sex == "male")

# Filter Pclass 1 or 2 and Sex = male

# Filter Pclass 1 and Sex = female and Age > 50

# Concat two datasets horizontally and vertically
# df: Original data
# d1: 5 rows from df(randomly)
d1 <- df[sample(nrow(df), 5),]
d1

# Concat df & d1(vertically) --> dfd1(Use rbind method)
dfd1 <- rbind(df, d1)
dim(dfd1)

# d2: Get and assign 10th <- news1, 11th <- news2
d2 <- df[, c(10,11)]
colnames(d2) <- c("news1", "news2")
d2

# Concat df & d2(horizontally) --> Use cbind method
dfd2 <- cbind(df, d2)
dfd2

# Note
s <- data.frame(x=1:5, math=c(2,3,4,9,8))
s

s2 <- data.frame(x=3:10, science=c(2,3,4,5,3,7,8,5))
s2
cbind(s, s2) # Error --> Two data frames must have same rows

ss <- merge(s, s2)
merge(s, s2, by="x", all.x=TRUE)
merge(s, s2, by="x", all.y=TRUE)
ss <- merge(s, s2, by="x", all.x=TRUE, all.y=TRUE) # x, y here meaning the data frame

# Pre-processing data on ss
# Replace NA value in Math column by mean
ss$math[is.na(ss$math)] <- mean(ss$math, na.rm = TRUE)
ss

# Replace NA value in Science column by median
ss$science[is.na(ss$science)] <- median(ss$science, na.rm = TRUE)
ss



# Get 3 rows from ss randomly
temp <- ss[sample(nrow(ss), 3),]
temp
# Concat ss1 to ss
sss <- rbind(ss, temp)
sss

# Remove duplicated data --> Use unique or duplicated
t1 <- unique(sss)
t1

t2 <- sss[!duplicated(sss), ]
t2

t3 <- distinct(sss) # Use dplyr lib
t3

# Create a new dataset like ss have two row contain duplicated math and science value --> Cocat to ss
r <- data.frame(x=11:12, math=c(3.0, 4.5), science=c(8.5, 7.0))
dd <- rbind(ss, r)
dd

# Remove duplicated data on a specified column
t4 <- distinct(dd, science, .keep_all = TRUE)
t4

t5 <- dd %>% distinct(math, .keep_all = TRUE)
t5

# Check missing value
# Get all column contain NA value
list_na <- colnames(ss)[apply(ss, 2, anyNA)]
list_na

# Find a dataframe(csv/txt/xls/xlsx) from the Internet --> Use R to read dataset
# Check dataframe
# Count missing/error data --> Remove or replace
# Filter data
# --> Submit on Elearning
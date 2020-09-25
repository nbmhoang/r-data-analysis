v1 <- c(2,4,6,1,3,5)
v2 <- c(1:100)

# rm(list = ls())
l <- list(1,2,3)
l <- list(c(1, 2, 3))

list_data <- list(c("A", "B", "C"), matrix(c(4, 7, 8, 10, 5, 9), nrow=2), list("Math", "Physic", "Chemistry"))
# list_data
names(list_data) <- c("Student", "Marks", "Course")
print(list_data[2])
print(list_data["Student"])
print(list_data$Marks)
list_data[5] <- "Ahihi"
print(list_data)
names(list_data)

# Delete a variable
rm(list_data)
# Delete all variables
rm(list = ls())
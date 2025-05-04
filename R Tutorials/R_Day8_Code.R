
# =============================
#         R Day 8 Code
#  Data Structures, Graphics,
#     and Basic Statistics
# =============================

# --------- Data Structures ---------

# Vectors
vec <- c(10, 20, 30, 40)
print(vec)

# Lists
my_list <- list(Name="John", Age=25, Scores=c(80, 90, 100))
print(my_list)

# Matrices
my_matrix <- matrix(1:9, nrow=3, ncol=3)
print(my_matrix)

# Arrays
my_array <- array(1:8, dim = c(2, 2, 2))
print(my_array)

# Data Frames
df <- data.frame(Name=c("Alice", "Bob"), Age=c(25, 30), Score=c(85, 90))
print(df)

# Factors
gender <- factor(c("Male", "Female", "Female", "Male"))
print(gender)

# --------- Graphics ---------

# Plot
x <- c(1, 2, 3, 4)
y <- c(3, 5, 2, 8)
plot(x, y, type="p", col="blue", main="Simple Plot", xlab="X", ylab="Y")

# Line Graph
plot(x, y, type="l", col="green", main="Line Graph", xlab="X-axis", ylab="Y-axis")

# Scatterplot
plot(x, y, main="Scatterplot", xlab="X values", ylab="Y values", pch=19, col="red")

# Pie Chart
slices <- c(10, 20, 30, 40)
labels <- c("Math", "Science", "English", "Art")
pie(slices, labels = labels, main="Subject Distribution")

# Bar Plot
barplot(slices, names.arg=labels, col="skyblue", main="Subject Scores")

# --------- Statistics ---------

# Max and Min
nums <- c(10, 40, 20, 90, 60)
print(max(nums))
print(min(nums))

# Mean
print(mean(nums))

# Median
print(median(nums))

# Mode (custom function)
get_mode <- function(v) {
  uniq_vals <- unique(v)
  uniq_vals[which.max(tabulate(match(v, uniq_vals)))]
}
nums <- c(2, 4, 4, 6, 6, 6, 8)
print(get_mode(nums))

# Percentiles
print(quantile(nums, probs = c(0.25, 0.5, 0.75)))

# Extended Variable Operations & Data Types
# -----------------------------------------
a <- 5.7
b <- as.integer(a)
message <- paste("Integer value of a:", b)
print(message)

val1 <- TRUE
val2 <- FALSE
print(val1 & val2)
print(val1 | val2)
print(!val1)


# Advanced If...Else & Nested If
# -------------------------------
score <- 85
if (score >= 90) {
  print("Grade A")
} else if (score >= 75) {
  print("Grade B")
} else if (score >= 60) {
  print("Grade C")
} else {
  print("Fail")
}

# Enhanced For Loop: Working with Vectors
# ---------------------------------------
names <- c("Alice", "Bob", "Charlie")
scores <- c(90, 82, 76)
for (i in 1:length(names)) {
  cat(names[i], "scored", scores[i], "\n")
}
# Nested Loop: Multiplication Table
# ----------------------------------
for (i in 1:5) {
  for (j in 1:5) {
    cat(i, "*", j, "=", i*j, "\t")
  }
  cat("\n")
}

# While Loop: User Input Simulation
# ---------------------------------
num <- 0
while (num <= 0) {
  num <- as.integer(readline(prompt = "Enter a positive number: "))
}
cat("You entered:", num, "\n")

# Function with Default Parameters
# --------------------------------
greet <- function(name = "Guest") {
  cat("Hello,", name, "!\n")
}
greet("Dinesh")
greet()

# Function Returning Multiple Values (List)
# -----------------------------------------
calculate_stats <- function(vec) {
  return(list(
    mean = mean(vec),
    sd = sd(vec),
    max = max(vec),
    min = min(vec)
  ))
}
result <- calculate_stats(c(10, 20, 30, 40, 50))
print(result)

# Recursive Function: Fibonacci Series
# ------------------------------------
fibonacci <- function(n) {
  if (n <= 1) return(n)
  return(fibonacci(n - 1) + fibonacci(n - 2))
}
for (i in 0:10) {
  cat(fibonacci(i), " ")
}
cat("\n")

# Global vs Local Variables
# --------------------------
x <- 5
changeX <- function() {
  x <- 10
  cat("Inside function:", x, "\n")
}
changeX()
cat("Outside function:", x, "\n")

# Get user input

cat("Enter numbers separated by spaces: ")
input <- readLines(con = "stdin", n = 1)
# numbers <- as.numeric(unlist(strsplit(input, " ")[[1]]))
numbers <- as.numeric(strsplit(input, " ")[[1]])
print(numbers)

# Perform numerical operations
max_val <- max(numbers)
min_val <- min(numbers)
avg_val <- mean(numbers)
sum_val <- sum(numbers)
sqrt_val <- sqrt(numbers)
round_val <- round(numbers)

# Print results
cat("Max:", max_val, "\n")
cat("Min:", min_val, "\n")
cat("Avg:", avg_val, "\n")
cat("Sum:", sum_val, "\n")
cat("Sqrt:", sqrt_val, "\n")
cat("Round:", round_val, "\n")

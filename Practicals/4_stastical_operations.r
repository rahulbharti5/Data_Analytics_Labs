# Get user input
cat("Enter numbers separated by spaces: ")
numbers <- as.numeric(unlist(strsplit(readLines(con = "stdin", n = 1), " ")[[1]]))

# Perform statistical operations
mean_val <- mean(numbers)
median_val <- median(numbers)
mode_val <- as.numeric(names(sort(table(numbers), decreasing = TRUE)[1]))
std_dev <- sd(numbers)

# Print results
cat("Mean:", mean_val, "\n")
cat("Median:", median_val, "\n")
cat("Mode:", mode_val, "\n")
cat("Standard Deviation:", std_dev, "\n")

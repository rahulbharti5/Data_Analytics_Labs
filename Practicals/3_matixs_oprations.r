# Get user input for matrix
cat("Enter matrix size (rows cols): ")
matrix_size <- as.numeric(strsplit(readLines(con = "stdin", n = 1), " ")[[1]])

# Ensure the matrix size input is numeric and contains two values
if (length(matrix_size) != 2 || any(is.na(matrix_size))) {
  stop("Invalid matrix size input. Please enter two numeric values separated by a space.")
}

cat("Enter matrix elements separated by spaces: ")
matrix_input <- as.numeric(strsplit(readLines(con = "stdin", n = 1), " ")[[1]])
3
# Ensure the number of matrix elements matches the specified matrix size
if (length(matrix_input) != prod(matrix_size) || any(is.na(matrix_input))) {
  stop("Invalid number of matrix elements or non-numeric input.")
}

matrix_a <- matrix(matrix_input, nrow = matrix_size[1], ncol = matrix_size[2], byrow = TRUE)
# Define another matrix for operations
matrix_b <- matrix(rnorm(matrix_size[1] * matrix_size[2]), nrow = matrix_size[1], ncol = matrix_size[2])

# Perform matrix operations
matrix_add <- matrix_a + matrix_b
matrix_sub <- matrix_a - matrix_b
matrix_mul <- matrix_a %*% matrix_b
matrix_inv <- solve(matrix_a)
matrix_trans <- t(matrix_a)
matrix_div <- matrix_a / matrix_b

# Print results
cat("Matrix Addition:\n", matrix_add, "\n")
cat("Matrix Subtraction:\n", matrix_sub, "\n")
cat("Matrix Multiplication:\n", matrix_mul, "\n")
cat("Matrix Inverse:\n", matrix_inv, "\n")
cat("Matrix Transpose:\n", matrix_trans, "\n")
cat("Matrix Division:\n", matrix_div, "\n")

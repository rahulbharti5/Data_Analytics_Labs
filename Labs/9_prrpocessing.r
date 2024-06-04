# Load necessary library
if (!requireNamespace("caret", quietly = TRUE)) {
  install.packages("caret")
}
library(caret)

# Create a sample data frame for demonstration
set.seed(123)
data <- data.frame(
  Feature1 = rnorm(100, mean = 50, sd = 10),
  Feature2 = rnorm(100, mean = 30, sd = 5)
)
print("Original Data:")
print(head(data))

# a) Transform Methods - Scale

# Scale the data (dividing by the standard deviation)
scaled_data <- scale(data)
print("Scaled Data:")
print(head(scaled_data))

# b) Transform Methods - Center

# Center the data (subtracting the mean)
centered_data <- scale(data, scale = FALSE)
print("Centered Data:")
print(head(centered_data))

# c) Transform Methods - Standardize

# Standardize the data (center and scale)
standardized_data <- scale(data)
print("Standardized Data:")
print(head(standardized_data))

# d) Transform Methods - Normalize

# Normalize the data (range [0, 1])
normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}
normalized_data <- as.data.frame(lapply(data, normalize))
print("Normalized Data:")
print(head(normalized_data))

# e) Transform Methods - Box-Cox Transform

# Box-Cox transformation requires positive data
# Adjust the data to be positive by adding a constant
data_positive <- data + abs(min(data)) + 1

# Apply Box-Cox transformation using caret package
boxcox_trans <- preProcess(data_positive, method = "BoxCox")
boxcox_data <- predict(boxcox_trans, data_positive)
print("Box-Cox Transformed Data:")
print(head(boxcox_data))

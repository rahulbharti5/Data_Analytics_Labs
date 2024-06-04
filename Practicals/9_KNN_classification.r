library(class)
library(readr)
library(ggplot2)

# Load data
data <- read_csv("./Practicals/data/data_knn.csv")

# Split data into training and test sets
set.seed(123)
train_indices <- sample(1:nrow(data), size = 0.7 * nrow(data))
train_data <- data[train_indices, ]
test_data <- data[-train_indices, ]

# Extract features and class labels
train_features <- train_data[, c("x1", "x2")]
train_class <- train_data$class
test_features <- test_data[, c("x1", "x2")]

# Perform KNN classification
knn_result <- knn(train_features, test_features, train_class, k = 3)

cat(knn_result)
# Plot results
# ggplot(test_data, aes(x = x1, y = x2, color = knn_result)) +
#   geom_point() +
#   labs(title = "KNN Classification")

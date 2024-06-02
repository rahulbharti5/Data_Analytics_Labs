library(datasets)
library(ggplot2)

# Load Iris data set
data(iris)

# Perform K-Means clustering
set.seed(123)
kmeans_result <- kmeans(iris[, 1:4], centers = 3)

# Visualize clusters
iris$cluster <- as.factor(kmeans_result$cluster)
p <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = cluster)) +
  geom_point() +
  labs(title = "K-Means Clustering of Iris Data")

# Save plot as an image file
ggsave("./Practicals/kmeans_clusters.png", plot = p)

cat("Plot saved as kmeans_clusters.png")

  labs(title = "K-Means Clustering of Iris Data")

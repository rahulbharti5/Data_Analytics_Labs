library(readr)
library(caret)

# Load data
houses <- read_csv("./Practicals/data/house_price.csv")

# Perform PCA
preProcess_houses <- preProcess(houses, method = "pca", pcaComp = 2)
houses_pca <- predict(preProcess_houses, houses)

# Print PCA results
print(houses_pca)

#
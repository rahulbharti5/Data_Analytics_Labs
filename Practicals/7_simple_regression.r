library(readr)

# Load data
data <- read_csv("./Practicals/data/simple_regression.csv")

# Perform linear regression
model <- lm(y ~ x, data = data)

# Print model summary
summary(model)

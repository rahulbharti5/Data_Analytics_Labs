# Load necessary library
library(readr)

# Load data from CSV file
data <- read_csv("./Practicals/data/simple_regression.csv")

# Perform simple linear regression
# Response variable: y
# Predictor variable: x
simple_model <- lm(formula = y ~ x, data = data)

# Print summary of the simple linear regression model
summary(simple_model)

predicted_value = predict(simple_model,data.frame(x = 4))
cat(predicted_value)

# # Perform multiple linear regression
# # Response variable: y
# # Predictor variables: x1, x2, x3 (add more if needed)
# multiple_model <- lm(y ~ x1 + x2 + x3, data = data)

# # Print summary of the multiple linear regression model
# summary(multiple_model)

# # Predict using a single new data point for simple regression
# new_data_simple <- data.frame(x = 5)  # Replace with your new single data point
# simple_prediction <- predict(simple_model, new_data_simple)
# print(simple_prediction)

# # Predict using new data for multiple regression
# new_data_multiple <- data.frame(x1 = 5, x2 = 2, x3 = 1)  # Replace with your new data point
# multiple_prediction <- predict(multiple_model, new_data_multiple)
# print(multiple_prediction)

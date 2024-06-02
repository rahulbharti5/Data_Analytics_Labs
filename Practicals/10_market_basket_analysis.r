# Load required libraries
library(arules)

# Load the dataset
# transactions <- read.transactions("OnlineRetail.csv", format = "basket", sep = ",")
transactions <- read.transactions("./Practicals/data/market.csv", format = "basket", sep = ",")

# Perform Apriori algorithm
rules <- apriori(transactions, parameter = list(support = 0.01, confidence = 0.5))

# Print rules
inspect(rules)

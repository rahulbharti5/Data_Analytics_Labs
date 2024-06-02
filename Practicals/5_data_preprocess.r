
library(readr)
library(dplyr)

# Load data
df <- read_csv("./Practicals/data/preprocess.csv")

# Handling Missing Data
df_clean <- df %>%
  mutate_all(~ ifelse(is.na(.), mean(., na.rm = TRUE), .))

# Min-Max Normalization
normalize <- function(x) {
  return((x - min(x)) / (max(x) - min(x)))
}

df_normalized <- df %>%
  mutate(across(everything(), normalize))

# Print results
print(df_clean)
print(df_normalized)

# Save data
write_csv(df_clean, "./Practicals/data/preprocess_clean.csv")

# a) Create empty DataFrame with only column names in R
#######################################################
# Create an empty data frame with specified column names
empty_df <- data.frame(col1 = character(), col2 = numeric(), col3 = logical(), stringsAsFactors = FALSE)
print("Empty DataFrame:")
print(empty_df)


# b) How to create a DataFrame from given vectors in R
######################################################
# Create vectors
vector1 <- c(1, 2, 3)
vector2 <- c("A", "B", "C")
vector3 <- c(TRUE, FALSE, TRUE)

# Create a data frame from vectors
df <- data.frame(Column1 = vector1, Column2 = vector2, Column3 = vector3, stringsAsFactors = FALSE)
print("DataFrame from vectors:")
print(df)



# c) Find columns and rows with NA in R DataFrame
##################################################
# Create a sample data frame with NAs
df_with_na <- data.frame(a = c(1, 2, NA), b = c(NA, 4, 5), c = c(6, NA, 8))

# Find rows with NAs
rows_with_na <- which(apply(df_with_na, 1, anyNA))
print("Rows with NA:")
print(rows_with_na)

# Find columns with NAs
cols_with_na <- which(apply(df_with_na, 2, anyNA))
print("Columns with NA:")
print(cols_with_na)


# d) How to add column to dataframe in R
##########################################
# Add a new column
df$new_column <- c("X", "Y", "Z")
print("DataFrame after adding new column:")
print(df)

# e) How To Merge Two DataFrames in R
######################################
# Create two data frames
df1 <- data.frame(ID = c(1, 2, 3), Name = c("John", "Jane", "Doe"))
df2 <- data.frame(ID = c(2, 3, 4), Age = c(25, 30, 22))

# Merge data frames
merged_df <- merge(df1, df2, by = "ID", all = TRUE)
print("Merged DataFrame:")
print(merged_df)

# f) How to remove empty rows from R dataframe
###############################################
# Create a data frame with empty rows
df_with_empty_rows <- data.frame(a = c(1, 2, NA), b = c(NA, 4, 5), c = c(6, NA, 8))

# Remove rows where all elements are NA
cleaned_df <- df_with_empty_rows[rowSums(is.na(df_with_empty_rows)) != ncol(df_with_empty_rows), ]
print("DataFrame after removing empty rows:")
print(cleaned_df)


# g) How to select row with maximum value in each group in R
############################################################
# Create a data frame with groups
df_with_groups <- data.frame(Group = c('A', 'A', 'B', 'B'), Value = c(10, 20, 15, 25))

# Select row with maximum value in each group
library(dplyr)
max_value_per_group <- df_with_groups %>% group_by(Group) %>% filter(Value == max(Value))
print("Rows with maximum value in each group:")
print(max_value_per_group)



# h) Insert multiple rows in R DataFrame
#########################################
# Create an initial data frame
df <- data.frame(ID = 1:3, Value = c("A", "B", "C"))

# Create a data frame with new rows
new_rows <- data.frame(ID = 4:5, Value = c("D", "E"))

# Append new rows to the data frame
df <- rbind(df, new_rows)
print("DataFrame after inserting multiple rows:")
print(df)



# i) Remove rows with NA in one column of R DataFrame
######################################################
# Create a data frame with NAs in one column
df_with_na <- data.frame(a = c(1, NA, 3), b = c(4, 5, NA))

# Remove rows with NA in column 'a'
df_no_na <- df_with_na[!is.na(df_with_na$a), ]
print("DataFrame after removing rows with NA in column 'a':")
print(df_no_na)



# j) Sort DataFrame by column name in R
########################################
# Create a sample data frame
df_to_sort <- data.frame(ID = c(3, 1, 2), Value = c("C", "A", "B"))

# Sort data frame by column 'ID'
sorted_df <- df_to_sort[order(df_to_sort$ID), ]
print("Sorted DataFrame by column 'ID':")
print(sorted_df)

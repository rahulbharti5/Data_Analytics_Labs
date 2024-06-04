# a) How to create an empty vector in R
########################################
empty_vector <- vector()
empty_vecotr1 <-  c()
# Alternatively, you can specify the type
empty_numeric_vector <- numeric()
empty_character_vector <- character()
empty_logical_vector <- logical()


# b) Create empty vector and append values
########################################
# Create an empty numeric vector
my_vector <- numeric()
# Append values to the vector
my_vector <- c(my_vector, 1)
my_vector <- c(my_vector, 2, 3)
my_vector <- c(my_vector, 4:6)

print("Vector after appending values:")
print(my_vector)


# c) Count the specific value in a given vector in R
####################################################
specific_value <- 2
count <- sum(my_vector == specific_value)
print(paste("Count of specific value (", specific_value, "):", count))


# d) Count number of vector values in range with R
##################################################
lower_bound <- 4
upper_bound <- 8
count_in_range <- sum(my_vector >= lower_bound & my_vector <= upper_bound)
print(paste("Count of values in range [", lower_bound, ", ", upper_bound, "]:", count_in_range))



# e) Access the last value of a given vector in R
#################################################
last_value <- my_vector[length(my_vector)]
print(paste("Last value of the vector:", last_value))



# f) Find the product of vector elements in R
##############################################
product <- prod(my_vector)
print(paste("Product of vector elements:", product))

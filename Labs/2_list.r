# R Programming Language - List

# a). How to Create Empty List in R
# b). How to Combine Lists in R
# c). How to Append Values to List in R
# d). How to Subset Lists in R
# e). Select Random Element from List in R





# a) How to Create Empty List in R
###################################
# Create an empty list
empty_list <- list()



# b) How to Combine Lists in R
###############################
# Create two lists
list1 <- list(a = 1, b = 2)
list2 <- list(c = 3, d = 4)

# Combine lists
combined_list <- c(list1, list2)
print("Combined list:")
print(combined_list)


# c) How to Append Values to List in R
######################################
# Create an initial list
my_list <- list(a = 1, b = 2)

# Append values to the list
my_list$c <- 3
my_list <- append(my_list, list(d = 4))
print("List after appending values:")
print(my_list)



# d) How to Subset Lists in R
##############################
# Create a list
my_list <- list(a = 1, b = 2, c = 3, d = 4)

# Subset by index
subset1 <- my_list[1:2]  # returns a list
print("Subset by index (1:2):")
print(subset1)

# Subset by name
subset2 <- my_list[c("a", "c")]
print("Subset by name ('a', 'c'):")
print(subset2)



# e) Select Random Element from List in R
##########################################
# Create a list
my_list <- list(a = 1, b = 2, c = 3, d = 4)

# Select a random element
random_element <- my_list[[sample(length(my_list), 1)]]
print("Random element from list:")
print(random_element)

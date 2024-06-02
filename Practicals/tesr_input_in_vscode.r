# tesr.r
cat("Enter numbers separated by spaces: ")
input <- readLines(con = "stdin", n = 1)
numbers <- as.numeric(unlist(strsplit(input, " ")))
print(numbers)

sample_matrix <- matrix(c(1:10), ncol = 10, nrow = 3)
print("Sample Matrix")
print(sample_matrix)

print(sample_matrix[1,])

# Apply applies the operations to the entire matrix

result <- apply(sample_matrix, 1, sum) # 1 = Row Operations

print(result)

result <- apply(sample_matrix, 2, sum) # 2 = Column Operations

print(result)

# lApply applies the operations only to a single row or column of the matrix

names <- c("Sam", "John", "Joanna")

result <- lapply(names, toupper)

print(result)

# sapply applies for subset of Matrix

sample_data <- data.frame(x = c(1,2,3,4,5,6),
                          y = c(7,8,9,10,11,12))

print(sample_data)

max <- sapply(sample_data, max)

print(max)

sum <- sapply(sample_data, sum)
print(sum)

string_value <- "lorem ipsum dolor sit amet, consectetur adip euismod, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"

print(typeof(string_value))

print(nchar(string_value))

string_value <- "Hello World"

grepl("H", string_value)

string_value <- "Hello"
string_value2 <- "World"

print(paste(string_value, string_value2))
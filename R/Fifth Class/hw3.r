library(expm)

# Q2: Create empty vector and append values

vector <- c()

num_of_values <- readline(prompt = "Number of values for Vector: ")
num_of_values <- as.integer(num_of_values)

for (i in 1:num_of_values) {
    value <- readline(prompt = "Enter value: ")
    value <- as.integer(value)
    
    vector[i] <- value
}

print(vector)

# Q3: Find the Sum, Mean and Product of a Vector in R

vector <- c()

num_of_values <- readline(prompt = "Number of values for Vector: ")
num_of_values <- as.integer(num_of_values)

for (i in 1:num_of_values) {
    value <- readline(prompt = "Enter value: ")
    value <- as.integer(value)
    
    vector[i] <- value
}

message("Sum of Vectors: ", sum(vector))
message("Mean of Vectors: ", mean(vector))
message("Product of Vectors: ", prod(vector))
message("Number of Values in the Vector: ", length(vector))

# Q6: Count the specific value in a given vector in R

vector <- c(1, 2, 3, 4, 5, 5, 6, 6, 3, 2, 4, 6, 1, 2, 4, 7)

value <- readline(prompt = "Enter the value to be counted: ")
value <- as.integer(value)

count <- 0

for (i in 1:length(vector)) {
    if (vector[i] == value) {
        count <- count + 1
    }
}

print(count)
message("Last value of Vector is ", vector[length(vector)])

# Q8: Find the elements of a vector that are not in another vector in R

vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c(4, 5, 6, 7, 8)

vector_not_common <- c()
index <- 1
boolean <- 0

for (a in 1:length(vector1)) {
    for (b in 1:length(vector2)) {
        if (vector1[a] != vector2[b]) {
            boolean <- 0
        } else {
            boolean <- 1
            break
        }
    }

    if (boolean == 0) {
        vector_not_common[index] <- vector1[a]
        index <- index + 1
    }
}

for (a in 1:length(vector2)) {
    for (b in 1:length(vector1)) {
        if (vector2[a] != vector1[b]) {
            boolean <- 0
        } else {
            boolean <- 1
            break
        }
    }

    if (boolean == 0) {
        vector_not_common[index] <- vector2[a]
        index <- index + 1
    }
}

print(vector_not_common)

# Q9: Find the Nth highest value of a vector in R

vector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

n <- readline(prompt = "Enter the Nth highest value: ")
n <- as.integer(n)

index_of_highest_value <- 1
highest_value <- vector[1]
nth_highest_value <- vector[1]

for (a in 1:n) {
    for(i in 1:length(vector)) {
        if (vector[i] > highest_value) {
            index_of_highest_value <- i
        }
    }

    nth_highest_value <- vector[index_of_highest_value]
    vector <- vector[!vector == vector[index_of_highest_value]]
}

print(nth_highest_value)

# Q11: Extract every Nth element of a vector in R

vector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

n <- readline(prompt = "Enter the Nth value to extract: ")
n <- as.integer(n)

temp_vector <- c(vector[n])

index <- n + n

while(index <= length(vector)) {
    temp_vector <- c(temp_vector, vector[index])
    index <- index + n
}

print(temp_vector)

# Q12: R Program to Concatenate a Vector of Strings

vector1 <- c("Hello")
vector2 <- c("World")

concatenated_vector <- c(vector1, vector2)

print(concatenated_vector)

# Q13: How to Check if a Vector Contains the Given Element

vector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

value <- readline(prompt = "Enter the value to be checked: ")
value <- as.integer(value)

boolean <- 0

while(boolean == 0) {
    for (i in 1:length(vector)) {
        if (vector[i] == value) {
            boolean <- 1
            break
        }
    }
}

if (boolean == 1) {
    print("The value is present in the Vector")
} else {
    print("The value is not present in the Vector")
}

# Q15: R Program to Find Index of an Element in a Vector

vector <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

value <- readline(prompt = "Enter the value to be checked: ")
value <- as.integer(value)

index <- 0

for (i in 1:length(vector)) {
    if (vector[i] == value) {
        index <- i
        break
    }
}

print(index)

# Q18: How to create an empty matrix in R?

example_matrix <- matrix(, nrow = 2, ncol = 3)

print(example_matrix)

# Q19: Fill an empty matrix in R

example_matrix <- matrix(, nrow = 2, ncol = 3)

product <- 1

for (i in 1:dim(example_matrix)[1]) {
    for (j in 1:dim(example_matrix)[2]) {
        example_matrix[i, j] <- readline(prompt = "Enter Value for Matrix: ")
        product <- product * as.integer(example_matrix[i, j])
    }
}

print(example_matrix)

print(product)

# Q21: Multiply Matrix by Vector in R

example_matrix <- matrix(data = 1:12, nrow = 6, ncol = 2)
vector <- c(1:6)

product <- apply(example_matrix, 2, `*`, vector)

print(product)

sum <- apply(example_matrix, 2, `+`, vector)

print(sum)

# Q22: Find the power of a matrix in R

example_matrix <- matrix(data = 1:9, nrow = 3, ncol = 3)

print(example_matrix)

nth_power <- readline(prompt = "Enter the power for Matrix: ")

power_matrix <- example_matrix %^% nth_power

print(power_matrix)

# Q24: Get the element at the specific position from the matrix in R

example_matrix <- matrix(data = 1:9, nrow = 3, ncol = 3)

row_index <- readline(prompt = "Enter the row index: ")
row_index <- as.integer(row_index)

column_index <- readline(prompt = "Enter the column index: ")
column_index <- as.integer(column_index)

element <- example_matrix[row_index, column_index]

print(element)

# Q25: Find the row and column index of maximum and minimum value in a matrix in R

example_matrix <- matrix(data = 12:1, nrow = 3, ncol = 4)

min <- example_matrix[1,1]

min_column_index <- example_matrix[1]
min_row_index <- example_matrix[1]

for (i in 1:dim(example_matrix)[1]) {
    for (j in 1:dim(example_matrix)[2]) {
        if (example_matrix[i, j] < min) {
            min <- example_matrix[i, j]
            min_column_index <- j
            min_row_index <- i
        }
    }
}

message(min_row_index, " ",  min_column_index)

# Q28: How to Convert a List to a Dataframe

example_list <- c(9:1)
example_list_2 <- c(1:9)

example_data_frame <- data.frame(example_list)

print(example_data_frame)

# Q29: R Program to Create an Empty Dataframe

example_dataframe <- data.frame()

print(example_dataframe)

# Q31: Create an R Program to Change the Column Name of a Dataframe

example_data_frame <- data.frame(x1 = example_list, x2 = example_list_2)

print(example_data_frame)

colnames(example_data_frame) <- c("New Column Name")

print(example_data_frame)

# Q32: How to Extract Columns From a Dataframe
print(example_data_frame[1])

# Q33: R Program to Drop Columns in a Dataframe

example_data_frame <- data.frame(x1 = example_list, x2 = example_list_2)

print(example_data_frame)

example_data_frame <- example_data_frame[-1]

print(example_data_frame)

# Q34: R Program to Reorder Columns in a Dataframe

example_data_frame <- data.frame(x1 = example_list, x2 = example_list_2)

print(example_data_frame)

example_data_frame <- example_data_frame[]

print(example_data_frame)
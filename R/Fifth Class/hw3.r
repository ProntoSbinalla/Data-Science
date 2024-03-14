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

vector <- c(1, 2, 3, 4, 5, 5, 6, 6, 3, 2, 4, 6, 1, 2, 4, 5)

value <- readline(prompt = "Enter the value to be counted: ")
value <- as.integer(value)

count <- 0

for (i in 1:length(vector)) {
    if (vector[i] == value) {
        count <- count + 1
    }
}

print(count)
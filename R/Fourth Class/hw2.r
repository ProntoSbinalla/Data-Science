# Q1: Count the Number of List Elements in R

message("Q1: ")

new_list <- list(1, 2, 3, 4, 5, 6, 7, 8, 9)

print(length(new_list))

# Q2: Create a list with random values in R

message("Q2: ")

message("Enter 2 numbers to form range for Random Values: ")

lower <- readline()
upper <- readline()

lower <- as.integer(lower)
upper <- as.integer(upper)

message("Enter Number of Values for the List: ")

count <- readline()
count <- as.integer(count)

random_values <- vector(mode = "list", length = count)

for(a in 1:count) {
    random_values[a] <- sample(lower:upper, 1)
}

print(random_values)

# Q8: For loop to print the elements of a vector

message("Q8: ")

vector_values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

for(a in 1:length(vector_values)) {
    print(vector_values[a])
}

# Q9: The sum of parts in a vector using a for loop?

message("Q9: ")

vector_values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

sum <- 0

for(a in 1:length(vector_values)) {
    sum <- sum + vector_values[a]
}

message(sum)

# Q10: Finding the maximum value in a vector using a for loop?

message("Q10: ")

vector_values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

max <- vector_values[1]

for(a in 2:length(vector_values)) {
    if(vector_values[a] > max) {
        max <- vector_values[a]
    }
}

message(max)

# Q11: Reversing a vector using a for loop?

message("Q11: ")

vector_values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

reversed_vector <- c()

for(a in 1:length(vector_values)) {
    reversed_vector[a] <- vector_values[length(vector_values) - a + 1]
}

print(reversed_vector)

# Q12: Counting the number of even and odd elements in a vector using a for loop?

message("Q12: ")

vector_values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

even_count <- 0
odd_count <- 0

for(a in 1:length(vector_values)) {
    if(vector_values[a] %% 2 == 0) {
        even_count <- even_count + 1
    } else {
        odd_count <- odd_count + 1
    }
}

message("Even Count: ",  even_count)
message("odd Count: ",  odd_count)

# Q13: While loop to print the elements of a vector?

message("Q13: ")

vector_values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

i <- 1

while(i <= length(vector_values)) {
    print(vector_values[i])
    i <- i + 1
}

# Q14: While loop to find the first occurrence of a specific element in a vector?

message("Q14: ")

vector_values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

i <- 1

message("Enter Number to Find: ")

number_to_find <- readline()
number_to_find <- as.integer(number_to_find)

index <- 1

while(i <= length(vector_values)) {
    if(vector_values[i] == number_to_find) {
        message("Index: ", index)
        break
    } else {
        index <- index + 1
    }
    i <- i + 1
}

# Q15: While loop to calculate the factorial of a number?

message("Q15: ")

message("Enter Number to Find Factorial: ")

number_for_factorial <- readline()
number_for_factorial <- as.integer(number_for_factorial)

factorial <- 1

i <- 1

while(i <= number_for_factorial) {
    factorial <- factorial * i
    i <- i + 1
}

message("Factorial: ", factorial)

# Q16: While loop to calculate the square of numbers?

message("Q16: ")

values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

i <- 1

while(i <= length(values)) {
    squares <- values[i] * values[i]
    print(squares)
    i <- i + 1
}

# Q17: While loop to reverse a string?

message("Q17: ")

message("Enter String to Reverse: ")

string_to_reverse <- readline()

reversed_string <- ""

i <- length(string_to_reverse)

while(i >= 1) {
    reversed_string[length(string_to_reverse) - i + 1] <- string_to_reverse[i]
    i <- i - 1
}

message(reversed_string)

# Q19: Nested for loop to create a 2D matrix.

message("Q19: ")

message("Enter the number of rows for Matrix: ")

rows <- readline()
rows <- as.integer(rows)

message("Enter the number of columns for Matrix: ")

columns <- readline()
columns <- as.integer(columns)

matrix <- matrix(0, nrow = rows, ncol = columns)

for(a in 1:rows) {
    for(b in 1:columns) {
        message("Enter the [", a, "][", b, "] value for Matrix: ")
        value <- readline()
        value <- as.integer(value)
        matrix[a, b] <- value
    }
}

print(matrix)

# Q28: If-else to check if a character string contains a specific substring.

message("Q28: ")

message("Enter String to Check: ")

string_to_check <- readline()

message("Enter Substring to Check: ")

substring_to_check <- readline()

if(grepl(substring_to_check, string_to_check)) {
    message("Substring Found!")
} else {
    message("Substring Not Found!")
}
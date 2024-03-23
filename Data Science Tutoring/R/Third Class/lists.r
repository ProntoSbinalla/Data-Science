number <- list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
message(number[3])

number[3] <- 6
message(number[3])

message(length(number))

message(append(number, 11))

message(6 %in% number)

message(append(number, 13, after = 3))

letters <- list("a", "b", "c", "d", "e", "f")

list3 <- c(number, letters)

print(list3)

# Vectors

x <- c(1, 2, 3, 4, 5)
y <- c(10, 20, 30, 40, 50)

message(x)
message(y)

# Matrix

x <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2)

print(x)
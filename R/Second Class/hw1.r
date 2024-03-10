# Q6: Write an if statement to check if a variable 'x' is greater than 10 in R.

x <- 15

if(x > 10) {
    message(x, " is greater than 10")
}

# Q9: Write an if statement to determine if a character variable 'y' is equal to the string "Hello" in R.

y <- "Hello"

if(y == "Hello") {
    message(y, " is Hello")
}

# Q11: Write a while loop to print numbers from 1 to 5 in R.

a <- 1
while (a < 5) {
    message(a)
    a <- a+1
}
message(a)

# Q15: Write a for loop to calculate the sum of even numbers from 1 to 10 in R.

sum <- 0

for(a in 1:10) {
    if(a%%2 == 0) {
        sum <- sum + a
    } else {
        next
    }
}

message(sum)

# Q16: Write a while loop that prints the square of numbers from 1 to 3 in R.

a <- 1

while(a<4) {
    square <- a*a
    message(square)
    a <- a+1
}

# Q18: Create a while loop to find the factorial of a given number 'n' in R.

message("Input a Number to find its Factorial: ")
n <- readline()
n <- as.integer(n)

product <- 1
a <- 1

while(a < n+1) {
    product <- product * a
    a <- a+1
}

message(product)

# Q19: Write a nested for loop to print a multiplication table for numbers 1 to 3 in R.

for(a in 1:3) {
    for(b in 1:10) {
        message(a, " x ", b, " = ", a * b)
    }
}
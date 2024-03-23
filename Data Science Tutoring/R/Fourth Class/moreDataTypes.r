# Arrays

numbers <- c(1:10)

exampleArray <- array(numbers, dim = c(2,5,2))

print(exampleArray)
# print(dim(exampleArray))

# print(exampleArray[1,2])

# Data Frame

dataFrame <- data.frame(
    course = c("Java", "C", "C++", "Python"),
    student = c(1,2,3,4),
    fees = c(1000, 2000, 3000, 4000)
)

newDataFrame <- rbind(dataFrame, c('R', 5, 5000))
print(newDataFrame)


print(dataFrame)
print(dataFrame[1])
print(dataFrame[['course']])
print(dataFrame$course)
print(dataFrame['course'])

# Factor

course <- factor(c('R', 'Python', 'Java'))
print(course)

# Functions

func1 <- function() {
    print('Hello World')
}

func1()
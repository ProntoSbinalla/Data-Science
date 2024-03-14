add <- function(a) {
    inner_add <- function(b,c) {
        d <- a + b + c
        return(d)
    }
    return (inner_add)
}

result <- add(3)
result <- result(5,2)

print(result)

add <- function(b) {
    a <<- 6
    sum <- a + b
    return(sum)
}

print(a)

add <- function(a,b) a+b
print(add(4,5))
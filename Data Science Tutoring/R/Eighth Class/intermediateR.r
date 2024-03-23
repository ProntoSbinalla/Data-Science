start_time <- Sys.time()

sum_numbers <- 0

for(i in 1:1000) {
    sum_numbers <- sum_numbers + i
}

end_time <- Sys.time()

elapsed_time <- end_time - start_time

print(sum_numbers)
print(elapsed_time)

print(object.size(sum_numbers))

b <- scan()

print(b)

data <- data.frame(x1 = c(1,2,3,4),
                  x2 = c(5,6,7,8),
                  x3 = c(9,10,11,12))

print(data)

write.table(data,
            file = "data.txt",
            row.names = FALSE)

data <- scan("data.txt", what = list("", "", ""), skip = 1)

print(data)
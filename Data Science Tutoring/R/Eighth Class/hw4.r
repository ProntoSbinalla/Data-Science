# Q1: Write a function that divides two numbers, but handle the case where the denominator is zero.

compute_division <- function(num, denom) {
    result <- tryCatch({
        if(denom == 0) {
            warning("Dividing by zero")
        } else {
            return(num / denom)
        }
    }, warning = function(w) {
        cat("An Error Occurred:", conditionMessage(w), "\n")
        return(NA)
    })

    return(result)
}

compute_division(10, 0)

# Q2: Create a function that checks if a given vector is numeric, and if not, raise a custom error message.

numeric_check <- function(vector) {
    result <- tryCatch({
        if(is.numeric(vector)) {
            return(vector)
        } else {
            warning("Vector is not numeric")
        }
    }, warning = function(w) {
        cat("An Error Occurred:", conditionMessage(w), "\n")
        return(NA)
    })

    return(result)
}

numeric_check(c(1, 2, 3, "Hello"))

# Q3 & 11: Use tryCatch to handle the error in reading a non-existent file using read.csv().

file_check <- function(file_name) {
    result <- tryCatch({
        if(file.exists(file_name)) {
            return(file_name)
        } else {
            warning("File does not exist")
        }
    }, warning = function(w) {
        cat("An Error Occurred:", conditionMessage(w), ": ", file_name, "\n")
        return(NA)
    })

    return(result)
}

file_check("non-existent-file.csv")

# Q4 & 6: Write a function that takes a numeric vector and raises a warning if any element is negative.

numeric_check <- function(vector) {
    result <- tryCatch({
        if(is.numeric(vector)) {
            for(i in 1:length(vector)) {
                if(vector[i] < 0) {
                    warning("Negative value detected")
                }
            }
        } else {
            return(vector)
        }
    }, warning = function(w){
        cat("An Error Occurred:", conditionMessage(w), "\n")
        return(NA)
    })

    return(result)
}

numeric_check(c(1, 2, 3, -4))

# Q15: Create a function that expects a data frame as input, but handle the case where a different data type is provided.

check_dataframe <- function(data) {
    result <- tryCatch({
        if(is.data.frame(data)) {
            return(data)
        } else {
            warning("Data frame expected. Received: ", typeof(data))
        }
    }, warning = function(w) {
        cat("An Error Occurred:", conditionMessage(w), "\n")
        return(NA)
    })

    return(result)
}

check_dataframe(c(1, 2, 3))

# Q17: Develop a function that checks the memory usage of an object and raises an error if it exceeds a certain threshold.

memory_check <- function(object) {
    result <- tryCatch({
        if(object.size(object) > 100)  {
            warning("Memory usage exceeds threshold")
        } else {
            return(object)
        }
    }, warning = function(w) {
        cat("An Error Occurred:", conditionMessage(w), "\n")
        return(NA)
    })

    return(result)
}

memory_check("khksdhfksdhfakdhfkdnf, ndsfjdfkhdfkhasdkfhaskdfhkadshf,dmnzx,c.jasdfhkjashdfklajsdf,mn,mchzklxjhc,mnsdf.hadkzNcjklshdf,n.dmsfnasdjkf")
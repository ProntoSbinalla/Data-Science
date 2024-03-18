try_example <- tryCatch(
    add = {
        print(3 / 0)
    }, error = function(e) {
        print("This is an error")
    }, warning = function(e) {
        print("This is an warning")
    }, finally = {
        print("This is the Finally Statement")
    }
)

compute_sqrt <- function(x) {
  result <- tryCatch({
    if (x < 0) {
      warning("Square root of negative number.")
    }
    return(sqrt(x))
  }, warning = function(w) {
    cat("A warning occurred:", conditionMessage(w), "\n")
    return(NA)
  })
  return(result)
}

result <- compute_sqrt(-1)
print(result)
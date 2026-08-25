#' Geomean
#'
#' Calculate the geometric mean of a vector of numbers.
#' This uses the log-antilog method; it takes the natural logarithm of each number, averages them together, and then takes the antilog (i.e., exponent) of the result.
#' @param x Vector of numeric inputs.
#' @param na.rm Remove NAs from the data? Default is TRUE; otherwise any NAs will give a NA result.
#' @return The geometric mean of x.
#' @examples
#' twos <- c(2, 4, 8, 16)
#' geomean(twos)

#' @export

geomean = function(x, na.rm=TRUE){
  exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))

  cli::cli_alert_success("You have calculated the geometric mean of your numbers")
}


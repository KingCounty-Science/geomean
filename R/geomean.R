#' Geomean
#'
#' Calculate the geometric mean of a vector of numbers.
#' @param x Vector of numeric inputs.
#' @param na.rm Remove NAs from the data? Default is TRUE; otherwise any NAs will give a NA result.
#' @return The geometric mean of x.
#' @examples
#' twos <- c(2, 4, 8, 16)
#' geomean(twos)


geomean = function(x, na.rm=TRUE){
  exp(sum(log(x[x > 0]), na.rm=na.rm) / length(x))
}

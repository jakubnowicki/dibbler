#' ceiling with digits
#'
#' @param x a numeric vector
#' @param digits number of decimal places
#' @return numeric vector
#'
#' @export
#' @examples
#' ceiling_digits(2.345, 1)
ceiling_digits <- function(x, digits = 0) {
  coef <- 10^digits
  ceiling(x * coef) / coef
}

#' floor with digits
#'
#' @param x a numeric vector
#' @param digits number of decimal places
#' @return numeric vector
#'
#' @export
#' @examples
#' floor_digits(2.345, 1)
floor_digits <- function(x, digits = 0) {
  coef <- 10^digits
  floor(x * coef) / coef
}

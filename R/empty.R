#' Is NULL or NA
#'
#' @param x object to be tested
#' @return TRUE if object is NULL or NA, logical vector for objects of length > 1
#' @export
#'
#' @examples
#' is_null_or_na(NA)
#' is_null_or_na(NULL)
#' is_null_or_na(c(2, NA, 5))
is_null_or_na <- function(x) {
  if (length(x) > 1) {
    return(is.na(x))
  }

  is.null(x) || is.na(x)
}

#' Is NULL, NA, "" or 0 length
#'
#' @param x object to be tested
#' @return TRUE if object is NULL, NA, "" or length 0; logical vector for objects of length > 1
#' @export
#'
#' @examples
#' is_empty(c(NA, "a", ""))
#' is_empty(NULL)
#' is_empty(character())
is_empty <- function(x) {
  if (length(x) == 0) {
    return(TRUE)
  }

  if (length(x) > 1) {
    return(is.na(x) | x == "")
  }

  is_null_or_na(x) || x == ""
}

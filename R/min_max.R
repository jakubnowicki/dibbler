#' min with NA handling
#'
#' @param ... numeric or character vector
#' @return minimum or NA if all values are NA
#' @export
#'
#' @examples
#' min_na(2, 3, NA)
#' min_na(NA, NA)
min_na <- function(...) {
  if (all(is.na(c(...)))) {
    return(NA)
  }

  min(..., na.rm = TRUE)
}

#' max with NA handling
#'
#' @param ... numeric or character vector
#' @return maximum or NA if all values are NA
#' @export
#'
#' @examples
#' max_na(2, 3, NA)
#' max_na(NA, NA)
max_na <- function(...) {
  if (all(is.na(c(...)))) {
    return(NA)
  }

  max(..., na.rm = TRUE)
}

#' range with NA handling
#'
#' @param ... numeric or character vector
#' @return range or c(NA, NA) if all values are NA
#' @export
#'
#' @examples
#' range_na(2, 3, NA)
#' range_na(NA, NA)
range_na <- function(...) {
  if (all(is.na(c(...)))) {
    return(c(NA, NA))
  }

  range(..., na.rm = TRUE)
}

library(testthat)

context("is_null_or_na and is_empty funcitons")

test_that("is_null_or_na returns TRUE if given NULL", {
  # When
  result <- is_null_or_na(NULL)

  # Then
  expect_true(result)
})

test_that("is_null_or_na returns TRUE if given NA", {
  # When
  result <- is_null_or_na(NA)

  # Then
  expect_true(result)
})

test_that("is_null_or_na returns FALSE if given not NULL nor NA", {
  # When
  result <- is_null_or_na(rnorm(1))

  # Then
  expect_false(result)
})

test_that("is_null_or_na returns a logical vector same as is.na", {
  # Given
  value <- replicate(sample(1:100, 1), sample(c(1:100000, NA), 1))

  # When
  result <- is_null_or_na(value)

  # Then
  expect_equal(result, is.na(value))
})

test_that("is_empty returns TRUE for 0 length vector", {
  # When
  result <- is_empty(character(0L))

  # Then
  expect_true(result)
})

test_that("is_empty returns TRUE for empty string", {
  # When
  result <- is_empty("")

  # Then
  expect_true(result)
})

test_that("is_empty returns TRUE for NA", {
  # When
  result <- is_empty(NA)

  # Then
  expect_true(result)
})

test_that("is_empty returns TRUE for NULL", {
  # When
  result <- is_empty(NULL)

  # Then
  expect_true(result)
})

test_that("is_empty returns TRUE only for NA and empty string", {
  # Given
  value <- c(NA, 1, "asdasda", "", 123, NA)

  # When
  result <- is_empty(value)

  # Then
  expect_equal(result, c(TRUE, FALSE, FALSE, TRUE, FALSE, TRUE))
})

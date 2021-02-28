library(testthat)

context("min, max, range functions")

test_that("min_na function returns NA if all given values are NA", {
  # Given
  value <- replicate(sample(1:100, 1), NA)

  # When
  result <- min_na(value)

  # Then
  expect_true(is.na(result))
})

test_that("min_na returns the same value as min(..., na.rm = TRUE)", {
  # Given
  value <- replicate(sample(1:100, 1), sample(c(1:100000, NA), 1))

  # When
  result <- min_na(value)

  # Then
  expect_equal(result, min(value, na.rm = TRUE))
})

test_that("max_na function returns NA if all given values are NA", {
  # Given
  value <- replicate(sample(1:100, 1), NA)

  # When
  result <- max_na(value)

  # Then
  expect_true(is.na(result))
})

test_that("max_na returns the same value as max(..., na.rm = TRUE)", {
  # Given
  value <- replicate(sample(1:100, 1), sample(c(1:100000, NA), 1))

  # When
  result <- max_na(value)

  # Then
  expect_equal(result, max(value, na.rm = TRUE))
})

test_that("range_na function returns c(NA, NA) if all given values are NA", {
  # Given
  value <- replicate(sample(1:100, 1), NA)

  # When
  result <- range_na(value)

  # Then
  expect_true(is.na(result[1]))
  expect_true(is.na(result[2]))
  expect_true(length(result) == 2)
})

test_that("range_na returns the same value as range(..., na.rm = TRUE)", {
  # Given
  value <- replicate(sample(1:100, 1), sample(c(1:100000, NA), 1))

  # When
  result <- range_na(value)

  # Then
  expect_equal(result, range(value, na.rm = TRUE))
})

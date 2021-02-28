library(testthat)

context("rounding functions")

test_that("ceiling_digits returns a ceiled value with desired decimal", {
  # Given
  value <- 1234.1234

  # When
  result_zero <- ceiling_digits(value)
  result_one <- ceiling_digits(value, 1)
  result_two <- ceiling_digits(value, 2)
  result_three <- ceiling_digits(value, 3)
  result_four <- ceiling_digits(value, 4)

  # Then
  expect_equal(result_zero, 1235)
  expect_equal(result_one, 1234.2)
  expect_equal(result_two, 1234.13)
  expect_equal(result_three, 1234.124)
  expect_equal(result_four, 1234.1234)
})

test_that("floor_digits returns a ceiled value with desired decimal", {
  # Given
  value <- 1234.1234

  # When
  result_zero <- floor_digits(value)
  result_one <- floor_digits(value, 1)
  result_two <- floor_digits(value, 2)
  result_three <- floor_digits(value, 3)
  result_four <- floor_digits(value, 4)

  # Then
  expect_equal(result_zero, 1234)
  expect_equal(result_one, 1234.1)
  expect_equal(result_two, 1234.12)
  expect_equal(result_three, 1234.123)
  expect_equal(result_four, 1234.1234)
})

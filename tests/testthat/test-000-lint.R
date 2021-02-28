library(lintr)

context("lintr")

test_that("lintr", {
  lintr::expect_lint_free(
    path = "../../00_pkg_src/dibbler",
    relative_path = TRUE,
    lintr::line_length_linter(120)
  )
})

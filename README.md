# dibbler

<!-- badges: start -->
![R-CMD-check](https://github.com/jakubnowicki/dibbler/workflows/R-CMD-check/badge.svg)
[![codecov](https://codecov.io/gh/jakubnowicki/dibbler/branch/main/graph/badge.svg)](https://codecov.io/gh/jakubnowicki/dibbler)
<!-- badges: end -->

`dibbler` is a small package that tries to provide small functions that
are often used, but almost always copy-pasted between projects. Need an example? `ceiling`/`floor`, but with rounded to specified decimal. With `dibbler`
you can just use `dibbler::ceiling_digits(2.343, digits = 1)` (or `floor_digits`).

## Installation

You can install the latest version with `remotes`:

``` r
remotes::install_github("jakubnowicki/dibbler@main")
```

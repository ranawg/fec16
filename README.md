
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fec16

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/fec16)](https://CRAN.R-project.org/package=fec16)
<!-- badges: end -->

`fec16` contains candidate, committee and candidate-committtee linkage
data for the United States 2015-2016 election cycle. To get an
understanding of what leads to a win, we have various **a selection of x
contributions??** contribution data along with state data of the
election winners.

## Installation

`fec16` is hosted on GitHub and call be installed by running the
following:

``` r
devtools::install_github("ranawg/fec16")
```

``` r
library(fec16)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(fec16)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!

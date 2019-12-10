
<!-- README.md is generated from README.Rmd. Please edit that file -->
<<<<<<< HEAD
fec16
=====

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental) [![CRAN status](https://www.r-pkg.org/badges/version/fec16)](https://CRAN.R-project.org/package=fec16) <!-- badges: end -->

The goal of fec16 is to ...

Installation
------------

You can install the released version of fec16 from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("fec16")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
library(fec16)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`? You can include R chunks like so:
=======

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

We can summarise data to see how many candidates are running for
elections (in all offices) for the two major parties:

``` r
library(fec16)
library(tidyverse)
#> ── Attaching packages ─────────────────
#> ✔ ggplot2 3.2.1     ✔ purrr   0.3.3
#> ✔ tibble  2.1.3     ✔ dplyr   0.8.3
#> ✔ tidyr   1.0.0     ✔ stringr 1.4.0
#> ✔ readr   1.3.1     ✔ forcats 0.4.0
#> ── Conflicts ──────────────────────────
#> ✖ dplyr::filter() masks stats::filter()
#> ✖ dplyr::lag()    masks stats::lag()
candidates %>% filter(cand_pty_aff == "REP"|cand_pty_aff =="DEM") %>% group_by(cand_pty_aff) %>% summarise(size = n())
#> # A tibble: 2 x 2
#>   cand_pty_aff  size
#>   <fct>        <int>
#> 1 DEM           2242
#> 2 REP           2678
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:
>>>>>>> 10479557514c0cc9ff0b311981fac0ca0ac238e6

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

<<<<<<< HEAD
You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date.
=======
You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.
>>>>>>> 10479557514c0cc9ff0b311981fac0ca0ac238e6

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

<<<<<<< HEAD
In that case, don't forget to commit and push the resulting figure files, so they display on GitHub!
=======
In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
>>>>>>> 10479557514c0cc9ff0b311981fac0ca0ac238e6

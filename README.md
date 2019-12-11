
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fec16

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://r-pkg.org/badges/version/fec16)](https://CRAN.R-project.org/package=fec16)
[![Travis-CI Build
Status](https://travis-ci.org/ranawg/fec16.svg?branch=master)](https://travis-ci.org/ranawg/fec16)
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

## Data

`candidates`: all candidates registered with the FEC during the
2015-2016 election cycle

`committees`: all committees registered with the FEC during the
2015-2016 election cycle

`results`: the results of the 2016 general presidential election

`committee_contributions`: total contributions, aggregated by candidate,
from committees

`linkage`: provides linkage ID’s for candidates and committees

## Example

### Data Wranging

`fec16` can be used to summarise data in order see how many candidates
are running for elections (in all offices) for the two major parties:

``` r
library(fec16)
library(tidyverse)
library(scales)

candidates %>% filter(cand_pty_aff == "REP"|cand_pty_aff =="DEM") %>% group_by(cand_pty_aff) %>% summarise(size = n())
#> # A tibble: 2 x 2
#>   cand_pty_aff  size
#>   <fct>        <int>
#> 1 DEM           2242
#> 2 REP           2678
```

### Joining Data

A data wrangling example that uses two of the data frames could
be:

``` r
cand_cmte <- full_join(candidates, committees, by = "cand_id") %>% filter(cand_pty_aff == "REP"|cand_pty_aff =="DEM") %>% group_by(cand_pty_aff, committee_type) %>% summarise(n = n()) %>% drop_na(committee_type)
#> Warning: Factor `committee_type` contains implicit NA, consider using
#> `forcats::fct_explicit_na`
cand_cmte
#> # A tibble: 6 x 3
#> # Groups:   cand_pty_aff [109]
#>   cand_pty_aff committee_type     n
#>   <fct>        <fct>          <int>
#> 1 DEM          H               1540
#> 2 DEM          P                147
#> 3 DEM          S                278
#> 4 REP          H               1715
#> 5 REP          P                218
#> 6 REP          S                399
```

### Data Visualization

And extending that to create a visualisation to see the results
easily.

``` r
ggplot(cand_cmte, aes(x = committee_type, y = n, fill = cand_pty_aff)) + geom_col(position = "dodge") +
  labs(title = "Bar Chart of Total Committees by Type and Party", x = "Committee Type", y = "Count", fill = "Candidate Party Affiliation")
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

Create a scatter-plot of total contributions per candidate, colored by
party (only including Democrat and Republican)

``` r

joined_data <- candidates%>%
  full_join(committee_contributions, by = "cand_id") %>%
  filter(!is.na(total_contributions)) %>%
  filter(cand_pty_aff=="REP" | cand_pty_aff == "DEM") %>%
  filter(total_contributions <= 1e+08)
  
  p <- ggplot(joined_data, aes(x=cand_id, y=total_contributions, color = cand_pty_aff)) +
  geom_point() +
  geom_jitter() +
  theme(axis.text.x=element_blank())
  
p
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />

Visualize the results of the elections and see how many poeple voted:

``` r
 results_by_cand <- results %>% 
   drop_na(general_results, cand_id) %>%
   group_by(cand_id, last_name) %>%
   summarise(sum_votes = sum(general_results)) %>% 
   filter(sum_votes >100000)
#   
#   
#  
 ggplot(results_by_cand, mapping = aes(x = last_name, y = sum_votes) ) + 
   geom_col() + 
   xlab("Candidates") + 
   ylab("Number of Votes") +
   scale_y_continuous(labels = comma)
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />

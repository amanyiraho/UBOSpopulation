
<!-- README.md is generated from README.Rmd. Please edit that file -->

# UBOSpopulation

<!-- badges: start -->

[![R-CMD-check](https://github.com/amanyiraho/UBOSpopulation/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/amanyiraho/UBOSpopulation/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of UBOSpopulation is to provide Ugandan population estimates
from official UBOS website

## Installation

You can install the development version of UBOSpopulation from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("amanyiraho/UBOSpopulation")
```

## Example

This is a basic example how to access the dataset

``` r
library(UBOSpopulation)

data("population_estimates")

head(population_estimates)
#>   district_city lower_local_government categroy year population
#> 1       Buhweju         District_level     male 2015      60600
#> 2       Buhweju         District_level   female 2015      63100
#> 3       Buhweju         District_level    total 2015     123700
#> 4       Buhweju         District_level     male 2016      62600
#> 5       Buhweju         District_level   female 2016      65000
#> 6       Buhweju         District_level    total 2016     127600
```

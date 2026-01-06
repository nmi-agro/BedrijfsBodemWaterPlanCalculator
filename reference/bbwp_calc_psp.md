# Calculate the precipitation surplus

This function calculates the precipitation surplus (in mm / ha) given
the crop rotation plan. Is identical to OBIC function calc_psp but much
faster to facilitate national and regional calculations

## Usage

``` r
bbwp_calc_psp(B_LU_BRP, M_GREEN, M_GREEN_START = 10L, M_GREEN_TERMINATE = 1L)
```

## Arguments

- B_LU_BRP:

  (numeric) The crop code from the BRP

- M_GREEN:

  (boolean) A soil measure. Are catch crops sown after main crop
  (optional, options: TRUE, FALSE)

- M_GREEN_START:

  (integer) Month in which the green manure is sown

- M_GREEN_TERMINATE:

  (integer) Month in which the green manure is terminated

## Value

The estimated precipitation surplus (in mm / ha) depending on averaged
precipitation and evaporation. A numeric value.

## Details

This function is calculates a precipitation surplus over 12 months
taking green manures into account. The function does not take crop
rotations or successive years into account. As such, including a winter
cereal, which modifies evapotranspiration from January to August, does
not alter the autumn evapotranspiration. If for example, a crop rotation
includes potato followed by winter wheat, the year with potato
cultivation should have M_GREEN = TRUE. The winter wheat acts as a green
manure/catch crop for the potato's year.

## Examples

``` r
bbwp_calc_psp(B_LU_BRP = 265, M_GREEN = TRUE)
#> [1] 209.475
bbwp_calc_psp(B_LU_BRP = c(265,1019,265,1019), M_GREEN = rep(TRUE,4))
#> [1] 209.475 279.155 209.475 279.155
bbwp_calc_psp(B_LU_BRP = c(2014, 2767), M_GREEN = rep(TRUE,2),
             M_GREEN_START = c(10L, 11L), M_GREEN_TERMINATE = c(12L, 3L))
#> [1] 415.911 567.678
```

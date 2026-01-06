# Convert possible B_AER_CBS values to standardized values

This function formats information of Agricultural Economic Region so it
can be understood by other functions

## Usage

``` r
bbwp_format_aer(B_AER_CBS)
```

## Arguments

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

## Value

A standardized B_AER_CBS value as required for the BBWP functions. A
character string.

## Examples

``` r
bbwp_format_aer(c("LG13","LG12"))
#> [1] "LG13" "LG12"
bbwp_format_aer(c("LG13","LG12",'Rivierengebied'))
#> [1] "LG13" "LG12" "LG10"
```

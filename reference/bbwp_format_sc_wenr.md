# Convert possible B_SC_WENR values to standardized values

This function formats information of subsoil compaction so it can be
understood by BBWP functions

## Usage

``` r
bbwp_format_sc_wenr(B_SC_WENR)
```

## Arguments

- B_SC_WENR:

  (character) The risk for subsoil compaction as derived from risk
  assessment study of Van den Akker (2006)

## Value

A standardized B_SC_WENR value as required for the BBWP functions. A
character string.

## Examples

``` r
bbwp_format_sc_wenr(c("1","5"))
#> [1] 1 5
bbwp_format_sc_wenr(c("Zeer beperkt","Water",'4'))
#> [1]   1 902   4
```

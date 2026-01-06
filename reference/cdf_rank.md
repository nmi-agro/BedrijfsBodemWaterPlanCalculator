# Calculate the chance that soil property is lower than the measured value given the variation in a catchment

assuming a normal distributed density function. The chance can be used
as a relative ranking position of the field given the variation inside
the catchment.

## Usage

``` r
cdf_rank(smean, ssd, svalue)
```

## Arguments

- smean:

  (numeric) The mean value for a numeric soil property in a given
  catchment

- ssd:

  (numeric) The variation (standard deviation) among a numeric soil
  property in a given catchment

- svalue:

  (numeric) The measured value of a soil property of a field inside a
  catchment

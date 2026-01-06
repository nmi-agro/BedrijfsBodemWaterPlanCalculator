# Calculate the total score of five opportunity indicators for all fields in the Netherlands

Estimate the potential to contribute to agronomic and environmental
challenges in a region for a farm

## Usage

``` r
bbwp_farm_score(
  S_BBWP_TOT,
  S_BBWP_NGW,
  S_BBWP_NSW,
  S_BBWP_PSW,
  S_BBWP_NUE,
  S_BBWP_WB,
  B_AREA,
  S_BBWP_GW
)
```

## Arguments

- S_BBWP_TOT:

  (numeric) the score for the integrative opportunity index (risk times
  impact) for each field

- S_BBWP_NGW:

  (numeric) the scoring index for lowering N emission to ground water
  (risk times impact) for each field

- S_BBWP_NSW:

  (numeric) the scoring index for lowering N emission to surface water
  (risk times impact) for each field

- S_BBWP_PSW:

  (numeric) the scoring index for lowering P emission to surface water
  (risk times impact) for each field

- S_BBWP_NUE:

  (numeric) the scoring index to use N and P inputs efficiently for each
  field

- S_BBWP_WB:

  (numeric) the scoring index to buffer and store water and efficiently
  use water for plant growth for each field

- B_AREA:

  (numeric) the area of the field (m2)

- S_BBWP_GW:

  (numeric) the scoring index to maintain ample groundwater

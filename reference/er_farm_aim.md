# Calculate the minimum required Ecoregelingen Scores on Farm level

Estimate the required score on farm level for soil quality, water
quality, climate, biodiversity and landscape given soil type. Unit is
score per hectare.

## Usage

``` r
er_farm_aim(
  B_SOILTYPE_AGR,
  B_AREA,
  medalscore = "gold",
  farmscore = NA_real_,
  thresholds = FALSE
)
```

## Arguments

- B_SOILTYPE_AGR:

  (character) The type of soil

- B_AREA:

  (numeric) The area of the field (m2)

- medalscore:

  (character) The desired medal score expressed as bronze, silver or
  gold

- farmscore:

  (numeric) The desired total ER score on farm level

- thresholds:

  (boolean) The threshold of scores for medals bronze, silver and gold
  should be included in output (options: TRUE or FALSE)

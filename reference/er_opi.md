# Calculate the Opportunity Index for the Ecoregeling method

Estimate the contribution of individual fields to the desired scores for
highest impact on farm level as well as the total farm score, weighted
given the distance to target. A high Ecoregeling score is indicative for
the number of opportunities to improve soil quality, water quality,
climate biodiversity and landscape.

## Usage

``` r
er_opi(
  B_SOILTYPE_AGR,
  S_ER_SOIL,
  S_ER_WATER,
  S_ER_CLIMATE,
  S_ER_BIODIVERSITY,
  S_ER_LANDSCAPE,
  S_ER_REWARD,
  B_AREA,
  medalscore
)
```

## Arguments

- B_SOILTYPE_AGR:

  (character) The type of soil

- S_ER_SOIL:

  (numeric) the Ecoregeling scoring index for soil quality for each
  field

- S_ER_WATER:

  (numeric) the Ecoregeling scoring index for water quality for each
  field

- S_ER_CLIMATE:

  (numeric) the Ecoregeling scoring index for climate for each field

- S_ER_BIODIVERSITY:

  (numeric) the Ecoregeling scoring index for biodiversity for each
  field

- S_ER_LANDSCAPE:

  (numeric) the Ecoregeling scoring index for landscape for each field

- S_ER_REWARD:

  (numeric) The financial reward per field for taking Ecoregeling
  measures (euro / ha)

- B_AREA:

  (numeric) the area of the field (m2)

- medalscore:

  (character) The desired medal score expressed as bronze, silver or
  gold

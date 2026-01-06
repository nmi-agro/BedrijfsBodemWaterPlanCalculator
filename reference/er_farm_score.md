# Calculate the total EcoRegelingen score of five opportunity indicators

Estimate the potential to contribute to agronomic and environmental
challenges in a region for a farm

## Usage

``` r
er_farm_score(
  S_ER_SOIL,
  S_ER_WATER,
  S_ER_CLIMATE,
  S_ER_BIODIVERSITY,
  S_ER_LANDSCAPE,
  S_ER_REWARD,
  B_AREA
)
```

## Arguments

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

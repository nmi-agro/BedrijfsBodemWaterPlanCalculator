# Calculate the Medal on Field and Farm level

Estimate the medal reward for measures taken for soil quality, water
quality, climate, biodiversity and landscape given soil type. Unit is
score per hectare.

## Usage

``` r
er_medal(
  B_SOILTYPE_AGR,
  B_AREA,
  S_ER_TOT,
  S_ER_SOIL,
  S_ER_WATER,
  S_ER_CLIMATE,
  S_ER_BIODIVERSITY,
  S_ER_LANDSCAPE,
  S_ER_REWARD,
  type = "field"
)
```

## Arguments

- B_SOILTYPE_AGR:

  (character) The type of soil

- B_AREA:

  (numeric) The area of the field (m2)

- S_ER_TOT:

  (numeric) the Ecoregeling score for the integrative opportunity index
  for each field

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

- type:

  (character) option to return field or farm medal

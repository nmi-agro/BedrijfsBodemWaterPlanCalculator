# Calculate the total score of five opportunity indicators conform Ecoregelingen Scoring

Estimate the potential to contribute to agronomic and environmental
challenges in a region given aims for soil quality, water quality,
climate, biodiversity and landscape

## Usage

``` r
er_field_scores(
  B_SOILTYPE_AGR,
  B_LU_BBWP,
  B_LU_BRP,
  B_AER_CBS,
  B_AREA,
  B_LU_ARABLE_ER,
  B_LU_PRODUCTIVE_ER,
  B_LU_CULTIVATED_ER,
  measures = NULL,
  sector
)
```

## Arguments

- B_SOILTYPE_AGR:

  (character) The type of soil

- B_LU_BBWP:

  (character) The BBWP category used for allocation of measures to BBWP
  crop categories

- B_LU_BRP:

  (numeric) The crop code (gewascode) from the BRP

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- B_AREA:

  (numeric) the area of the field (m2)

- B_LU_ARABLE_ER:

  (boolean) does the crop fall within the ER category "arable"

- B_LU_PRODUCTIVE_ER:

  (boolean) does the crop fall within the ER category "productive"

- B_LU_CULTIVATED_ER:

  (boolean) does the crop fall within the ER category "cultivated"

- measures:

  (list) the measures planned / done per fields (measurement nr)

- sector:

  (string) a vector with the farm type given the agricultural sector
  (options:
  'melkveehouderij','akkerbouw','vollegrondsgroente','boomteelt','bollen','veehouderij','overig')

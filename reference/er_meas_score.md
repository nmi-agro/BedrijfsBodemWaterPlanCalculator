# Evaluate the contribution of agronomic measures to improve soil and water management

Estimate the Ecoregeling score for agronomic measures taken to improve
soil and water management on agricultural farms.

## Usage

``` r
er_meas_score(
  B_SOILTYPE_AGR,
  B_AER_CBS,
  B_AREA,
  B_LU_BBWP,
  B_LU_BRP,
  B_LU_ARABLE_ER,
  B_LU_PRODUCTIVE_ER,
  B_LU_CULTIVATED_ER,
  measures,
  sector,
  pdf = FALSE
)
```

## Arguments

- B_SOILTYPE_AGR:

  (character) The type of soil

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- B_AREA:

  (numeric) the area of the field (m2)

- B_LU_BBWP:

  (character) The BBWP category used for allocation of measures to BBWP
  crop categories

- B_LU_BRP:

  (numeric) The crop code (gewascode) from the BRP

- B_LU_ARABLE_ER:

  (boolean) does the crop fall within the ER category "arable"

- B_LU_PRODUCTIVE_ER:

  (boolean) does the crop fall within the ER category "productive"

- B_LU_CULTIVATED_ER:

  (boolean) does the crop fall within the ER category "cultivated"

- measures:

  (list) The measures planned / done per fields

- sector:

  (string) a vector with the farm type given the agricultural sector
  (options: 'dairy', 'arable', 'tree_nursery', 'bulbs')

- pdf:

  (boolean) is there a pdf needed

# Rank the suitability of agronomic measures to improve soil, climate, biodiversity and water management for a given field

Estimate the Ecoregelingen score for agronomic measures to improve soil
and water management on agricultural farms. And send an ordered list
back of the most suitable measures.

## Usage

``` r
er_meas_rank(
  B_SOILTYPE_AGR,
  B_GWL_CLASS,
  A_P_SG,
  B_SLOPE_DEGREE,
  M_DRAIN,
  D_SA_W,
  B_AREA,
  B_AER_CBS,
  B_LU_BBWP,
  B_LU_BRP,
  B_LU_ARABLE_ER,
  B_LU_PRODUCTIVE_ER,
  B_LU_CULTIVATED_ER,
  B_CT_SOIL,
  B_CT_WATER,
  B_CT_CLIMATE,
  B_CT_BIO,
  B_CT_LANDSCAPE,
  measures,
  sector
)
```

## Arguments

- B_SOILTYPE_AGR:

  (character) The type of soil

- B_GWL_CLASS:

  (character) The groundwater table class

- A_P_SG:

  (numeric)

- B_SLOPE_DEGREE:

  (numeric) The slope of the field (degrees)

- M_DRAIN:

  (boolean) is there tube drainage present in the field

- D_SA_W:

  (numeric) The wet perimeter index of the field, fraction that field is
  surrounded by water

- B_AREA:

  (numeric) the area of the field (m2)

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

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

- B_CT_SOIL:

  (numeric) the target value for soil quality conform Ecoregeling
  scoring (score / ha)

- B_CT_WATER:

  (numeric) the target value for water quality conform Ecoregeling
  scoring (score / ha)

- B_CT_CLIMATE:

  (numeric) the target value for climate conform Ecoregeling scoring
  (score / ha)

- B_CT_BIO:

  (numeric) the target value for biodiversity conform Ecoregeling
  scoring (score / ha)

- B_CT_LANDSCAPE:

  (numeric) the target value for landscape quality conform Ecoregeling
  scoring (score / ha)

- measures:

  (data.table) table with the properties of the available measures

- sector:

  (string) a vector with the farm type given the agricultural sector
  (options: 'diary', 'arable', 'tree_nursery', 'bulbs')

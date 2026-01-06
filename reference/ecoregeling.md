# Calculate the Ecoregeling scores on field and farm level

Estimate the potential to contribute to agronomic and environmental
challenges in a region for a farm and assess the impact of farm measures
taken. A high Ecoregeling score is indicative for the number of
opportunities to improve soil quality, water quality, climate
biodiversity and landscape.

## Usage

``` r
ecoregeling(
  B_SOILTYPE_AGR,
  B_LU_BRP,
  B_LU_BBWP,
  B_GWL_CLASS,
  B_SLOPE_DEGREE,
  B_AER_CBS,
  B_LU_ARABLE_ER,
  B_LU_PRODUCTIVE_ER,
  B_LU_CULTIVATED_ER,
  A_P_SG,
  D_SA_W,
  B_AREA,
  M_DRAIN,
  farmscore,
  measures,
  sector,
  output = "scores",
  medalscore = "gold",
  pdf = FALSE
)
```

## Arguments

- B_SOILTYPE_AGR:

  (character) The type of soil

- B_LU_BRP:

  (numeric) The crop code (gewascode) from the BRP

- B_LU_BBWP:

  (character) The BBWP category used for allocation of measures to BBWP
  crop categories

- B_GWL_CLASS:

  (character) The groundwater table class

- B_SLOPE_DEGREE:

  (numeric) The slope of the field (degrees)

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- B_LU_ARABLE_ER:

  (boolean) does the crop fall within the ER category "arable"

- B_LU_PRODUCTIVE_ER:

  (boolean) does the crop fall within the ER category "productive"

- B_LU_CULTIVATED_ER:

  (boolean) does the crop fall within the ER category "cultivated"

- A_P_SG:

  (numeric) The P-saturation index (%)

- D_SA_W:

  (numeric) The wet perimeter index of the field, fraction that field is
  surrounded by water

- B_AREA:

  (numeric) the area of the field (m2)

- M_DRAIN:

  (boolean) is there tube drainage present in the field

- farmscore:

  (numeric) The desired total ER score on farm level

- measures:

  (data.table) The measures planned / done per fields

- sector:

  (string) a vector with the farm type given the agricultural sector
  (options: options: 'diary', 'arable', 'tree_nursery', 'bulbs')

- output:

  (string) a vector specifying the output type of the function. Options:
  scores, measures

- medalscore:

  (character) The desired medal score expressed as bronze, silver or
  gold

- pdf:

  (boolean) add table with summary of all measures taken for pdf.
  Options: TRUE or FALSE

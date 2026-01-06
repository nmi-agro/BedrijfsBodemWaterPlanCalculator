# Rank the suitability of agronomic measures to improve soil and water management for a given field

Estimate the score for agronomic measures to improve soil and water
management on agricultural farms. And send an ordered list back of the
most suitable measures.

## Usage

``` r
bbwp_meas_rank(
  B_SOILTYPE_AGR,
  B_GWL_CLASS,
  A_P_CC,
  A_P_AL,
  B_SLOPE_DEGREE,
  B_LU_BBWP,
  B_AER_CBS,
  M_DRAIN,
  D_SA_W,
  S_BBWP_NGW,
  S_BBWP_NSW,
  S_BBWP_PSW,
  S_BBWP_NUE,
  S_BBWP_WB,
  measures,
  sector,
  B_LS_HYDROCAT,
  S_BBWP_GW
)
```

## Arguments

- B_SOILTYPE_AGR:

  (character) The type of soil

- B_GWL_CLASS:

  (character) The groundwater table class

- A_P_CC:

  (numeric) The plant available P content, measured via 0.01M CaCl2
  extraction (mg / kg)

- A_P_AL:

  (numeric) The plant extractable P content, measured via ammonium
  lactate extraction (mg / kg)

- B_SLOPE_DEGREE:

  (numeric) The slope of the field (degrees)

- B_LU_BBWP:

  (character) The BBWP category used for allocation of measures to BBWP
  crop categories

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- M_DRAIN:

  (boolean) is there tube drainage present in the field

- D_SA_W:

  (numeric) The wet perimeter index of the field, fraction that field is
  surrounded by water

- S_BBWP_NGW:

  (numeric) the BBWP score for nitrate leaching to groundwater given
  field properties (0-100, with 100 equals targets met)

- S_BBWP_NSW:

  (numeric) the BBWP score for nitrate leaching and runoff to surface
  water given field properties (0-100, with 100 equals targets met)

- S_BBWP_PSW:

  (numeric) the BBWP score for phosphorus leaching and runoff to surface
  water given field properties (0-100, with 100 equals targets met)

- S_BBWP_NUE:

  (numeric) the BBWP score for potential improvement of the efficiency
  of nitrogen and phosphorus fertilizer use given field properties
  (0-100, with 100 equals targets met)

- S_BBWP_WB:

  (numeric) the BBWP score for potential improvement of the potential to
  buffer and store water and efficiently use water for plant growth
  given field properties (0-100, with 100 equals targets met)

- measures:

  (data.table) table with the properties of the available measures

- sector:

  (string) a vector with the farm type given the agricultural sector
  (options: 'diary', 'arable', 'tree_nursery', 'bulbs')

- B_LS_HYDROCAT:

  (character) Landscape category for differentiating effect of measures
  on water buffering. (options: "hoge_gronden", "flanken", "beekdalen",
  "lokale_laagtes", "polders")

- S_BBWP_GW:

  (numeric)the BBWP score for ground water recharge

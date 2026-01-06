# Evaluate the contribution of agronomic measures to improve soil mand water management

Estimate the score for agronomic measures taken to improve soil and
water management on agricultural farms.

## Usage

``` r
bbwp_meas_score(
  B_SOILTYPE_AGR,
  B_GWL_CLASS,
  A_P_CC,
  A_P_AL,
  B_SLOPE_DEGREE,
  B_LU_BBWP,
  B_AER_CBS,
  M_DRAIN,
  D_SA_W,
  D_OPI_NGW,
  D_OPI_NSW,
  D_OPI_PSW,
  D_OPI_NUE,
  D_OPI_WB,
  measures = NULL,
  sector,
  B_LS_HYDROCAT,
  D_OPI_GW
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

  (numeric) The BBWP category used for allocation of measures to BBWP
  crop categories

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- M_DRAIN:

  (boolean) is there tube drainage present in the field

- D_SA_W:

  (numeric) The wet perimeter index of the field, fraction that field is
  surrounded by water

- D_OPI_NGW:

  (numeric) the opportunity index (risk x impact) for nitrate leaching
  to groundwater given field properties

- D_OPI_NSW:

  (numeric) the opportunity index (risk x impact) for nitrate leaching
  and runoff to surface water given field properties

- D_OPI_PSW:

  (numeric) the opportunity index (risk x impact) for phosphorus
  leaching and runoff to surface water given field properties

- D_OPI_NUE:

  (numeric) the opportunity index (risk x impact) to improve the
  efficiency of nitrogen and phosphorus fertilizer use given field
  properties

- D_OPI_WB:

  (numeric) the opportunity index (risk x impact) to improve the
  potential to buffer and store water and efficiently use water for
  plant growth given field properties

- measures:

  (data.table) the measures planned / done per fields

- sector:

  (string) a vector with the farm type given the agricultural sector
  (options: 'dairy', 'arable', 'tree_nursery', 'bulbs')

- B_LS_HYDROCAT:

  (character) Landscape category for differentiating effect of measures
  on water buffering. (options: "hoge_gronden", "flanken", "beekdalen",
  "lokale_laagtes", "polders")

- D_OPI_GW:

  (numeric) the opportunity index (risk x impact) to improve the
  potential recharge groundwater

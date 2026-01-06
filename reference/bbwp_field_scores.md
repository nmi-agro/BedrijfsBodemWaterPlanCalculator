# Calculate the total score of five opportunity indicators for all fields in the Netherlands

Estimate the potential to contribute to agronomic and environmental
challenges in a region

## Usage

``` r
bbwp_field_scores(
  B_SOILTYPE_AGR,
  B_GWL_CLASS,
  A_P_CC,
  A_P_AL,
  B_SLOPE_DEGREE,
  B_LU_BBWP,
  B_AER_CBS,
  M_DRAIN,
  D_SA_W,
  D_RISK_NGW,
  D_RISK_NSW,
  D_RISK_PSW,
  D_RISK_NUE,
  D_RISK_WB,
  B_GWP,
  B_AREA_DROUGHT,
  B_CT_PSW,
  B_CT_NSW,
  B_CT_PSW_MAX = 0.5,
  B_CT_NSW_MAX = 5,
  measures,
  sector,
  penalty = TRUE,
  B_LS_HYDROCAT,
  D_RISK_GWR
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

- D_RISK_NGW:

  (numeric) the risk for nitrate leaching to groundwater given field
  properties

- D_RISK_NSW:

  (numeric) the risk for nitrate leaching and runoff to surface water
  given field properties

- D_RISK_PSW:

  (numeric) the risk for phosphorus leaching and runoff to surface water
  given field properties

- D_RISK_NUE:

  (numeric) the efficiency of nitrogen and phosphorus fertilizer use
  given field properties

- D_RISK_WB:

  (numeric) the potential to buffer and store water and efficiently use
  water for plant growth given field properties

- B_GWP:

  (boolean) is the field located in a groundwater protected area
  (options: TRUE or FALSE)

- B_AREA_DROUGHT:

  (boolean) is the field located in an area with high risks for water
  deficiencies (options: TRUE or FALSE)

- B_CT_PSW:

  (numeric) the critical target for required reduction in P loss from
  agriculture (kg P / ha) to reach targets of KRW

- B_CT_NSW:

  (numeric) the critical target for required reduction in N loss from
  agriculture (kg N / ha) to reach targets of KRW

- B_CT_PSW_MAX:

  (numeric) the max critical target for P reduction loss (kg P / ha)

- B_CT_NSW_MAX:

  (numeric) the max critical target for N reduction loss (kg N / ha)

- measures:

  (data.table) the measures planned / done per fields

- sector:

  (string) a vector with the farm type given the agricultural sector
  (options: 'dairy', 'arable', 'tree_nursery', 'bulbs')

- penalty:

  (boolean) the option to apply a penalty for high risk BBWP field
  indicators

- B_LS_HYDROCAT:

  (character) Landscape category for differentiating effect of measures
  on water buffering. (options: "hoge_gronden", "flanken", "beekdalen",
  "lokale_laagtes", "polders")

- D_RISK_GWR:

  (numeric) the risk for a negative groundwater recharge

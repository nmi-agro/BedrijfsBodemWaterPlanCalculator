# Calculate the relative impact of field properties given its position in the landscape

Estimate the relative ranking of field properties given their
contribution to nutrient losses to aquatic ecosystems as well as
nutrient and water efficiency. A high rank is indicative for the number
of opportunities to improve soil quality and land use.

## Usage

``` r
bbwp_field_properties(
  B_SOILTYPE_AGR,
  B_LU_BBWP,
  B_GWL_CLASS,
  B_SC_WENR,
  B_HELP_WENR,
  B_SLOPE_DEGREE,
  B_AER_CBS,
  A_CLAY_MI,
  A_SAND_MI,
  A_SILT_MI,
  A_SOM_LOI,
  A_N_RT,
  A_FE_OX,
  A_AL_OX,
  A_P_CC,
  A_P_AL,
  A_P_WA,
  A_P_SG,
  D_SA_W,
  D_RO_R,
  B_LSW_ID,
  LSW,
  B_LU_BRP,
  M_DRAIN,
  M_GREEN
)
```

## Arguments

- B_SOILTYPE_AGR:

  (character) The type of soil, using agronomic classification

- B_LU_BBWP:

  (character) The BBWP category used for allocation of measures to BBWP
  crop categories

- B_GWL_CLASS:

  (character) The groundwater table class

- B_SC_WENR:

  (integer) The risk for subsoil compaction as derived from risk
  assessment study of Van den Akker (2006). Options include:
  1,2,3,4,5,10,11,401,901 and 902.

- B_HELP_WENR:

  (character) The soil type abbreviation, derived from 1:50.000 soil map

- B_SLOPE_DEGREE:

  (numeric) The slope of the field (degrees)

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- A_CLAY_MI:

  (numeric) The clay content of the soil (%)

- A_SAND_MI:

  (numeric) The sand content of the soil (%)

- A_SILT_MI:

  (numeric) The silt content of the soil (%)

- A_SOM_LOI:

  (numeric) The organic matter content of the soil (%)

- A_N_RT:

  (numeric) The organic nitrogen content of the soil (mg N / kg)

- A_FE_OX:

  (numeric) The aluminium content of soil (mmol+ / kg)

- A_AL_OX:

  (numeric) The iron content of soil (mmol+ / kg)

- A_P_CC:

  (numeric) The plant available P content, measured via 0.01M CaCl2
  extraction (mg / kg)

- A_P_AL:

  (numeric) The plant extractable P content, measured via ammonium
  lactate extraction (mg / kg)

- A_P_WA:

  (numeric) The P-content of the soil extracted with water (mg P2O5 / L)

- A_P_SG:

  (numeric) The P-saturation index (%)

- D_SA_W:

  (numeric) The wet perimeter index of the field, fraction that field is
  surrounded by water

- D_RO_R:

  (numeric) The risk that surface water runs off the parcel

- B_LSW_ID:

  (character) An unique identifier for each Local Surface Water per
  field

- LSW:

  (data.table) The averaged soil properties (mean and sd) per Local
  Surface Water

- B_LU_BRP:

  (numeric) The crop code (gewascode) from the BRP

- M_DRAIN:

  (boolean) is there tube drainage present in the field

- M_GREEN:

  (boolean) A soil measure. Are catch crops sown after main crop
  (optional, option: yes or no)

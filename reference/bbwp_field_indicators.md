# Calculate five risk or opportunity indicators for an agricultural field

These include indicators: for limited efficiency of nitrogen and
phosphorus; a high risk is also indicative of high potential to improve
NUE. for the potential to buffer and store water and efficiently use
water for plant growth. for the risk for nitrogen and phosphorus
leaching and runoff to surface water. for the risk for nitrate leaching
to groundwater.

## Usage

``` r
bbwp_field_indicators(
  D_NGW_SCR,
  D_NGW_LEA,
  D_NGW_NLV,
  D_NSW_SCR,
  D_NSW_GWT,
  D_NSW_RO,
  D_NSW_SLOPE,
  D_NSW_WS,
  D_NSW_NLV,
  D_PSW_SCR,
  D_PSW_GWT,
  D_PSW_RO,
  D_PSW_SLOPE,
  D_PSW_WS,
  D_PSW_PCC,
  D_PSW_PSG,
  D_PSW_PRET,
  D_NUE_WRI,
  D_NUE_PBI,
  D_NUE_WDRI,
  D_NUE_NLV,
  D_WUE_WWRI,
  D_WUE_WDRI,
  D_WUE_WHC,
  penalty = TRUE,
  D_GW_GWR
)
```

## Arguments

- D_NGW_SCR:

  (numeric) The relative score of soil compaction risk for N loss to
  groundwater

- D_NGW_LEA:

  (numeric) The relative score of nitrate leaching risk for N loss to
  groundwater

- D_NGW_NLV:

  (numeric) The relative score of N mineralization for N loss to
  groundwater

- D_NSW_SCR:

  (numeric) The relative score of soil compaction risk for N loss to
  surface water

- D_NSW_GWT:

  (numeric) The relative score of soil wetness for N loss to surface
  water

- D_NSW_RO:

  (numeric) The relative score of runoff risks for N loss to surface
  water

- D_NSW_SLOPE:

  (numeric) The relative score of runoff risks for N loss to surface
  water given slope

- D_NSW_WS:

  (numeric) The relative score of wet surrounding for N loss to surface
  water

- D_NSW_NLV:

  (numeric) The relative score of N mineralization for N loss to surface
  water

- D_PSW_SCR:

  (numeric) The relative score of soil compaction risk for P loss to
  surface water

- D_PSW_GWT:

  (numeric) The relative score of soil wetness for P loss to surface
  water

- D_PSW_RO:

  (numeric) The relative score of runoff risks for P loss to surface
  water

- D_PSW_SLOPE:

  (numeric) The relative score of runoff risks for P loss to surface
  water given slope

- D_PSW_WS:

  (numeric) The relative score of wet surrounding for P loss to surface
  water

- D_PSW_PCC:

  (numeric) The relative score of P levels in soil solution for P loss
  to surface water

- D_PSW_PSG:

  (numeric) The relative score of P saturation degree for P loss to
  surface water

- D_PSW_PRET:

  (numeric) The relative score of P retention capacity for P loss to
  surface water

- D_NUE_WRI:

  (numeric) The relative score of soil water stress for improved
  efficiency of N and P inputs

- D_NUE_PBI:

  (numeric) The relative score of P availability for improved efficiency
  of N and P inputs

- D_NUE_WDRI:

  (numeric) The relative score of drought stress for improved efficiency
  of N and P inputs

- D_NUE_NLV:

  (numeric) The relative score of N mineralization for improved
  efficiency of N and P inputs

- D_WUE_WWRI:

  (numeric) The relative score of soil wetness stress for improved
  efficiency of water

- D_WUE_WDRI:

  (numeric) The relative score of drought stress for improved efficiency
  of water

- D_WUE_WHC:

  (numeric) The relative score of drought stress for improved efficiency
  of water

- penalty:

  (boolean) the option to apply a penalty for high risk BBWP field
  indicators

- D_GW_GWR:

  (numeric) The evaluated score for groundwater recharge

## Value

A data.table with five columns: D_RISK_NGW, D_RISK_NSW, D_RISK_PSW,
D_RISK_NUE, and D_RISK_WB. The number of rows corresponds with the
number of fields given as input i.e. the length of the vector inputs

## Details

bbwp_field_indicators is typically called after
[bbwp_field_properties](https://agrocares.github.io/BedrijfsBodemWaterPlanCalculator/reference/bbwp_field_properties.md)
which calculates the inputs for bbwp_field_indicators

## Examples

``` r
# example with 6 fields
bbwp_field_indicators(
D_NGW_SCR = seq(0, 1, by = 0.2),
D_NGW_LEA = seq(0, 1, by = 0.2),
D_NGW_NLV = seq(0, 1, by = 0.2),
D_NSW_SCR = seq(0, 1, by = 0.2),
D_NSW_GWT = seq(0, 1, by = 0.2),
D_NSW_RO = seq(0, 1, by = 0.2),
D_NSW_WS = seq(0, 1, by = 0.2),
D_NSW_NLV = seq(0, 1, by = 0.2),
D_NSW_SLOPE = seq(0, 1, by = 0.2),
D_PSW_SCR = seq(0, 1, by = 0.2),
D_PSW_GWT = seq(0, 1, by = 0.2),
D_PSW_RO = seq(0, 1, by = 0.2),
D_PSW_WS = seq(0, 1, by = 0.2),
D_PSW_PCC = seq(0, 1, by = 0.2),
D_PSW_PSG = seq(0, 1, by = 0.2),
D_PSW_PRET = seq(0, 1, by = 0.2),
D_PSW_SLOPE = seq(0,1,by = 0.2),
D_NUE_WRI = seq(0, 1, by = 0.2),
D_NUE_PBI = seq(0, 1, by = 0.2),
D_NUE_WDRI = seq(0, 1, by = 0.2),
D_NUE_NLV = seq(0, 1, by = 0.2),
D_WUE_WWRI = seq(0, 1, by = 0.2),
D_WUE_WDRI = seq(0, 1, by = 0.2),
D_WUE_WHC = seq(0, 1, by = 0.2),
penalty = FALSE,
D_GW_GWR = seq(0, 1, by = 0.2)
)
#>    D_RISK_NGW D_RISK_NSW D_RISK_PSW D_RISK_NUE D_RISK_WB D_RISK_GWR
#>         <num>      <num>      <num>      <num>     <num>      <num>
#> 1:        0.0       0.01       0.01        0.0       0.0        0.0
#> 2:        0.2       0.10       0.10        0.2       0.2        0.2
#> 3:        0.4       0.40       0.40        0.4       0.4        0.4
#> 4:        0.6       0.60       0.60        0.6       0.6        0.6
#> 5:        0.8       0.80       0.80        0.8       0.8        0.8
#> 6:        1.0       1.00       1.00        1.0       1.0        1.0
```

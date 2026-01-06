# Agronomic measures that can be applied

This table contains a series of agronomic measures, their applicability
and effectiveness for multiple ecosystem services

## Usage

``` r
bbwp_measures
```

## Format

An object of class `data.table` (inherits from `data.frame`) with 169
rows and 72 columns.

## Details

- bbwp_id:

  The unique BBWP measure id based on the van Gerven number of the
  measure, related to the study by Van Gerven et al. (2020)

- nr_mok:

  A mock up code for bbwp measure id

- boot22_id:

  The measure id refering to the measure code on the Dutch "BOOT-lijst
  2022"

- eco_id:

  The unique Ecoregeling measure id

- summary:

  A short explanation of the measure

- description:

  An elaborate description of the measure

- url:

  The URL refers to a web resource containing a fact sheet of the
  specific measure

- level:

  The spatial scale at which the measure is valid: "field" or "farm"

- category:

  The measure category, choices: "teeltmaatregel", "bodemverbetering",
  "bedrijf", "slootkantbeheer", "gewasbescherming", "precisiebemesting",
  "niet_productief", "watervasthouden", or "erf"

- dairy:

  Applicability of the measure in the dairy sector

- arable:

  Applicability of the measure in the arable sector

- vegetables_outdoor:

  Applicability of the measure in the (outdoor) vegetables sector

- bulbs:

  Applicability of the measure in the bulb sector

- tree_nursery:

  Applicability of the measure on tree nurseries

- sand:

  Applicability of the measure on sandy soils

- loess:

  Applicability of the measure on loess soils

- clay:

  Applicability of the measure on clay soils

- peat:

  Applicability of the measure on peat soils

- psw_psg_low:

  Additional impact on the effectiveness of the measure for P losses to
  surface water when the P saturation index is low

- psw_psg_medium:

  Additional impact on the effectiveness of the measure for P losses to
  surface water when the P saturation index is medium

- psw_psg_high:

  Additional impact on the effectiveness of the measure for P losses to
  surface water when the P saturation index is high

- nsw_drains:

  Additional impact on the effectiveness of the measure for N losses to
  surface water on fields with drainage

- nsw_nodrains:

  Additional impact on the effectiveness of the measure for N losses to
  surface water on fields without drainage

- nsw_gwl_high:

  Additional impact on the effectiveness of the measure for N losses to
  surface water under high groundwater level conditions

- nsw_gwl_low:

  Additional impact on the effectiveness of the measure for N losses to
  surface water under low groundwater level conditions

- psw_noslope:

  Additional impact on the effectiveness of the measure for P losses to
  surface water when there is no slope

- psw_bulbs:

  Additional impact on the effectiveness of the measure for P losses to
  surface water when applied on a bulb field

- ngw_grassland:

  Additional impact on the effectiveness of the measure for N losses to
  groundwater on grasslands

- p_ow:

  Effectiveness of the measure on total P load in surface water

- p_ow2:

  Effectiveness of the measure on P concentration in ditch

- n_ow:

  Effectiveness of the measure on total N load in surface water

- n_ow2:

  Effectiveness of the measure on N concentration in ditch

- effect_ngw:

  Effectiveness of the measure for nitrate losses to groundwater

- effect_psw:

  Effectiveness of the measure for P losses to surface water

- effect_nsw:

  Effectiveness of the measure for N losses to surface water

- effect_nue:

  Effectiveness of the measure for improving nutrient use efficiency

- effect_gw:

  Effectiveness of the measure to improve groundwater recharge

- effect_costs:

  Index representing the costs for implementing the measure

- b_lu_arable_er:

  Boolean indicating whether the crop falls within the ER category
  "arable"

- b_lu_productive_er:

  Boolean indicating whether the crop falls within the ER category
  "productive"

- b_lu_cultivated_er:

  Boolean indicating whether the crop falls within the ER category
  "cultivated"

- er_climate:

  The measure impact score for eco theme climate

- er_soil:

  The measure impact score for eco theme soil

- er_water:

  The measure impact score for eco theme water

- er_landscape:

  The measure impact score for eco theme landscape

- er_biodiversity:

  The measure impact score for eco theme biodiversity

- er_euro_ha:

  The estimated costs of the measure per hectare (euro/ha)

- er_euro_farm:

  The estimated costs of measures per farm (euro/farm)

- bbwp_conflict:

  Code indicating measure conflict: measures with same bbwp_conflict
  code are conflicting

- acc_anlb:

  Indicator specifying how score and reward need to adjust when measure
  is already applied with Dutch ANLB, choices: "none", "score only",
  "reward only", "both score and reward"

- acc_glmc:

  Indicator specifying how score and reward need to adjust when measure
  is already applied with Dutch GLMC, choices: "none", "score only",
  "reward only", "both score and reward"

- regio_factor:

  Boolean specifying whether regional correction on measure costs based
  on agricultural economic region is required

- bodemkwaliteit:

  Boolean specifying whether measure greatly contributes to eco theme
  soil

- waterkwaliteit:

  Boolean specifying whether measure greatly contributes to eco theme
  water

- klimaat:

  Boolean specifying whether measure greatly contributes to eco theme
  climate

- biodiversiteit:

  Boolean specifying whether measure greatly contributes to eco theme
  biodiversity

- landschap:

  Boolean specifying whether measure greatly contributes to eco theme
  landscape

- nc1:

  Applicability of the measure on crop category "gras_permanent"

- nc2:

  Applicability of the measure on crop category "gras_tijdelijk"

- nc3:

  Applicability of the measure on crop category "rustgewas"

- nc4:

  Applicability of the measure on crop category "rooivrucht"

- nc5:

  Applicability of the measure on crop category "groenten"

- nc6:

  Applicability of the measure on crop category "bollensierteelt"

- nc7:

  Applicability of the measure on crop category "boomfruitteelt"

- nc8:

  Applicability of the measure on crop category "natuur"

- nc9:

  Applicability of the measure on crop category "mais"

- nc10:

  Applicability of the measure on crop category "randensloot"

- nc11:

  Applicability of the measure on crop category "vanggewas"

- nc12:

  Applicability of the measure on crop category "eiwitgewas"

- categories:

  Eco and/or BBWP categories to which the measure greatly contributes

- hoge_gronden:

  weighing factor of effect_wb for the landscape category hoge gronden

- flanken:

  weighing factor of effect_wb for the landscape category flanken

- beekdalen:

  weighing factor of effect_wb for the landscape category beekdalen

- lokale_laagtes:

  weighing factor of effect_wb for the landscape category lokale laagtes

- polders:

  weighing factor of effect_wb for the landscape category polders

- effect_wb:

  Effectiveness of the measure to improve water holding capacity of soil

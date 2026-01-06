# An overview of crop lists used in Ecoregelingen

This table contains the crop ids (B_LU_BRP) with applicability on ER
categories arable, productive and cultivated

## Usage

``` r
er_crops
```

## Format

An object of class `data.table` (inherits from `data.frame`) with 525
rows and 6 columns.

## Details

- B_LU_BRP:

  The Dutch crop code from the BRP

- B_LU_NAME:

  The Dutch crop name

- B_LU_BBWP:

  The Dutch BBWP category used for allocation of measures to BBWP crop
  categories

- B_LU_ARABLE_ER:

  (boolean) indication whether the crop falls within the ER category
  "arable"

- B_LU_PRODUCTIVE_ER:

  (boolean) indication whether the crop falls within the ER category
  "productive"

- B_LU_CULTIVATED_ER:

  (boolean) indication whether the crop falls within the ER category
  "cultivated"

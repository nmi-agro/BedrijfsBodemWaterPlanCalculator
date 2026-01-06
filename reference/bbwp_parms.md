# A table with the BBWP parameters

This table contains the BBWP variables and their possible values
according to pandex to standardize checks

## Usage

``` r
bbwp_parms
```

## Format

An object of class `data.table` (inherits from `data.frame`) with 26
rows and 14 columns.

## Details

- code:

  The parameter code

- parameter:

  Brief description of the parameter

- unit:

  The unit of the parameter if applicable

- product:

  Data classifier, A = Soil measurements, B = Environmental
  characteristics, D = Soil or feed characteristics derived from
  soil/feed measurements, M = Soil management measures, S = Scores, RM =
  Recommendations (measures/gifts), I = Indicators, F = Feed
  measurements, P = soil amendment product

- element:

  Indicates the chemical element or parameter name

- method1:

  Method used to determine value

- method2:

  Additional details on method

- data_type:

  Type of data the parameter pertains to: numeric, integer, char, bool,
  geom, enum

- value_min:

  Lowest possible value the parameter may have if numeric or integer

- value_max:

  Highest possible value the parameter may have if numeric or integer

- explanation:

  Some additional explanation

- enum:

  boolean whether parameter values are drawn from a limited set

- options:

  Allowed values for a parameter of type enum seperated by "\|\|"

- choices:

  Vectorized version of options

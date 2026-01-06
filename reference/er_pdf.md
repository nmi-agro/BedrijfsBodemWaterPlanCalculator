# Make table of measures that generated scores

Present each measure that generated scores on field and/or farm level in
table format with scores for soil quality, water quality, climate,
biodiversity and landscape given soil type.

## Usage

``` r
er_pdf(
  croprotation,
  measurescores,
  dt.field.measures,
  dt.farm.measures,
  B_AREA
)
```

## Arguments

- croprotation:

  (boolean) is the pdf requested in function er_croprotation

- measurescores:

  (boolean) is the pdf requested in function er_meas_scores

- dt.field.measures:

  (datatable) field measures

- dt.farm.measures:

  (datatable) farm measures

- B_AREA:

  (numeric) the area of the field (m2)

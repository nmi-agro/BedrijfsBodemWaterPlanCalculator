library(data.table)
library(usethis)

# Convert csv to RDA
bbwp_measures <- fread('data-raw/bbwp_measures.csv')
use_data(bbwp_measures, overwrite = TRUE)
fwrite(bbwp_measures, 'data-raw/bbwp_measures.csv')
# THis script prepares BBWP measure table

# load packages
require(data.table);library(usethis)

# -- prepare measures table -----

# load measures table 
# changes of measure tables were made in another Github Repo and saved elsewhere.
# the newest CSV is copied to data-raw of this Repo
bbwp_measures <- fread('data-raw/bbwp_measures.csv', encoding = 'UTF-8')

# # write bbwp_measures as a csv
# fwrite(bbwp_measures, 'data-raw/bbwp_measures.csv')

# Overwrite bbwp measure table
use_data(bbwp_measures, overwrite = TRUE)
  

  
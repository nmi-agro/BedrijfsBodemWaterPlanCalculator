# THis script prepares BBWP measure table

# load packages
require(data.table);library(usethis)

# -- prepare measures table -----

# load measures table 
# changes of measure tables were made in Github Repo NMI-DATA_scripts/bbwp
# Resulting tables are stored in NMI-DATA\maatregelen\bbwp\data
# and the newest one is copied to data-raw of this Repo
bbwp_measures <- fread('data-raw/bbwp_measures.csv', encoding = 'UTF-8')

# # write bbwp_measures as a csv
# fwrite(bbwp_measures, 'data-raw/bbwp_measures.csv')

# Overwrite bbwp measure table
use_data(bbwp_measures, overwrite = TRUE)
  

  
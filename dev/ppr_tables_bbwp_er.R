# THis script prepare tables for Eco-regeninge module

# load packages
require(data.table);library(usethis)

# -- prepare table for which ER measures can be used on which crops ----

# load in csv  
er_measures <- fread('data_raw/eco_brp.csv', encoding = 'UTF-8')

# remove brp codes that do not occur in pandex
er_measures <- er_measures[B_LU_BRP < 7000 & B_LU_BRP != 305,]

# add a column with applicability
er_measures[, eco_app := 1]

# save measures as bbwp table
use_data(er_measures, overwrite = TRUE)


# -- prepare ecoregeling objectives ----

# load in csv
er_scoring <- as.data.table(fread('data_raw/220519 ecorelingen opgave.csv',dec=','))

# save measures as bbwp table
use_data(er_scoring, overwrite = TRUE)

# -- prepare table for scores per farm-measure ----

# load in csv
er_farm_measure <- as.data.table(fread('data_raw/220517 farm measures.csv',dec=','))

# save measures as bbwp table
use_data(er_farm_measure, overwrite = TRUE)

# -- prepare crop specific tables for Ecoregelingen ----

er_crops <- pandex::b_lu_brp[,.(B_LU_BRP, B_LU_NAME, B_LU_BBWP, B_LU_ARABLE_ER, B_LU_PRODUCTIVE_ER, B_LU_CULTIVATED_ER)]

# save measures as bbwp table
usethis::use_data(er_crops, overwrite = TRUE)
fwrite(er_crops, 'data_raw/er_crops.csv', quote = TRUE)

# -- prepare correction factors for financial reward per Agricultural Economic Region for Ecoregelingen ----

# load in csv
er_aer_reward <- as.data.table(fread('data-raw/220519 ecoregeling reward weging.csv',dec=','))

# convert UTF-8 encoded strings to latin1 if required
if('UTF-8' %in% Encoding(er_aer_reward$statname)) {
  er_aer_reward$statname <- iconv(er_aer_reward$statname, from = '', to = 'latin1')
}
# save measures as bbwp table
use_data(er_aer_reward, overwrite = TRUE)



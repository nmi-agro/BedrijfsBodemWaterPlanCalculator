
# -- prepare table for which ER measures can be used on which crops ----

# load in csv  
er_measures <- fread('data-raw/er_measures.csv', encoding = 'UTF-8')

# remove brp codes that do not occur in pandex
er_measures <- er_measures[B_LU_BRP < 7000 & B_LU_BRP != 305,]

# add a column with applicability
er_measures[, eco_app := 1]

# save measures as bbwp table
use_data(er_measures, overwrite = TRUE)
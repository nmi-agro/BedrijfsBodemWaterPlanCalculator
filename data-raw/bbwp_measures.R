library(data.table)
# -- prepare measures table -----

# load measures table
# Table was made in Github Repo 'NMI-DATA_script/bbwp/ppr_bbwp_measures.R'
# This is the table used for < version 2.3.0  
bbwp_measures <- fread('dev/measures.csv', encoding = 'UTF-8')

# save measures as bbwp table
# use_data(bbwp_measures, overwrite = TRUE)


# -- prepare measures table (with landscape category)-----

# load updated measure table, which includes weighing factor for 5 landscape category and effect_wb was updated
# (for hydrological module, made for project 2044.N.24)
# The table was made in Github Repository "NMI-DATA_scripts"
# (https://github.com/AgroCares/NMI-DATA_scripts/blob/main/watersysteem/bbwp_hydrologische_module/bbwp_hydro_meas.R)
# This is the table userd for >= version 2.3.0
bbwp_measures2 <- fread('dev/bbwp_measures.csv', encoding = 'UTF-8')

# add groundwater effect
setnames(bbwp_measures2, 'effect_wb', 'effect_gw')
bbwp_measures2 <- merge(bbwp_measures2, bbwp_measures[,.(bbwp_id, effect_wb)], by = 'bbwp_id', all.x = TRUE)

# estimate effect_wb of measures > version 2.3.0 based on similarity in bootlijst
bbwp_measures[boot22_id %in% c(bbwp_measures2[is.na(effect_wb), .(boot22_id)]), .(bbwp_id, nr_mok, boot22_id, eco_id, effect_wb)]
boot_wb_ids <- unique(bbwp_measures2[is.na(effect_wb), .(boot22_id)])
boot_wb_ids <- merge(boot_wb_ids, unique(bbwp_measures[,.(boot22_id, effect_wb)]), by = 'boot22_id')
setnames(boot_wb_ids, 'effect_wb', 'temp_effect_wb')
bbwp_measures2 <- merge(bbwp_measures2, boot_wb_ids, by = 'boot22_id', all.x = TRUE)
bbwp_measures2[is.na(effect_wb), effect_wb := temp_effect_wb]
bbwp_measures2[,temp_effect_wb := NULL]
bbwp_measures <- copy(bbwp_measures2)
rm(bbwp_measures2)

# repair effect costs which are to high
bbwp_measures[, effect_costs := as.numeric(effect_costs)]
bbwp_measures[effect_costs>3, effect_costs := effect_costs/10]

# Overwrite bbwp measure table
fwrite(bbwp_measures, 'data-raw/bbwp_measures.csv')
use_data(bbwp_measures, overwrite = TRUE)
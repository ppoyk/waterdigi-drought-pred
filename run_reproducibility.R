
renv::restore()

cat("Downloading source data files...")
source("SE1_data_access.qmd"); message("✅")
cat("Processing data...")
source("SE2_data_processing.qmd"); message("✅")


message("All output analysis notebooks have been created ✅")

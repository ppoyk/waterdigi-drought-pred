
renv::restore()

OUT_FORMAT <- "pdf"

cat("Downloading source data files...")
quarto::quarto_render("SE1_data_access.qmd", OUT_FORMAT)
message("✅")

cat("Processing data...")
quarto::quarto_render("SE2_data_processing.qmd", OUT_FORMAT)
message("✅")

message("All output analysis notebooks have been created ✅")

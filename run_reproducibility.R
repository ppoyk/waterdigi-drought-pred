# This file is the reproducibility wrapper for the WaterDigitalization-course code project.
# The environment consistency is ensured using `renv`.
# Then, all the initerdependent data analysis Quarto notebooks are rendered in the correct sequence.

# (Managing all this would have been better using Quarto's project capabilities)
# (This could be implemented later)


renv::restore()
OUT_FORMAT <- "html"
render_quiet <- TRUE

unlink("environment.RData") # start fresh

cat("Downloading source data files...")
quarto::quarto_render("SE1_data_access.qmd", OUT_FORMAT, quiet = render_quiet)
message("✅")

cat("Processing data...")
quarto::quarto_render("SE2_data_processing.qmd", OUT_FORMAT, quiet = render_quiet)
message("✅")

cat("Calculating models...")
quarto::quarto_render("SE3_modelling_steps.qmd", OUT_FORMAT, quiet = render_quiet)
message("✅")

cat("Creating visualizations and the data story...")
quarto::quarto_render("SE4_results_viz.qmd", OUT_FORMAT, quiet = render_quiet)
message("✅")

cat("Building README...")
quarto::quarto_render("README.md", OUT_FORMAT, quiet = render_quiet)
message("✅")

message("All output analysis notebooks have been created ✅")
unlink("environment.RData") # clean env when finishes

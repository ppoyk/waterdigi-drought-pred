
# File to perform some maintenance tasks after a Quarto project render

# Delete the global R-env shared across .qmd s
# if (fs::file_exists("environment.RData")) {
#   fs::file_delete("environment.RData")
# }
# Wouldn't work if quarto freezing is used on the project level

# Copy the rendered (github-flavored-md) README to project root
fs::file_copy("docs/README.md", "README.md", overwrite = TRUE)

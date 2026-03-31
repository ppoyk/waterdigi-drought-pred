# A file to be run at the start of every .qmd notebook when the R environment
# (variables etc.) should be globally available.

# From: @willgryan (https://gist.github.com/willgryan/6c8bb8fe1a394917d4779d2ca7ef09e7)

### Voodoo to save and load a common environment between Quarto pages
# Load environment if it exists
if (file.exists(here::here("environment.RData"))) {
  load(here::here("environment.RData"))
}
# Hook knitr to save environment when document finishes rendering
local({
  hook_old <- knitr::knit_hooks$get("document") # Grab current hook
  knitr::knit_hooks$set(
    document = function(x) {
      save.image(file = here::here("environment.RData")) # Save environment
      hook_old(x) # Important: now call the original hook, or everything will break
    }
  )
})
### End of quarto voodoo

# Now load packages and run code you want common for each page.
suppressPackageStartupMessages({
  library("here")
  library("data.table")
  library("ggplot2")
})

# set.seed(123)

# Usage:
# ```{r}
# #| label: "common"
# #| include: FALSE
# source("_common.R")
# ```

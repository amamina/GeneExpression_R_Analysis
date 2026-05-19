# Generate valid feature variable labels
# This ensures column names are compatible with R functions
fvarLabels(gset) <- make.names(fvarLabels(gset))

# Define sample groups for comparison
# 0 = control group
# 1 = disease/treatment group
gsms <- "00000111"

# Split group string into vector format
sml <- strsplit(gsms, split = "")[[1]] 

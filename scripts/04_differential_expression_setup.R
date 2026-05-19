# Define sample groups
gs <- factor(sml)

# Assign readable group names
groups <- make.names(c("test", "control"))
levels(gs) <- groups

# Attach group info to dataset
gset$group <- gs

# Build design matrix for linear modeling
design <- model.matrix(~group + 0, gset)
colnames(design) <- levels(gs)

# Remove samples with missing expression values
gset <- gset[complete.cases(exprs(gset)), ]

# Fit linear model using limma
fit <- lmFit(gset, design)

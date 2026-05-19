# Define contrast between groups
cts <- paste(groups[1], groups[2], sep = "-")

# Create contrast matrix for linear model
cont.matrix <- makeContrasts(contrasts = cts, levels = design)

# Apply contrasts to fitted model
fit2 <- contrasts.fit(fit, cont.matrix)

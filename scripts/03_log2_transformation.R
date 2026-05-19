# Extract expression matrix
ex <- exprs(gset)

# Examine expression value distribution
qx <- as.numeric(
  quantile(
    ex,
    c(0, 0.25, 0.5, 0.75, 0.99, 1.0),
    na.rm = TRUE
  )
)

# Determine whether log2 transformation is required
LogC <- (qx[5] > 100) ||
        (qx[6] - qx[1] > 50 && qx[2] > 0)

# Apply log2 transformation if necessary
if (LogC) {
  ex[which(ex <= 0)] <- NaN
  exprs(gset) <- log2(ex)
}
# LogC returned TRUE, therefore log2 transformation was applied

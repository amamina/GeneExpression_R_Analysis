# Quality control: distribution of adjusted p-values

tT <- topTable(fit2, adjust = "fdr", sort.by = "B", number = Inf)

# Plot histogram
png("results/plots/pvalue_histogram.png", width = 800, height = 600)

hist(
  tT$adj.P.Val,
  col = "steelblue",
  border = "black",
  xlab = "Adjusted P-value",
  ylab = "Number of genes",
  main = "Distribution of Adjusted P-values"
)

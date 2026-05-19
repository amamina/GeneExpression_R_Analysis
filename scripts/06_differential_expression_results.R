# Apply empirical Bayes moderation
fit2 <- eBayes(fit2, 0.01)

# Extract top differentially expressed genes
tT <- topTable(
  fit2,
  adjust = "fdr",
  sort.by = "B",
  number = 250
)

# Select relevant annotation and statistics columns
tT <- subset(
  tT,
  select = c(
    "ID",
    "adj.P.Val",
    "P.Value",
    "t",
    "B",
    "logFC",
    "GenBank.Accession",
    "Platform_SPOTID",
    "Gene.symbol",
    "Gene.title"
  )
)

View(tT)

# Load required libraries
library(Biobase)
library(GEOquery)
library(limma)
library(umap)
library(maptools)
library(DESeq2)
library(edgeR)
library(ggplot2)

# Show session information
sessionInfo()

# Load series and platform data from GEO
gset <- getGEO(
  "GSE10500",
  GSEMatrix = TRUE,
  AnnotGPL = TRUE
)

# Select GPL8300 platform
if (length(gset) > 1) {
  idx <- grep("GPL8300", attr(gset, "names"))
} else {
  idx <- 1
}

gset <- gset[[idx]]


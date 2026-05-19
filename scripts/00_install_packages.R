# Install CRAN packages
install.packages("BiocManager")
install.packages("umap")
install.packages("maptools")
install.packages("ggplot2")

# Install Bioconductor packages
BiocManager::install(c(
  "Biobase",
  "GEOquery",
  "limma",
  "DESeq2",
  "edgeR"
))

# Check Bioconductor version
BiocManager::version() 

# Gene Expression Analysis (GEO Reproduction Study)
Differential gene expression analysis using R on GEO datasets to identify highly dysregulated genes between case and control samples.
This project reproduces and explores a differential gene expression analysis workflow provided in the Gene Expression Omnibus.
This project involves the analysis of gene expression data retrieved from the NCBI Gene Expression Omnibus (GEO) database using R.  
The main objective was to identify significantly dysregulated genes between case and control samples in a selected dataset.  
By applying statistical and visualization approaches (such as volcano plots and heatmaps), this analysis highlights potential biomarkers or molecular signatures associated with the studied condition.

# Key Tools and Packages:
- R (limma, GEOquery, ggplot2, pheatmap)
- GEO database (NCBI)
- Differential expression and visualization techniques

# Objectives:
Selected a case vs. control dataset from GEO.
- Ran the GEO-provided R pipeline locally in RStudio
- Retrieve and preprocess GEO dataset  
- Identify up- and down-regulated genes 
Understood and visualized each step of the analysis, including:
- Data normalization
- Differential expression (using limma/DESeq2)
- Interpreted the most dysregulated genes between case and control groups
- Visualize significant results through plots  

  # Original Code Source
The base R script was provided by GEO as part of their analysis tools. All interpretations, visualizations, and explanations are my own.
Reproduced and explored GEO differential expression workflow to understand the computational steps behind microarray/RNA-seq analysis.
This project reflects my growing expertise in bioinformatics, data analysis, and molecular interpretation using real-world genomic datasets.

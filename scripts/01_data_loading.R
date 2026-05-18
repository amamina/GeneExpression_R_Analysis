# load series and platform data from GEO
gset <- getGEO("GSE10500", GSEMatrix =TRUE, AnnotGPL=TRUE)
if (length(gset) > 1) idx <- grep("GPL8300", attr(gset, "names")) else idx <- 1 
gset <- gset[[idx]]


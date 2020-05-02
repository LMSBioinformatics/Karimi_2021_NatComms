#data initialisation and package loading

library(Seurat)
library(dyno)
library(ggplot2)
library(dplyr)

#setwd("<working_dir>")

plot_data <- read.csv('./data/logNormal_rep2.csv',header=TRUE,sep=",")

#rownames(plot_data) = plot_data$cell

colnames(plot_data)

factors <- read.csv('./data/factors_cd4sp_sep.csv',header=TRUE,sep=",")

new_data = t(plot_data)

rownames(factors) = factors$cell
seurat_paper <- CreateSeuratObject(counts = new_data,meta.data=factors, min.cells = 3, min.features = 1, project = "my_scRNAseq")
Idents(seurat_paper) <- "group"
dim(seurat_paper)

#generate the F-set
allmarkers = FindAllMarkers(seurat_paper,assay="RNA")
lst_t=c()
group_1=c('CD69-DP','CD69+DP','CD4+CD8low','CD4SP_mature','CD8SP')
for (i in 1:(length(group_1)-1)){
  for (j in (i+1):length(group_1)){
    markers.all = FindMarkers(seurat_paper,assay="RNA",ident.1=group_1[i],ident.2=group_1[j])
    lst1=rownames(markers.all[order(markers.all['p_val'])[1:24],])
    lst_t = unique(c(lst1,lst_t))
  }
}
length(lst_t)
write.table(lst_t, './data/seurat_rep2_degene2.txt', row.names=FALSE, quote=FALSE, sep='\t')




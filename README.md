# ScRNAseq-SMARTer-Analysis

This repository contains scripts used in the analysis of single-cell RNA-seq data generated using Smart-seq2 and SMARTer protocols from mouse thymocytes to study the order and logic of CD4 CD8 lineage choice and differentiation.


- [Alignment](###Alignment)
- [Quantification](###Quantification)
- [Analysis](###Analysis)



### Alignment

Smart-seq2 and SMARTer sequencing data were aligned with TopHat2 version 2.1.1 (Kim et al., 2013). GRCm38 (mm10) mouse genome reference was used for alignment and gene annotation from UCSC.

```

tophat2 \
	--transcriptome-index=</path/to/mm10_transcriptome_index/tophat2/genes> \
	--library-type=fr-firststrand \
	-p <num_of_threads> \
	-o </path/to/output/directory>/<sample_name> \
	/path/to/mm10_genome_index/Sequence/Bowtie2Index/genome \
	</path/to/fastq/directory>/<sample_name>_R1.fastq.gz \
	</path/to/fastq/directory>/<sample_name>_R2.fastq.gz


```



### Quantification

Read counts for genes were calculated using velocyto version 0.17 (La Manno et al., 2018) and the cell-gene count matrix obtained was used for downstream analysis.

```

code

```

### Analysis

#### Requirements:

R packages:
```
     dyno
     tidyverse
     velocyto.R
     DESeq2
     Matrix
     ggplot2
     ggpubr
     gam
     splatter
     slingshot
     DT
     Seurat
     dplyr
     ggplot2
     RColorBrewer
     scater
     scran
     knitr
     org.Mm.eg.db
     cluster
     dynamicTreeCut
     SCORPIUS
     ggpubr
     magrittr
     metaMA
     VennDiagram
     jpeg
     tiff
     cowplot
     gridExtra
     knitr
     kableExtra
```



#### 1. PCA analysis of scRNA-seq data positions selection intermediates between pre-selection and post-selection thymocytes (Figure 1)

> Refer the Rmarkdown file - 1_PCA_Figure_1.Rmd

<description>

#### 2. scRNA-seq captures maturation, activation, and lineage identity as principal components of CD4/CD8 lineage choice and differentiation (Figure 2)

> Refer the Rmarkdown file - 2_PCA_Markers_Figure_2.Rmd


#### 3. Gene expression by individual selection of known Cd4 and Cd8a co-receptor gene expression status (Figure 4)

> Refer the Rmarkdown file - 3_Heatmap_Figure_4.Rmd



#### 4. Gene expression programs associated with distinct patterns of co-receptor gene activity in selection intermediates (Figure 5)

> Refer the Rmarkdown file - 4_CoReceptor_GeneExpression_Figure_5.Rmd


#### 5. CD4 and CD8 lineage characteristics are established at different times during CD4/CD8 lineage choice and differentiation (Figure 6)

> Refer the Rmarkdown file - 5_Lineage_Characteristics_Figure_6.Rmd

#### 6. The temporal sequence of co-receptor gene expression by selection intermediates (Figure 7)

> Refer the Rmarkdown file - 6_Temporal_Sequence_TrajectoryAnalysis_Figure_7.Rmd


#### 7. Identifying gene sets

> Refer the Rmarkdown file - 7_genesets_identification.Rmd

#### Supplementary Analysis and figures

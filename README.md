# ScRNAseq-SMARTer-Analysis

This repository contains scripts used in the analysis of single-cell RNA-seq data generated using Smart-seq2 and SMARTer protocols from mouse thymocytes to study the order and logic of CD4 CD8 lineage choice and differentiation.


- [Alignment](#alignment)
- [Quantification](#quantification)
- [Analysis](#analysis)



## Alignment

Smart-seq2 and SMARTer sequencing data were aligned with TopHat2 version 2.1.1 (Kim et al., 2013). GRCm38 (mm10) mouse genome reference was used for alignment and gene annotation from UCSC.

```

tophat2 \
	--transcriptome-index=</path/to/mm10_transcriptome_index/tophat2/genes> \
	--library-type=fr-firststrand \
	-p <num_of_threads> \
	-o </path/to/output/directory>/<sample_name> \
	</path/to/mm10_genome_index/Sequence/Bowtie2Index/genome> \
	</path/to/fastq/directory>/<sample_name>_R1.fastq.gz \
	</path/to/fastq/directory>/<sample_name>_R2.fastq.gz


```



## Quantification

Read counts for genes were calculated using velocyto version 0.17 (La Manno et al., 2018) and the cell-gene count matrix obtained was used for downstream analysis.

```

velocyto run_smartseq2 \
	-d 1 \
	`find </path/to/aligned/bam/files> -name "*.bam" -print` \
	</path/to/mm10/genes.gtf> \
	-o </path/to/directory/velocyto-output>


```

## Analysis

#### Requirements:

* R
* RStudio
* R packages:

```
     cluster
     cowplot
     DESeq2
     dplyr
     DT
     dynamicTreeCut
     dyno
     gam
     ggplot2
     ggpubr
     gridExtra
     jpeg
     kableExtra
     knitr
     magrittr
     Matrix
     metaMA
     org.Mm.eg.db
     RColorBrewer
     scater
     SCORPIUS
     scran
     Seurat
     slingshot
     splatter
     tidyverse
     tiff
     velocyto.R
     VennDiagram
```


#### Figure 1: PCA analysis of scRNA-seq data positions selection intermediates between pre-selection and post-selection thymocytes

> a and b - Refer [Figure1.Rmd](Figure1.Rmd) and [Figure1.html](Figure1.html)

#### Figure 2: scRNA-seq captures maturation, activation, and lineage identity as principal components of CD4/CD8 lineage choice and differentiation

> a, b and c - Refer [Figure2_Figure6ab_SupFigure2bcde.Rmd](Figure2_Figure6ab_SupFigure2bcde.Rmd) and [Figure2_Figure6ab_SupFigure2bcde.html](Figure2_Figure6ab_SupFigure2bcde.html)


#### Figure 4: Gene expression by individual selection of known Cd4 and Cd8a co-receptor gene expression status

> a - Refer [Figure4_SupFigure2a_SupFigure5.Rmd](Figure4_SupFigure2a_SupFigure5.Rmd) and [Figure4_SupFigure2a_SupFigure5.html](Figure4_SupFigure2a_SupFigure5.html)



#### Figure 5: Gene expression programs associated with distinct patterns of co-receptor gene activity in selection intermediates

> a, c, d and f - Refer [Figure5acdf_Figure6cd_SupFigure9b.Rmd](Figure5acdf_Figure6cd_SupFigure9b.Rmd) and [Figure5acdf_Figure6cd_SupFigure9b.html](Figure5acdf_Figure6cd_SupFigure9b.html)

> b and e - Refer [Figure5be_SupFigure9c_SupFigure11.Rmd](Figure5be_SupFigure9c_SupFigure11.Rmd) and [Figure5be_SupFigure9c_SupFigure11.html](Figure5be_SupFigure9c_SupFigure11.html)



#### Figure 6: CD4 and CD8 lineage characteristics are established at different times during CD4/CD8 lineage choice and differentiation

> a and b - Refer [Figure2_Figure6ab_SupFigure2bcde.Rmd](Figure2_Figure6ab_SupFigure2bcde.Rmd) and [Figure2_Figure6ab_SupFigure2bcde.html](Figure2_Figure6ab_SupFigure2bcde.html)

> c and d - Refer [Figure5acdf_Figure6cd_SupFigure9b.Rmd](Figure5acdf_Figure6cd_SupFigure9b.Rmd) and [Figure5acdf_Figure6cd_SupFigure9b.html](Figure5acdf_Figure6cd_SupFigure9b.html)


#### Figure 7: The temporal sequence of co-receptor gene expression by selection intermediates

> a and b - Refer [Figure7ab.Rmd](Figure7ab.Rmd) and [Figure7ab.html](Figure7ab.html)

> e - Refer [Figure7e.Rmd](Figure7e.Rmd) and [Figure7e.html](Figure7e.html)

> g - Refer [Figure7g.Rmd](Figure7g.Rmd) and [Figure7g.html](Figure7g.html)


#### Identifying gene sets - F-set

> Refer the R script - [F-set_identification.R](F-set_identification.R)

#### Supplementary Analysis and figures

#### Supplementary Figure 2: Key genes and correlations

> a - Refer [Figure4_SupFigure2a_SupFigure5.Rmd](Figure4_SupFigure2a_SupFigure5.Rmd) and [Figure4_SupFigure2a_SupFigure5.html](Figure4_SupFigure2a_SupFigure5.html)

> b, c, d and e - Refer [Figure2_Figure6ab_SupFigure2bcde.Rmd](Figure2_Figure6ab_SupFigure2bcde.Rmd) and [Figure2_Figure6ab_SupFigure2bcde.html](Figure2_Figure6ab_SupFigure2bcde.html)


#### Supplementary Figure 5: Gene expression by individual selection intermediates in MHC class II-/- thymus.  

> a - Refer [Figure4_SupFigure2a_SupFigure5.Rmd](Figure4_SupFigure2a_SupFigure5.Rmd) and [Figure4_SupFigure2a_SupFigure5.html](Figure4_SupFigure2a_SupFigure5.html)


#### Supplementary Figure 9. The temporal sequence of pre- and post-selection MHC class II-/- thymocytes and selection intermediates

> b - Refer [Figure5acdf_Figure6cd_SupFigure9b.Rmd](Figure5acdf_Figure6cd_SupFigure9b.Rmd) and
[Figure5acdf_Figure6cd_SupFigure9b.html](Figure5acdf_Figure6cd_SupFigure9b.html)

> c - Refer [Figure5be_SupFigure9c_SupFigure11.Rmd](Figure5be_SupFigure9c_SupFigure11.Rmd) and [Figure5be_SupFigure9c_SupFigure11.html](Figure5be_SupFigure9c_SupFigure11.html)


#### Supplementary Figure 11. Cd4+ Cd8a- selection intermediates with NKT-like gene expression do not account for the timing of co-receptor gene expression patterns in the MHC class II-/- thymus

> a and b - Refer [Figure5be_SupFigure9c_SupFigure11.Rmd](Figure5be_SupFigure9c_SupFigure11.Rmd) and [Figure5be_SupFigure9c_SupFigure11.html](Figure5be_SupFigure9c_SupFigure11.html)

>Also, refer [SupFigure11.Rmd](SupFigure11.Rmd) and [SupFigure11.html](SupFigure11.html)

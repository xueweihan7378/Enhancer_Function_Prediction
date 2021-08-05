## This is a pipeline of generating features for machine learning prediction

- Four cell types were involved in the training datasets that have the information of true positve or true negative enhancer-gene links
* HepG2
* K562
* HCT116
* MCF7

- Four cell types were used to validate the machine learning algorithms and get the probability of being a positive enhancer-gene link for each candidate.
* GM12878
* H1
* HeLa-S3
* SK-N-SH

- Briefly, there are up to nine main features in each cell-type-specific dataset of cis enhancer-gene links. Among the nine main features, two eQTL features were obtained from GTEx databases according to the tissue type of a selected cell line, including a measure of significance and a measure of effect for eQTL data. In addition, five features of ChIP-seq data were obtained from ENCODE targeting epigenetic marks, including active enhancers (H3K27ac, H3K4me1, and binding of histone acetyltransferase P300) and actively regulated promoters (H3K4me3, H3K27ac). Last, two binary variables were generated to record if the gene in an enhancer-gene link was located nearest to the enhancer and if the enhancer was located in the gene’s introns.

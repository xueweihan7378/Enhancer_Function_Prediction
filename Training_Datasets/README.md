# Training Datasets

**There are four datasets with truelink information generated for machine learning**

*including:*
- HepG2
- K562
- HCT116
- MCF7

The method generating these datasets can be found at: https://github.com/xueweihan7378/Enhancer_Function_Prediction/tree/main/features_pipeline

*Example:*
1. Input training datasets into R
```
HepG2 <- read.delim("HepG2_notZ")
```
2. Standarize continious variables
```
#generate new dataset with truelink (outcome)
HepG2Z <- HepG2[12] 
#if blocking by gene or enhancer (otherwise skip)
HepG2Z$gene<-as.factor(HepG2$gene)

HepG2Z$H3K4me1<-((HepG2$H3K4me1-mean(HepG2$H3K4me1))/sd(HepG2$H3K4me1))
HepG2Z$eQTL_Zscore<-((HepG2$eQTL_Zscore-mean(HepG2$eQTL_Zscore))/sd(HepG2$eQTL_Zscore))
HepG2Z$coeff_abs<-((HepG2$coeff_abs-mean(HepG2$coeff_abs))/sd(HepG2$coeff_abs))
HepG2Z$H3K27ac_promoter<-((HepG2$H3K27ac_promoter-mean(HepG2$H3K27ac_promoter))/sd(HepG2$H3K27ac_promoter))

HepG2Z$H3K27ac_enhancer<-HepG2$H3K27ac_enhancer
HepG2Z$H3K4me3<-HepG2$H3K4me3
HepG2Z$nearest<-HepG2$nearest
HepG2Z$intronic_target<-HepG2$intronic
HepG2Z$truelink<-factor(HepG2Z$truelink, levels = 0:1)
```
3. Generate interaction terms:
```
HepG2Z$H3K27ac_H3K4me1 <- (HepG2Z$H3K27ac_enhancer)*(HepG2Z$H3K4me1)
HepG2Z$H3K27ac_H3K4me3 <- (HepG2Z$H3K27ac_enhancer)*(HepG2Z$H3K4me3)
HepG2Z$H3K27ac_promoterH3K27ac <- (HepG2Z$H3K27ac_enhancer)*(HepG2Z$H3K27ac_promoter)
HepG2Z$H3K4me1_H3K4me3 <- (HepG2Z$H3K4me1)*(HepG2Z$H3K4me3)
HepG2Z$H3K4me1_promoterH3K27ac <- (HepG2Z$H3K27ac_promoter)*(HepG2Z$H3K4me1)
HepG2Z$eQTL_eQTL_coeff_abs <- (HepG2Z$eQTL_Zscore)*(HepG2Z$coeff_abs)
HepG2Z$H3K27ac_H3K4me1_H3K4me3 <- (HepG2Z$H3K27ac_enhancer)*(HepG2Z$H3K4me1)*(HepG2$H3K4me3)
HepG2Z$H3K27ac_promoterH3K27ac_H3K4me1 <- (HepG2Z$H3K27ac_enhancer)*(HepG2Z$H3K27ac_promoter)*(HepG2$H3K4me1)
```
4. Look at the data structure and save datasets
```
summarizeColumns(HepG2Z)
write.table(HepG2Z, file = "HepG2Z", sep = "\t", row.names = FALSE, quote = FALSE)
```

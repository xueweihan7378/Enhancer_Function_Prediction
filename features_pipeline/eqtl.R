setwd("/Users/xueweihan/OneDrive - University of Southern California/Biostats/thesis/data/SK-N-SH/F5")

testing<-read.delim("chr1Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata1.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata1.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr2Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata2.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata2.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr3Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata3.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata3.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr4Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata4.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata4.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr5Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata5.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata5.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr6Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata6.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata6.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr7Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata7.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata7.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr8Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata8.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata8.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr9Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata9.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata9.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr10Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata10.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata10.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr11Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata11.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata11.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr12Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata12.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata12.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr13Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata13.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata13.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr14Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata14.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata14.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr15Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata15.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata15.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr16Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata16.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata16.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr17Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata17.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata17.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr18Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata18.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata18.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr19Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata19.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata19.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr20Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata20.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata20.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr21Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata21.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata21.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chr22Adrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdata22.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdata22.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("chrXAdrenal_Gland.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Adrenal_Gland'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "coeffnewdataX.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "newdataX.txt", sep = "\t", row.names = FALSE, quote = FALSE)

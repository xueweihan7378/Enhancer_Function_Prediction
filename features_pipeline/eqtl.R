testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr1Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata1.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata1.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr2Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata2.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata2.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr3Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata3.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata3.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr4Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata4.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata4.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr5Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata5.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata5.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr6Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata6.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata6.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr7Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata7.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata7.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr8Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata8.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata8.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr9Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata9.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata9.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr10Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata10.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata10.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr11Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata11.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata11.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr12Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata12.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata12.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr13Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata13.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata13.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr14Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata14.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata14.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr15Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata15.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata15.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr16Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata16.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata16.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr17Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata17.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata17.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr18Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata18.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata18.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr19Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata19.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata19.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr20Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata20.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata20.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr21Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata21.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata21.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chr22Breast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdata22.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdata22.txt", sep = "\t", row.names = FALSE, quote = FALSE)

testing<-read.delim("C:/Users/caitlinAdmin/Downloads/Pipeline/chrXBreast.allpairs.txt", header=FALSE)
colnames(testing)<-c('gene', 'variant', 'tss_distance', 'ma_samples', 'ma_count', 'maf', 'pval_nominal', 'slope', 'slope_se')
head(testing,5)
testing$tissue='Breast'
myvars <- c("variant", "gene", "slope", "tissue")
newdata <- testing[myvars]
write.table(newdata, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/breastcoeffnewdataX.txt", sep = "\t", row.names = FALSE, quote = FALSE)
myvars1 <- c("variant", "gene", "pval_nominal", "tissue")
newdata1 <- testing[myvars1]
write.table(newdata1, file = "C:/Users/caitlinAdmin/Downloads/Pipeline/newdataX.txt", sep = "\t", row.names = FALSE, quote = FALSE)

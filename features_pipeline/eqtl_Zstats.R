links <- read.delim("/Users/xueweihan/OneDrive - University of Southern California/Biostats/thesis/pre_eQTL_Breast_links", header=FALSE)
#View(links)
colnames(links)<-c('enhancer', 'gene', 'tissue', 'k', 'chistat')
head(links,5)
links$pchisq<-pchisq(links$chistat, df=(2*links$k), lower.tail=FALSE)
links$Zstat<-(sqrt(links$chistat/(2*links$k)))
#This transforms the chi-squared statistic into a Z statistic for ease of interpretability
#because the chi-squared df differ among the links.
write.table(links, file="Breast_eQTL_Zstats.txt", append = FALSE, quote=FALSE, sep = "\t", dec = ".",
            row.names = FALSE, col.names = TRUE)

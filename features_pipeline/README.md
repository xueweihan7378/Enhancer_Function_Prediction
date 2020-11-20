### This pipeline explains how to generate the dataset ascribing machine learning features of interest (to me) to all cis enhancer-gene links involving PEREGRINE enhancers and PANTHER genes. 

Here are the features:  
F1: H3K27ac (enhancer): 0/1  
F2: H3K4me1 (enhancer): score  
F3: H3K4me3 (promoter): 0/1  
F4: p300 binding (enhancer): score  
F5: eQTL: combined Z score  
F6: eQTL averaged coefficient (absolute values of original coefficients)  
F7: H3K27ac (promoters): score  
F8: nearest gene? 0/1  
F9: intronic? 0=no, 1=yes, target gene 2=yes, different gene  

### Feature 1: H3K27ac for enhancers
Download the "high H3K27ac for [cell line]" bed files in hg19 build, e,g., https://www.encodeproject.org/annotations/ENCSR370SPA/ for HepG2.
Use this Perl script to make a file with only the elements that had high peaks:
```
$ perl highstate.pl ENCFF386PZF.bed highstateout enhancer
```
See which PEREGRINE enhancers meet the 50% overlap threshold for these peaks:
```
$ bedtools intersect -wa -wb -f 0.5 -F 0.5 -e -a CREbedDBenhancers_10092018 -b highstateout > int
$ perl intersectenhancers.pl int highH3K27ac_HepG2_links H3K27ac HepG2 yes
```
The output file has the following format:
```
$ head highH3K27ac_HepG2_links
3       .       H3K27ac HepG2
12      .       H3K27ac HepG2
13      .       H3K27ac HepG2
41      .       H3K27ac HepG2
```

### Feature 2: H3K4me1 for enhancers
Download the “replicated peaks” bed file from ENCODE ChIP-seq experiments targeting H3K4me1 in hg19 build.  
Use a 50% overlap threshold to see which of the PEREGRINE enhancers overlap with these peaks:
```
$ bedtools intersect -wa -wb -f 0.5 -F 0.5 -e -a CREbedDBenhancers_10092018 -b ENCFF428FAW.bed > H3K4me1_HepG2_int
```
Use this perl script to output the enhancers that meet the 50% threshold for overlap with the H3K27ac peaks.
```
$ perl intersectenhancers.pl H3K4me1_HepG2_int H3K4me1_HepG2_links H3K4me1 HepG2 no
```
The output file format is:
```
$ head H3K4me1_HepG2_links
2       4.92004 H3K4me1 HepG2
3       5.38432 H3K4me1 HepG2
8       6.21267 H3K4me1 HepG2
13      7.09743 H3K4me1 HepG2
```

### Feature 3: H3K4me3 for promoters
Download the "high H3K4me1 for [cell line]" bed files in hg19 build, e,g., https://www.encodeproject.org/annotations/ENCSR368ISU/ for HepG2.
Use this Perl script to make a file with only the elements that had high peaks:
```
$ perl highstate.pl ENCFF579BAM.bed highstateout promoter
```
See which genes meet the 50% overlap threshold for these peaks:
```
$ bedtools intersect -wa -wb -f 0.5 -F 0.5 -e -a first500bpgenes -b highstateout > int
$ perl H3K4me3binding.pl int H3K4me3_HepG2_genes H3K4me3 pantherGeneList.txt HepG2
```
This is the output file format:
```
$ head H3K4me3_HepG2_genes
HUMAN|Ensembl=ENSG00000005189|UniProtKB=H3BM72  9_state_high    H3K4me3 HepG2
HUMAN|Ensembl=ENSG00000111780|UniProtKB=H0YIV9  9_state_high    H3K4me3 HepG2
HUMAN|Ensembl=ENSG00000141979|UniProtKB=B8ZZF3  9_state_high    H3K4me3 HepG2
HUMAN|Ensembl=ENSG00000144785|UniProtKB=F8W031  9_state_high    H3K4me3 HepG2
HUMAN|Ensembl=ENSG00000179240|UniProtKB=A0A0U1RQW1      9_state_high    H3K4me3 HepG
```
### Feature 5: eQTL combined Z score
Download the eQTL all_pairs file from GTEx (https://gtexportal.org/home/datasets) for the tissue of interest (click on GTEx Analysis V7 on the lefthand menu and select the relevant tissue under the Tissue-Specific All SNP Gene Associations aectioin) and use this perl script to separate it by chromosomes (this is a speed/memory tip):
```
$ perl splitv4.pl Artery_Coronary.allpairs.txt
```
Then run the following script in R (but make sure to change the file names to match whatever tissue you're working on and the directory to wherever the files are located).
```
eqtl.R
```
Then execute this file (but make sure to change the file names to match whatever tissue you're working on and the directory to wherever the files are located):
```
$ ./all_eqtl_bash.sh
```
which contains this for each chromosome:
```
perl eqtlprocessv2.pl newdata1.txt chr1Breast_Mammary_Tissue_eqtl_all 
perl pantherIDweed.pl chr1Breast_Mammary_Tissue_eqtl_all pantherGeneList.txt chr1Breast_Mammary_Tissue_eqtls leftovers 
perl eliminateoverlapeqtlv2.pl chr1Breast_Mammary_Tissue_eqtls exons_genes.txt chr1Breast_Mammary_Tissue_eqtl2 overlaps unmatched 
#rm newdata1.txt
bedtools intersect -wa -wb -a CREbedDBenhancers_10092018 -b chr1Breast_Mammary_Tissue_eqtl2 > chr1Breast_Mammary_Tissue_intersect 
perl eqtllinks.pl chr1Breast_Mammary_Tissue_intersect links_chr1Breast_Mammary_Tissue_eqtl tissuetable_10092018.txt pantherGeneList.txt 
perl linksDBeqtl.pl links_chr1Breast_Mammary_Tissue_eqtl linksDBeqtlchr1Breast 
rm chr1Breast_Mammary_Tissue_eqtl_all 
rm chr1Breast_Mammary_Tissue_eqtls
rm chr1Breast_Mammary_Tissue_eqtl2
rm chr1Breast_Mammary_Tissue_intersect 
```
At the end, the links_chr()Liver_eqtl files are concatenated into file Liver_links_eqtl.  
The linksDBeqtlchr()Liver files are concatenated into file Liver_links_eqtlnum.  
```
cat links_chr*Breast_Mammary_Tissue_eqtl > Breast_links_eqtl
cat linksDBeqtlchr*Breast > Breast_links_eqtlnum
```
Then run the following perl script.
```
$ perl eqtl.pl Liver_links_eqtl Liver_links_eqtlnum pre_eQTL_Liver_links
```
Then run eQTL_Zstats.R to get the final output file, Liver_eQTL_Zstats.txt.
```
$ head Liver_eQTL_Zstats.txt
enhancer        gene    tissue  k       chistat pchisq  Zstat
EH37E0330081    HUMAN|HGNC=575|UniProtKB=Q9Y587 30      1       2.81633570234595        0.244591        1.18666248410109
EH37E0437000    HUMAN|HGNC=7809|UniProtKB=P08138        30      1       1.77906392514693        0.410848        0.943150021244481
EH37E0144960    HUMAN|HGNC=4693|UniProtKB=Q16774        30      2       1.25198213681103        0.869468172454407       0.55946003807489
EH37E0594856    HUMAN|HGNC=15791|UniProtKB=Q9H490       30      1       2.65776484772833        0.264773        1.15277162693404
```
### Feature 6: eQTL averaged coefficient (absolute values of original coefficients)
Download the eQTL all_pairs file from GTEx (https://gtexportal.org/home/datasets) for the tissue of interest (click on GTEx Analysis V7 on the lefthand menu and select the relevant tissue under the Tissue-Specific All SNP Gene Associations aectioin) and use this perl script to separate it by chromosomes (this is a speed/memory tip):
```
$ perl splitv4.pl Artery_Coronary.allpairs.txt
```
Then run the following script in R (but make sure to change the file names to match whatever tissue you're working on and the directory to wherever the files are located).
```
eqtl.R
```
Then execute this file (but make sure to change the file names to match whatever tissue you're working on and the directory to wherever the files are located):
```
$ ./all_eqtl_bash.sh
```
which contains this for each chromosome:
```
perl eqtlprocessv2.pl breastcoeffnewdata1.txt chr1Breast_Mammary_Tissue_eqtl_all 
perl pantherIDweed.pl chr1Breast_Mammary_Tissue_eqtl_all pantherGeneList.txt chr1Breast_Mammary_Tissue_eqtls leftovers 
perl eliminateoverlapeqtlv2.pl chr1Breast_Mammary_Tissue_eqtls exons_genes.txt chr1Breast_Mammary_Tissue_eqtl2 overlaps unmatched 
bedtools intersect -wa -wb -a CREbedDBenhancers_10092018 -b chr1Breast_Mammary_Tissue_eqtl2 > chr1Breast_Mammary_Tissue_intersect
perl eqtllinks.pl chr1Breast_Mammary_Tissue_intersect links_chr1Breast_Mammary_Tissue_eqtlcoeff tissuetable_10092018.txt pantherGeneList.txt 
rm chr1Breast_Mammary_Tissue_eqtl_all 
rm chr1Breast_Mammary_Tissue_eqtls
rm chr1Breast_Mammary_Tissue_eqtl2
rm chr1Breast_Mammary_Tissue_intersect 
```
At the end, the links_chr()Breast_Mammary_Tissue_eqtlcoeff files are concatenated into file Breast_links_eqtlcoeff.  
```
cat links_chr*Breast_Mammary_Tissue_eqtlcoeff > Breast_links_eqtlcoeff
```
Then run the following perl script.
```
$ perl eqtlcoeff.pl Liver_links_eqtlcoeff Liver_links_eqtlnum pre_eQTL_Liver_links_coeff_abs yes
```
The output file has the format:
```
$ head pre_eQTL_Liver_links_coeff_abs
EH37E0617026    HUMAN|HGNC=1911|UniProtKB=Q13112        30      3       0.0466321523333333
EH37E0489983    HUMAN|HGNC=18753|UniProtKB=Q8NI29       30      2       0.4264625
EH37E0086258    HUMAN|HGNC=11732|UniProtKB=Q96S53       30      1       0.0273263
```

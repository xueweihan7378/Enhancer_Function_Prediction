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

#!/usr/local/bin/perl -w
use strict;

#eqtl.pl

use Time::HiRes qw(usleep ualarm gettimeofday tv_interval nanosleep clock_gettime clock_getres clock_nanosleep clock stat);
my $start_time = [Time::HiRes::gettimeofday()];
use POSIX qw(ceil floor);

#ARGV[0] is eQTL file with SNPs
#ARGV[1] is the eQTL file with number of SNPs
#ARGV[2] is the out file

open OUT, "> $ARGV[2]" or die $!;

my ($enhancer, $gene, $snp, $pval, $tissue, $assay, %snps, $link, $eqtl, $count, %out, $num, $sum, $k, $snip, $pvalue, $statistic, $none);

open (SNP,'<',$ARGV[0]) or die $!; 
#6004    HUMAN|HGNC=10779|UniProtKB=Q5T4F7       10_100074525_T_G_b37    0.628424        30      2
while (my $line=<SNP>){
	chomp $line;
	($enhancer, $gene, $snp, $pval, $tissue, $assay)=(split /\t/, $line);
	$link="$enhancer\t$gene\t$tissue";
	$eqtl="$snp\t$pval";
	$snps{$link}{$eqtl}=1;
}
close SNP;

open (NUM,'<',$ARGV[1]) or die $!; 
#enhancer        gene    tissue  number_of_eQTL  assay
#6004    HUMAN|HGNC=30031|UniProtKB=Q9BTU6       30      1       2
while (my $line=<NUM>){
	chomp $line;
	$count++;
	next if ($count==1);
	($enhancer, $gene, $tissue, $num, $assay)=(split /\t/, $line);
	$out{$line}=1;
}
close NUM;

foreach my $line (keys %out){
	($enhancer, $gene, $tissue, $num, $assay)=(split /\t/, $line);
	$link="$enhancer\t$gene\t$tissue";
	if ($link ~~ %snps){
		$sum=0;
		$k=0;
		foreach my $match (keys %{$snps{$link}}){
			($snip, $pvalue)=(split /\t/, $match);
			$sum=($sum+(log($pvalue)));
			$k++;
		}
		$statistic=(-2)*($sum);
		print OUT "$link\t$k\t$statistic\n";
	}
	else {
	print $line;
		$none++;
	}
}		
print "\nThis should be zero: $none\n";
close OUT;

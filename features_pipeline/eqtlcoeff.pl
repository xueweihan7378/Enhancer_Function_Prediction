#!/usr/local/bin/perl -w
use strict;

#eqtlcoeff.pl

use Time::HiRes qw(usleep ualarm gettimeofday tv_interval nanosleep clock_gettime clock_getres clock_nanosleep clock stat);
my $start_time = [Time::HiRes::gettimeofday()];
use POSIX qw(ceil floor);

#ARGV[0] is eQTL file with SNPs
#ARGV[1] is the eQTL file with number of SNPs
#ARGV[2] is the out file
#ARGV[3] is Abosulte value? "yes" or "no" i.e., a yes will average the absolute values of the coefficients

open OUT, "> $ARGV[2]" or die $!;

my ($enhancer, $gene, $snp, $coeff, $tissue, $assay, %snps, $link, $eqtl, $count, %out, $num, $sum, $snip, $k, $coefficient, $statistic, $none);

open (SNP,'<',$ARGV[0]) or die $!; 
#6004    HUMAN|HGNC=10779|UniProtKB=Q5T4F7       10_100074525_T_G_b37    0.628424        30      2
while (my $line=<SNP>){
	chomp $line;
	($enhancer, $gene, $snp, $coeff, $tissue, $assay)=(split /\t/, $line);
	$link="$enhancer\t$gene\t$tissue";
	if ($ARGV[3] eq "yes"){
		if ($coeff < 0){
			$coeff=abs($coeff);
		}
	}
	$eqtl="$snp\t$coeff";
	$snps{$link}{$eqtl}=1;
}
close SNP;

$count=0;
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

$none=0;
foreach my $line (sort keys %out){
	($enhancer, $gene, $tissue, $num, $assay)=(split /\t/, $line);
	$link="$enhancer\t$gene\t$tissue";
	if ($link ~~ %snps){
		$sum=0;
		$k=0;
		foreach my $match (keys %{$snps{$link}}){
			($snip, $coefficient)=(split /\t/, $match);
			$sum=($sum+($coefficient));
			$k++;
		}
		if ($k == $num){
		$statistic=($sum)/($k);
		print OUT "$link\t$k\t$statistic\n";
		}
		else {
			print "uh-oh!";
		}
	}
	else {
	print $line;
		$none++;
	}
}		
print "\nThis should be zero: $none\n";
close OUT;

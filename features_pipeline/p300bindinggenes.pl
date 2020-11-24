#!/usr/local/bin/perl -w
use strict;

#p300bindinggenes.pl

#ARGV[0] is H3K27acgenes_HepG2_int (bedtools intersect output of out1 and binding peaks)
#ARGV[1] is out
#ARGV[2] is the mark of interest e.g., H3K27ac
#ARGV[3] is pantherGeneList2020.txt
#ARGV[4] is the cell type, e.g., HepG2

use Time::HiRes qw(usleep ualarm gettimeofday tv_interval nanosleep clock_gettime clock_getres clock_nanosleep clock stat);

my $start_time = [Time::HiRes::gettimeofday()];

use POSIX qw(ceil floor);

my ($gene, $enrich, %hash, %panther, $panth, $ensg, @names);

my $mark=$ARGV[2];
my $cell=$ARGV[4];

open OUT, "> $ARGV[1]" or die $!; 

open (PAN,'<',$ARGV[3]) or die $!;
#HUMAN|HGNC=18442|UniProtKB=Q0VAF6	ENSG00000179751	Syncollin;SYCN;ortholog	SYNCOLLIN (PTHR17503:SF0)		Homo sapiens
while (my $line=<PAN>){
	chomp $line;
	($panth, $ensg)=((split /\t/, $line)[0,1]);
	@names=(split /\,/, $ensg);
	foreach my $ensg (@names){
		$panther{$ensg}=$panth;
	}
}
close PAN;

open (FILE,'<',$ARGV[0]) or die $!;
#chr1    894689  896689  ENSG00000188976 NOC2L   chr1    895722  895902  Peak_78738      11      .       3.29504 3.67478 1.86305 100
while (my $line=<FILE>){
	chomp $line;
	($gene, $enrich)=((split /\t/, $line)[3,11]);
	next unless ($gene ~~ %panther);
	$gene=$panther{$gene};
	print OUT "$gene\t$enrich\t$mark\t$cell\n";
	$hash{$gene}=1;
}
close FILE;

print scalar keys %hash;

my $diff = Time::HiRes::tv_interval($start_time);

print "\n$diff\n";
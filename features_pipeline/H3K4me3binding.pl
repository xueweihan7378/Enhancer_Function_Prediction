#!/usr/local/bin/perl -w
use strict;

#H3K4me3binding.pl

#ARGV[0] is file (bedtools intersect output of promoters and H3K4me3 binding peaks)
#ARGV[1] is out
#ARGV[2] is the mark of interest e.g., H3K4me3
#ARGV[3] is pantherGeneList2020.txt
#ARGV[4] is the cell line, e.g., HepG2

use Time::HiRes qw(usleep ualarm gettimeofday tv_interval nanosleep clock_gettime clock_getres clock_nanosleep clock stat);

my $start_time = [Time::HiRes::gettimeofday()];

use POSIX qw(ceil floor);

my ($gene, $panth, $ensg, %panther, %out, $names, @names);

my $mark=$ARGV[2];
my $cell=$ARGV[4];

open OUT, "> $ARGV[1]" or die $!; 

open (PAN,'<',$ARGV[3]) or die $!;
#HUMAN|HGNC=18442|UniProtKB=Q0VAF6	ENSG00000179751	Syncollin;SYCN;ortholog	SYNCOLLIN (PTHR17503:SF0)		Homo sapiens
while (my $line=<PAN>){
	chomp $line;
	($panth, $names)=((split /\t/, $line)[0,1]);
	@names=(split /\,/, $names);
	foreach my $gene (@names){
		$panther{$gene}=$panth;
	}
}
close PAN;

open (INT,'<',$ARGV[0]) or die $!;
#chr1    894689  896689  ENSG00000188976 NOC2L   chr1    894818  894909  EH37E1055357    0       .       894818  894909  255,205,0
while (my $line=<INT>){
	chomp $line;
	($gene)=((split /\t/, $line)[3]);
	if ($gene ~~ %panther){
		$gene=$panther{$gene};
		$out{$gene}=1;
	}
}
close INT;

foreach my $gene (sort keys %out){
	print OUT "$gene\t9_state_high\t$mark\t$cell\n";
}
close OUT;

my $diff = Time::HiRes::tv_interval($start_time);

print "\n$diff\n";
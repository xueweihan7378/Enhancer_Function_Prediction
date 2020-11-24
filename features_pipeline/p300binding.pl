#!/usr/local/bin/perl -w
use strict;

#p300binding.pl

#ARGV[0] is EP300_1 (bedtools intersect output of enhancers and p300 binding peaks)
#ARGV[1] is out
#ARGV[2] is the mark of interest e.g., p300
#ARGV[3] is the cell type, e.g. HepG2

use Time::HiRes qw(usleep ualarm gettimeofday tv_interval nanosleep clock_gettime clock_getres clock_nanosleep clock stat);

my $start_time = [Time::HiRes::gettimeofday()];

use POSIX qw(ceil floor);

my ($enh, $enrich, %hash);

my $mark=$ARGV[2];
my $cell=$ARGV[3];

open OUT, "> $ARGV[1]" or die $!; 

open (PAN,'<',$ARGV[0]) or die $!;
#chr1    101469727       101469819       41      chr1    101469707       101469910       .       1000    .       175.40901       -1.00000        4.64539 101
while (my $line=<PAN>){
	chomp $line;
	($enh, $enrich)=((split /\t/, $line)[3,10]);
	print OUT "$enh\t$enrich\t$mark\t$cell\n";
	$hash{$enh}=1;
}
close PAN;

print scalar keys %hash;

my $diff = Time::HiRes::tv_interval($start_time);

print "\n$diff\n";
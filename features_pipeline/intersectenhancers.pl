#!/usr/local/bin/perl -w
use strict;

#intersectenhancers.pl

#ARGV[0] is H3K4me1_HepG2_int (bedtools intersect output of enhancers and H3K4me1 ChIP-seq peaks)
#ARGV[1] is out
#ARGV[2] is the mark of interest e.g., H3K4me1
#ARGV[3] is the cell type, e.g. HepG2
#ARGV[4] is high state? yes or no

use Time::HiRes qw(usleep ualarm gettimeofday tv_interval nanosleep clock_gettime clock_getres clock_nanosleep clock stat);

my $start_time = [Time::HiRes::gettimeofday()];

use POSIX qw(ceil floor);

my ($enh, $enrich, %hash);

my $mark=$ARGV[2];
my $cell=$ARGV[3];
my $state=$ARGV[4];

open OUT, "> $ARGV[1]" or die $!; 

open (ONE,'<',$ARGV[0]) or die $!;
#chr1    101469727       101469819       41      chr1    101469707       101469910       .       1000    .       175.40901       -1.00000        4.64539 101
while (my $line=<ONE>){
	chomp $line;
	($enh, $enrich)=((split /\t/, $line)[3,10]);
	if ($state eq "no"){
		print OUT "$enh\t$enrich\t$mark\t$cell\n";
	}
	elsif ($state eq "yes"){
		print OUT "$enh\t.\t$mark\t$cell\n";
	}
	else {
		die "\nYou forgot to specify yes/no for the high state parameter.\n";
	}
	$hash{$enh}=1;
}
close ONE;

print "\nNumber of enhancers that intersected with the peaks: ";
print scalar keys %hash;

my $diff = Time::HiRes::tv_interval($start_time);

print "\n$diff\n";
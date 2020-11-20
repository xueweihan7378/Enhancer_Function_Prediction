#!/usr/local/bin/perl -w
use strict;

#highstate.pl

#ARGV[0] is the ENCFF file with high state designation
#ARGV[1] is out
#ARGV[2] is the element of interest e.g., enhancer or promoter

use Time::HiRes qw(usleep ualarm gettimeofday tv_interval nanosleep clock_gettime clock_getres clock_nanosleep clock stat);

my $start_time = [Time::HiRes::gettimeofday()];

use POSIX qw(ceil floor);

my ($color);

my $mark=$ARGV[2];

if ($mark eq "enhancer"){
	$mark="255,205,0";
}
elsif ($mark eq "promoter"){
	$mark="255,0,0";
}
else {
	print "problem!";
}

open OUT, "> $ARGV[1]" or die $!; 

open (PAN,'<',$ARGV[0]) or die $!;
#chr1    10244   10357   EH37E1055273    0       .       10244   10357   225,225,225
while (my $line=<PAN>){
	chomp $line;
	($color)=((split /\t/, $line)[8]);
	if ($color eq "$mark"){
		print OUT "$line\n";
	}
}
close PAN;

my $diff = Time::HiRes::tv_interval($start_time);

print "\n$diff\n";
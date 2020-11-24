#!/usr/local/bin/perl -w
use strict;

#closestgenes.pl

#ARGV[0] is closestgenes
#ARGV[1] is out
#ARGV[2] is pantherGeneList2020.txt
#ARGV[3] is genes.txt

use Time::HiRes qw(usleep ualarm gettimeofday tv_interval nanosleep clock_gettime clock_getres clock_nanosleep clock stat);

my $start_time = [Time::HiRes::gettimeofday()];

use POSIX qw(ceil floor);

my ($gene, $panth, $ensg, %panther, %out, $enhancer, $link, @ensg, $name, %name);

my $mark=$ARGV[2];

open OUT, "> $ARGV[1]" or die $!; 

open (PAN,'<',$ARGV[2]) or die $!;
#HUMAN|HGNC=33906|UniProtKB=Q075Z2	BSPH1,ENSG00000188334	Binder of sperm protein homolog 1;BSPH1;ortholog	BINDER OF SPERM PROTEIN HOMOLOG 1 (PTHR22918:SF12)		Homo sapiens
while (my $line=<PAN>){
	chomp $line;
	($panth, $ensg)=((split /\t/, $line)[0,1]);
	@ensg=(split /\,/, $ensg);
	foreach my $element (@ensg){
		$panther{$element}=$panth;
	}
}
close PAN;

open (GENE,'<',$ARGV[3]) or die $!;
#seqnames        start   end     strand  gene_id gene_type       gene_name
#chr1    69091   70008   +       ENSG00000186092.4       protein_coding  OR4F5
while (my $line=<GENE>){
	chomp $line;
	($ensg, $name)=((split /\t/, $line)[4,6]);
	$name{$ensg}=$name;
}
close GENE;
print scalar %name;

open (INT,'<',$ARGV[0]) or die $!;
#chr1    79033   79138   EH37E0064100    chr1    69091   70008   ENSG00000186092.4
while (my $line=<INT>){
	chomp $line;
	($enhancer,$gene)=((split /\t/, $line)[3,7]);
	$name=$name{$gene};
	$gene=((split /\./, $gene)[0]);
	if ($gene ~~ %panther){
		$gene=$panther{$gene};
		$link="$enhancer\t$gene";
		$out{$link}=1;
	}
	elsif($name ~~ %panther){
		$gene=$panther{$name};
		$link="$enhancer\t$gene";
		$out{$link}=1;
	}
}
close INT;

foreach my $link (sort keys %out){
	print OUT "$link\tclosest_genes\tHepG2\n";
}
close OUT;

my $diff = Time::HiRes::tv_interval($start_time);

print "\n$diff\n";
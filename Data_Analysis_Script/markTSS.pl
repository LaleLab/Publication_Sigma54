use strict;

# cutoff above which a TSS is assumed 
my $threshold = 3;


open MAP, $ARGV[0];

open SEQ, $ARGV[1];

my %mapped;

while (<MAP>) {
    chomp;
    my @fields = split(/\t/);
    # count the number of mappings for each reference sequence and position
    my $mapstring = $fields[5];
    my ($mapstart, $maptype) = ($mapstring =~ m/^(\d+)([SMDIH]{1})/);
    
    next unless ($maptype eq 'M' || $mapstart <= 2);
    
    $mapped{$fields[2]}{$fields[3]}++;
}

my %byreads;

my %passed;

foreach my $id (keys(%mapped)) {
    foreach my $pos (keys(%{$mapped{$id}})) {
	if ($mapped{$id}{$pos} >= $threshold) {
	    $passed{$id}{$pos} = $mapped{$id}{$pos};
	}
	push (@{$byreads{$mapped{$id}{$pos}}}, $id);
    }
}

my %seqs;

my $id;

while (<SEQ>) {
    $_ =~ s/\r?\n$//;

    if (m/^>(\S+)/) {
        $id = $1;
#        $id =~ s/:/_/g;
    } else {
        $seqs{$id} .= lc($_);
    }
}

foreach my $num (reverse(sort by_number(keys(%byreads)))) {
    my $hits = $#{$byreads{$num}} + 1;
    print STDERR "$num\t$hits\n";
}

print STDERR "\n\n";

foreach my $id (keys(%passed)) {
    foreach my $pos (sort by_number(keys(%{$passed{$id}}))) {
	my $seq = $seqs{$id};
	my $len = length($seq);

	if ($pos <= $len) {
	    my $tss = uc(substr($seq, ($pos - 1), 1));
	    substr($seq, ($pos - 1), 1, "$tss");
	    my $head = $id . ";position=$pos;mapped=$passed{$id}{$pos}";
	    print ">$head\n$seq\n";
	} else {
	    print STDERR "Error in $id: $pos ($passed{$id}{$pos} mapped) greater than $len\n";
	}
    }
}





sub by_number {
    $a <=> $b;
}

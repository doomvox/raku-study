#!/usr/bin/env raku
# 
# bruce_problemette_flips_but_not_flipism.raku            15 Feb 2026 

use v6;

# "steiner triple system"
my $data = q:to/END_DATA/;
ABC ADE AGF BDF BEG CDG CFE
ABC ADE AGF BDF BEG CDG EFC
ABC ADE AGF BDF BEG GDC CFE
ABC ADE AGF BDF BEG GDC EFC
END_DATA

my $sample = q:to/END_SAMP/;
00000000
00000001
00000010
00000011
END_SAMP

my @a = <ABC ADE AGF BDF BEG CDG CFE>;

for 0..127 -> $n {
#    say "n: $n";
    # convert $n to binary
    # $b = binary($n);
    my $b = $n.base(2);
    # get digits of binary
    # @d = digits(binary($n));
    my @d = $b.comb;
    my @n;
    for @d -> $d {
        for @a -> $g {
            my $n;
            if $d {
                $n = $g.flip 
            } else {
                $n = $g;
            }
            push @n, $n;
        }
    }
    say @n.join(" "), "\n";
}


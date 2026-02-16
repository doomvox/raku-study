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

# my @a = <ABC ADE AGF BDF BEG CDG CFE>;
my @a = <ABC ADE AGF>;

# for 0..127 -> $n {
for 0..7 -> $n {
    # convert $n to binary
    # $b = binary($n);
#    my $b = $n.base(2);
#    my $b = $n.fmt("%07b");
    my $b = $n.fmt("%03b");
    # get digits of binary
    # @d = digits(binary($n));
    my @d = $b.comb;


    for @d.keys -> $i {
        my @n;
        push @n, +@d[$i] ?? $_ !! .flip;
        say @n.join(" ");
    }

}


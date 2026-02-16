#!/usr/bin/env raku
# 
# bruce_triplism.raku            15 Feb 2026 

use v6;

# my @a = <ABC ADE AGF BDF BEG CDG CFE>;
my @a = <ABC ADE AGF>;
my $size = +@a;
my $f = "%0" ~ $size ~ "b";
for ^(2 ** $size) -> $n {
    my @d = $n.fmt($f).comb;
    say @d.keys.map({ +@d[$_] ?? @a[$_] !! @a[$_].flip });
}

#!/usr/bin/env raku
# 
# bruce_triplism-working_4.raku            15 Feb 2026 

use v6;

# my @a = <ABC ADE AGF BDF BEG CDG CFE>;
my @a = <ABC ADE AGF>;
my @R = ([],);
for @a.reverse -> $triple {
    @R = |@R.map({ $triple     , |$_ }),
         |@R.map({ $triple.flip, |$_ });
}
.say for @R;
'

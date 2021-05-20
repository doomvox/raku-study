#!/usr/bin/env perl6
# 
# smartmaches_and_junctions.raku            20 May 2021 

use v6;

my @lines = (
    'Mankind has been complaining about the quantity of reading matter and the scarcity of time for reading it since at least the days of Leviticus... -- J.R. Licklider',
    'Let fashion and terminology not mislead us into viewing geometry too differently from physics. -- W.V. Quine',
    'Perhaps I should not hope to convey in mere words the unutterable hideousness that can dwell in absolute silence and barren immensity. -- H.P. Lovecraft',
    );


say @lines.grep(/fashion/);
say @lines.grep(/hideousness/);

say "---";
for @lines -> $line {
    say $line if $line ~~ /fashion/;
}

my @pats = (
    rx/fashion/,
    rx/hideousness/
      );

say "---";
for @lines -> $line {
    for @pats -> $pat { 
        say $line if $line ~~ $pat;
    }
}


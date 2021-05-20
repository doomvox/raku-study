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

# say '---', $++, '---';  ## stays 0 on every invocation (?)
say '---0---';
for @lines -> $line {
    say $line if $line ~~ /fashion/;
}

my @pats = (
    rx/fashion/,
    rx/hideousness/
      );

say '---1---';
for @lines -> $line {
    for @pats -> $pat { 
        say $line if $line ~~ $pat;
    }
}

say '---2---';
for @lines -> $line {
    for @pats -> $pat { 
        say $line if $line ~~ $pat;
    }
}

say '---3---';
for @lines -> $line {
    say $line if $line ~~ any( @pats );
}

say '---4---';
my $any_pat = join '|', @pats>>.Str;
for @lines -> $line {
    say $line if $line ~~ $any_pat
}

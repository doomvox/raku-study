#!/usr/bin/env raku
# 
# deepmap_test_experiments.raku            26 Jan 2025 

use v6;
use Test;

## plan 2;

my @data = (
    { n => 1, a => 'alpha', },
    { n => 2, a => 'beta',  },
    { n => 3, a => 'gamma', },
    { n => 4, a => 'delta', },
);


{
    my @new_data = @data.deepmap({ $_+10 if $_ ~~ Numeric });
    # is-deeply( @new_data, @expected, "Testing implicit handling of non-numeric values." ); 
    # ## Cannot resolve caller infix:<eqv>(); none of these signatures matches: ...

    ## Tried that in the repl:
    ##   my @new_data_2 = @data.deepmap({ $_+10 if $_ ~~ Numeric }); 
    ##   [{a => IterationEnd, n => 11} {a => IterationEnd, n => 12} {a => 13, n => IterationEnd} {a => IterationEnd, n => 14}]

    # Theory: is-deeply can't handle "IterationEnd"

    for @new_data -> %h {
        say "\n";
        say %h;
        say '---';
        say %h.<a>;
        say %h.<a> ~~ Numeric;
        say '---';
        say %h.<n>;
        say %h.<n>.raku ~~ 'IterationEnd';
    }

    say "===";
    say @new_data.map({$_.{'a'}}).raku ~~ all('IterationEnd');
    say @new_data.map({$_.{'n'}}) ~~ all(Numeric);

}

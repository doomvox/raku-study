#!/usr/bin/env perl6
# 
# classify.raku            12 Feb 2023 

use v6;

## simple task: copy values into arrays @quant, @name

my @initial_data = ( { quant => 1, name => 'alpha', },
                     { quant => 2, name => 'beta',  },
                     { quant => 3, name => 'gamma', },
                     { quant => 4, name => 'delta', }, );


{
    my (@quant, @name);
    @initial_data.map( { @quant.push($_<quant>), @name.push($_<name>) });
    say 'quant:', @quant, ' name: ', @name;
}


{
    my (@quant, @name);
    my $i = 0;
    for @initial_data -> $dyad {
        (@quant[$i], @name[$i]) = $dyad{'quant','name'};
        $i++;
    }
    say 'quant:', @quant, ' name: ', @name;
}



#!/usr/bin/env perl6
# 
# array_of_hash_crunching.raku            07 Feb 2023 

use v6;

## basic crunching of arrays of hashes:

my @data = ( { quant => 1, name => 'alpha', },
             { quant => 2, name => 'beta',  },
             { quant => 3, name => 'gamma', },
             { quant => 4, name => 'delta', }, );


for @data -> $d {
    say $d;
}
# {name => alpha, quant => 1}
# {name => beta, quant => 2}
# {name => gamma, quant => 3}
# {name => delta, quant => 4}

for @data -> $d {
    say $d.keys;
}
# (name quant)
# (name quant)
# (quant name)
# (quant name)

my @k = @data>>.keys;
say @k; # [(name quant) (quant name) (quant name) (name quant)]

{

    say "---";
    @data.map({ say $_; });
    say "---";
    my @quant = @data.map({ $_<quant> });
    say @quant; # [1 2 3 4]
    my @name = @data.map({ $_<name> });
    say @name; # [alpha beta gamma delta]


}

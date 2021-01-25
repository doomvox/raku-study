#!/usr/bin/env perl6
# 
# 2021jan24-grammar_example_from_tutorial.pl6            24 Jan 2021 

use v6;

grammar G {
    token TOP { <thingy> .* }
    token thingy { 'Þor' }
}
 
my $match = G.parse("Þor is mighty");
say $match.raku;     # OUTPUT: «Match.new(made => Any, pos => 13, orig => "Þor is mighty",...» 
say $/.raku;         # OUTPUT: «Match.new(made => Any, pos => 13, orig => "Þor is mighty",...» 
say $/<thingy>.raku;
# OUTPUT: «Match.new(made => Any, pos => 3, orig => "Þor is mighty", hash => Map.new(()), list => (), from => 0)␤» 

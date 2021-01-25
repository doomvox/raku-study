#!/usr/bin/env perl6
# 
# 2021jan24-grammar_example_from_tutorial.pl6            24 Jan 2021 

use v6;

## Example from:
## https://docs.raku.org/language/grammar_tutorial

grammar G {
    token TOP    { <thingy> .* }
    token thingy { 'Þor' }
}
 
my $match = G.parse( "Þor is mighty" );
say $match.raku;     

## Match.new(:orig("Þor is mighty"), :from(0), :pos(13), :hash(Map.new((:thingy(Match.new(:orig("Þor is mighty"), :from(0), :pos(3)))))))

say $/.raku;         
# Match.new(:orig("Þor is mighty"), :from(0), :pos(13), :hash(Map.new((:thingy(Match.new(:orig("Þor is mighty"), :from(0), :pos(3)))))))

say $/<thingy>.raku;
# OUTPUT: «Match.new(made => Any, pos => 3, orig => "Þor is mighty", hash => Map.new(()), list => (), from => 0)␤» 

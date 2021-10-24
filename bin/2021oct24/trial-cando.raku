#!/usr/bin/env perl6
# 
# trial-cando.raku            24 Oct 2021 

use v6;


# docs:
# .signature.say for "foo".^can("comb")[0].cando: \(Cool, "o");

# say .cando: \(Cool, "o");

.signature.say for "foo".^can("comb")[0].cando: \(Cool, "o");
## OUTPUT: «(Cool $: Str $matcher, $limit = Inf, *%_)␤»

## I actually see no output from this code example... 
## doc bug?   TODO

say "===";

my $single = \'a';         # a single argument Capture 
my $plural = \('a', 42);   # a two argument Capture 
my &block = { say $^a };   # a Block object, that is a subclass of Code, taking one argument 
say &block.cando($single); # OUTPUT: «(-> $a { #`(Block|94212856419136) ... })␤» 

## Right, that's what I see:
## (-> $a { #`(Block|64751728) ... })

say &block.cando($plural); # OUTPUT: «()␤»


# ===
# Author:  doom@kzsu.stanford.edu


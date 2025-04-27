#!/usr/bin/env raku
# 
# smiley_sigs.raku            27 Apr 2025 

use v6;
## Bruce example, doing signature introspection:

## raku -e 'sub foo ( Int:D $n ) {...}; my $p1 = &foo.signature.params[0]; say $p1.type; say $p1.modifier;'

sub foo ( Int:D $n ) {...};

my $p1 = &foo.signature.params[0];
say $p1.type;         # (Int)
say $p1.modifier;     # :D

## So this thinks of the type as seperate from the modifier, the smiley


sub bar ( Nil:D $n ) {...};

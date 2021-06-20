#!/usr/bin/env perl6
# 
# function_composition_op.raku            20 Jun 2021 

use v6;

sub f($p){ say 'f'; $p / 2 }
sub g($p){ say 'g'; $p * 2 }
 
my &composed = &f ∘ &g;
say composed 2; 
# g
# f
# 2
say "---";
# equivalent to: 
say 2.&g.&f;
say "---";
# g
# f
# 2
# ---
# or to: 
say f g 2;
say &composed.arity; #  OUTPUT: «1␤» 
say &composed.count; #  OUTPUT: «1␤» 
say &composed.of;    #  OUTPUT: «(Mu)␤» 

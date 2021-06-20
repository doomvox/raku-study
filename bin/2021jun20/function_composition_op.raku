#!/usr/bin/env perl6
# 
# function_composition_op.raku            20 Jun 2021 

use v6;

sub f($p){ say 'f'; $p / 3 }
sub g($p){ say 'g'; $p * 7 }
 
my &composed = &f ∘ &g;
say composed 2; 
# g
# f
# 4.666667
say "---";
say g(2);
say f(2);
say 2.&g;
say 3.&g;

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
say &composed.arity; #  # 1
say &composed.count; #  # 1
say &composed.of;    #  # Mu   

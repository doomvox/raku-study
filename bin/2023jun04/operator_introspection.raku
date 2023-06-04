#!/usr/bin/env raku
# 
# operator_introspection.raku            04 Jun 2023 

use v6;

## https://stackoverflow.com/questions/76309515/how-to-introspect-a-raku-operator

## syntax for operator introspection

say &infix:<->.WHAT;
# (Sub+{is-pure})

## "is-pure": like a pure function.  depends on arguments, has no side-effects.

say &infix:<~>.WHAT;
# (Sub+{is-pure})


say &infix:<~>.^mro;
# ((Sub+{is-pure}) (Sub) (Routine) (Block) (Code) (Any) (Mu))


say &infix:<~>.arity;  ## 0

## bg example of arity method
# raku -e 'sub foo ( $a, $b ) {...}; say &foo.arity'
# 2


say [+](1, 2, 3); # 6
say (1, 2, 3)>>.WHAT; # (List)

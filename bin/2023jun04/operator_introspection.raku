#!/usr/bin/env raku
# 
# operator_introspection.raku            04 Jun 2023 

use v6;

## https://stackoverflow.com/questions/76309515/how-to-introspect-a-raku-operator

## syntax for operator introspection

say &infix:<->.WHAT;

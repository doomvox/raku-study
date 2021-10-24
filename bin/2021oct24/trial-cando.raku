#!/usr/bin/env perl6
# 
# trial-cando.raku            24 Oct 2021 

use v6;


# docs:
# .signature.say for "foo".^can("comb")[0].cando: \(Cool, "o");

# say .cando: \(Cool, "o");

.signature.say for "foo".^can("comb")[0].cando: \(Cool, "o");

## OUTPUT: «(Cool $: Str $matcher, $limit = Inf, *%_)␤»


# ===
# Author:  doom@kzsu.stanford.edu


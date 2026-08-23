#!/usr/bin/env raku

use Math::NumberTheory; 
my $sol = frobenius-solve([95,25], 500).grep({ $_.min ≥ 1 }).head; 
say [|$sol, 100 - $sol.sum];

#!/usr/bin/env perl6

## bruce gray example for numeric circumfix operators

multi sub circumfix:<⁅ ⁆> ( $middle ) { $middle³ }
say ⁅ 5 ⁆;

# 125


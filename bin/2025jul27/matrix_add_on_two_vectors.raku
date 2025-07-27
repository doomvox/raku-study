#!/usr/bin/env raku
# 
# matrix_add_on_two_vectors.raku            26 Jul 2025 

use v6;

## See: 
## Raku Next Steps: Hypersonic
## https://www.youtube.com/watch?v=_OMsWYLQLqU

my @a = 8, 10, 12, 14;
my @b = 1 xx +@a;
@a = @a >>+<< @b;

say @a;

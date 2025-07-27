#!/usr/bin/env raku
# 
# matrix_math.raku            26 Jul 2025 

## See: 
## Raku Next Steps: Hypersonic
## https://www.youtube.com/watch?v=_OMsWYLQLqU

use v6;

## Matrix Addition

my @m =
( 2, 4, ),
( 3, 7, ),
;

my @n =
( 12, 14, ),
( 13, 17, ),
;

{
    my @r =
    @m >>+<< @n;

    say @r;
    # [(14 18) (16 24)]
}

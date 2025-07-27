#!/usr/bin/env raku
# 
# matrix_add_on_two_vectors.raku            26 Jul 2025 

use v6;

## See: 
## Raku Next Steps: Hypersonic
## https://www.youtube.com/watch?v=_OMsWYLQLqU

{
    ## increment vector of ages 
    my @a = 8, 10, 12, 14;
    # create a vector of 1s of same length
    my @b = 1 xx +@a;
    # matrix addition, increment each element
    @a = @a >>+<< @b;

    say @a; # [9 11 13 15]
}

{
    my @a = 8, 10, 12, 14;
    my @b = 1 xx +@a;
    say @b;

    my @c = 1 xx @a.elems;
    say @c;

}

#!/usr/bin/env perl6
# 
# lazy_lists.raku            28 Mar 2021 

use v6;

{
    ## using a code block to specify the pattern of generating a sequence
    my @z = 3 , { $_ + 12 } … *; 

    for @z -> $z {
        say $z;
        last if $++ > 6;
    }

    # 3
    # 15
    # 27
    # 39
    # 51
    # 63
    # 75
    # 87
}


{
    ## Bruce Gray examples, "destructuring" lists with a for loop
    my @z = <a b c>, <d e f>;
    for @z -> @batch_of_3 {
        say @batch_of_3.join('|');
    };
    # a|b|c
    # d|e|f

    say "---";
    for @z -> ( $m, $n, $o ) {
        say "m: $m,   n: $n,   o: $o";
    };
    # m: a,   n: b,   o: c
    # m: d,   n: e,   o: f

    say "---";
    for @z -> ( Str $M, Str $N, Str $O ) {
        say "M: $M,   N: $N,   O: $O";        
    };
    # M: a,   N: b,   O: c
    # M: d,   N: e,   O: f


    my @x = ( (1, 2, 3), (4, 5, 6) );
    for @x -> ( Str $M, Str $N, Str $O ) {
        say "M: $M,   N: $N,   O: $O";        
    };
    ## Type check failed in binding to parameter '$M'; expected Str but got Int (1)

}



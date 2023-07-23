#!/usr/bin/env raku
# 
# collisions_with_unsigiled_containing_callable.raku            23 Jul 2023 

use v6;

{
    my \keyster = 'alpha';
    sub keyster {
        return 'beta';
    }
    say keyster;   # alpha
    say keyster(); # beta
}

{
    my \keyster = 'alpha';
    my sub keyster {
        return 'beta';
    }
    say keyster;   # alpha
    say keyster(); # beta
}


{
    my \keyster = sub { 'alpha' };
    my sub keyster {
        return 'beta';
    }
    say keyster;     # sub { }
    say keyster();   # beta
    say keyster();   # beta

    say "---";
    say &{ keyster }.();  # sub { }
}

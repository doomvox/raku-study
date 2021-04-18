#!/usr/bin/env perl6
# 
# slurpy_list_of_int_sigs.raku            18 Apr 2021 

use v6;

{
    sub f(*@a where {$_.all ~~ Int}) { say @a };
    f( 1, 2, 3 );
    f( 1, 2, 3, 4, 5);
    my @comfortably = 1, 2, 3, 4, 5;
    f( @comfortably );
    # [1 2 3 4 5]

    # f( 1, 01, 'wuhn' );
    #  Constraint type check failed in binding to parameter '@a'; expected anonymous constraint to be met but got Array ([1, 1, "wuhn"])
}

{
    say "---";
    sub g(@a where {$_.all ~~ Int}) { say @a };
    ## g( 1, 2, 3 );  # Too many positionals passed; expected 1 argument but got 3
    g( [ 1, 2, 3 ] ); # works, just wants one thing
    # [1 2 3]

#    g( 1, 2, 3, 4, 5);
    my @comfortably = 1, 2, 3, 4, 5;
    g( @comfortably );
    # [1 2 3 4 5]
}

{
    say "---";
    sub h( Int @a ) { say @a };
    # h( 1, 2, 3 );  
    #  Calling h(Int, Int, Int) will never work with declared signature (Int @a)
    ## Oops:
    ## h( [ 1, 2, 3 ] ); 
    #  Type check failed in binding to parameter '@a'; expected Positional[Int] but got Array ([1, 2, 3])

    my Int @comfortably = 1, 2, 3, 4, 5;
    h( @comfortably );
}




## sub f(*@a where {$_.all ~~ Int}) { say @a };

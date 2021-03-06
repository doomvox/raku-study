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

    # push @comfortably, 'numb';
    ## Type check failed in assignment to @comfortably; expected Int but got Str ("numb")

    ## hash where values have to be Int
    my Int %h_v = ( a => 1, b => 2, c => 3 );

    ## hash where keys have to be Int
    my %h_k{Int} = ( 1 => 'a', 2 => 'b', 3 => 'c' );

    ## my %h_obj{Any};
    
}





{
    ## possible simplification, doesn't seem to be working 
    say "---";
#    sub g(*@a where {$_.all ~~ Int}) { say 'here! ', @a };  ## from the docs
    sub g(*@a where *.all ~~ Int) { say 'and there! ', @a }; ## trying to simplify
# barfola:
#  Constraint type check failed in binding to parameter '@a'; expected anonymous constraint to be met but got Array ([1, 2, 3])

    g( 1, 2, 3 );  # here! [1 2 3]
    my @comfortably = 1, 2, 3, 4, 5;
    g( @comfortably );
    # [1 2 3 4 5]
}


## Bruce Gray summary of the issue, would expect both of these to be the same:

# raku -e 'sub foo (*@a where {$_.all ~~ Int}) {say @a}; foo(1,2,3);'
# [1 2 3]
# raku -e 'sub foo (*@a where *.all ~~ Int ) {say @a}; foo(1,2,3);'
# Constraint type check failed in binding to parameter '@a'; expected anonymous constraint to be met but got Array ([1, 2, 3]) 


## sub f(*@a where {$_.all ~~ Int}) { say @a };


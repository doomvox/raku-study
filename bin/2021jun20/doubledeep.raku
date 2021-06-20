#!/usr/bin/env perl6
# 
# doubledeep.raku            20 Jun 2021 

## starting over with the doubledeep.raku idea.
## Also see:
## /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021jun20/doubledeep-explorations_1.raku

## And deepmap seems promising
##    /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021jun20/deepmap.raku

use v6;

say "===";
{
    ## Point 1: there's an asymmetry between Positional and Associative,
    ## you can use .keys on both, but using the "keys" requires you know 
    ## which you're using.

    my $monsters = < godzilla mothera ghidora >;
    my $levels   = { 'godzilla' => 9, 'mothera' => 7,  'ghidora' => 10 };

    say $monsters.WHAT; # (List)
    say $levels.WHAT;   # (Hash)

    # the keys method works with Positional as well as Associative
    my @k1 = $monsters.keys;
    my @k2 = $levels.keys.sort;  # need to sort, or order might vary between runs
    say @k1; # [0 1 2]
    say @k2; # [ghidora mothera godzilla]

    # but to access an element, you need to know which it is, 
    # the syntax is different:
    { 
        say "---";
        my $k = @k1[1];
        say $monsters[ $k ]; # mothera
        # say $monsters{ $k };
        # Type List does not support associative indexing.
    }
    { 
        say "---";
        my $k = @k2[1];
        say $k; # godzilla
        say $levels{ $k }; # 9
        # say $levels[ $k ]; 
        # Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏godzilla'

        # Interesting error message. Using a string as an index tries to convert to numeric.  Both work:
        say $monsters['2']; # ghidora
        say $monsters[2];   # ghidora

        # Q: can we pull a particular pair out of a hash with numeric indexing? A: No.
        say $levels;
        # {ghidora => 10, godzilla => 9, mothera => 7}

        # say $levels[1];
        # Index out of range. Is: 1, should be in 0..0
        ## As I would've expected, "positional" indexing can't work with a hash
        ## (there's no defined order), but the error message is peculiar.
    }

}
say "===";
{
    ## Q: how do you know if you've got something like an Array or a Hash?

     my $hash = { alpha => 1, beta => 2 };
     my $array = < godzilla mothera ghidora gammera golem rhodan >;    
     say $array.WHAT; # (List)  close enough

     say "smartmaching with Associative of Positional works?";
     say "checking the hash: ";
     say "hash is Associative: ", so $hash ~~ Associative;  # hash is Associative: True
     say "hash is Positional: ",  so $hash ~~ Positional;   # hash is Positional: False
     say "array is Associative: ", so $array ~~ Associative;  # array is Associative: False
     say "array is Positional: ",  so $array ~~ Positional;   # array is Positional: True

     # but I dunno where that comes from:
     say $hash.^mro; # ((Hash) (Map) (Cool) (Any) (Mu))
}




{
    my (%h1, %h2) = define_some_structures();

    ## ...



}




sub define_some_structures {
    my  %g1   = ( 2015 => {  1 => { de => 177.00,
                                    fr => 191.25, },
                             2 => { de => 74.00,
                                    fr => 555.50, },
                          },
                  2016 => { 1 => { de => 177.00,
                                   fr => 191.25, },
                            2 => { de => 74.00,
                                   fr => 555.50, },
                          },
                );

    my  %g2   = ( 2015 => [   { de => 177.00,
                                fr => 191.25, },
                              { de => 74.00,
                                fr => 555.50, },
                          ],
                  2016 => [  { de => 177.00,
                               fr => 191.25, },
                             { de => 74.00,
                               fr => 555.50, },
                          ],
                );
    return (%g1, %g2);
}

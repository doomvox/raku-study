#!/usr/bin/env perl6
# 
# looping_over_two_parallel_arrays_via_Z.pl6            06 Mar 2021 

use v6;

## Make errors into warnings
# CATCH { default { say "CAUGHT: ", .Str; .resume } }

{
    # An idiom Andrew Shitov wrote up:
    #   https://andrewshitov.com/2020/03/16/a-couple-of-syntax-sweets-in-raku/

    my @English = <Monday Tuesday Wednesday Thursday
               Friday Saturday Sunday>;
    my @Latvian = <pirmdiena otrdiena trešdiena ceturtdiena 
               piektdiena sestdiena svētdiena>;

    # A traditional way would be to use an index:
    for 0 ..^ @English -> $index {
        say "@English[ $index ] => @Latvian[ $index ]";
    }

    # In Raku, you can use the Z meta-operator 

    for @English Z @Latvian -> ($english, $latvian) {
        say "$english is $latvian in Latvian.";
    }
}

{ 
    ## Is it clear what the Z does?
    my @alpha = <a b c>;
    my @numeric = <1 2 3>;
    my @zipped = @alpha Z @numeric;
    say @zipped;  # [(a 1) (b 2) (c 3)]

    for @zipped -> ($a, $n) {
        say "a: $a, n: $n";
    }
    # a: a, n: 1
    # a: b, n: 2
    # a: c, n: 3
}

{ 
    ## what if they're unequal lengths?  (an issue I'm always watching)
    # case 1, alpha longer
    my @alpha1   = <a b c d e>;
    my @numeric1 = <1 2 3>;
    my @zipped1 = @alpha1 Z @numeric1;
    say @zipped1;  # [(a 1) (b 2) (c 3)]


    # case 2, numeric longer
    my @alpha2   = <a b c>;
    my @numeric2 = <1 2 3 4 5>;
    my @zipped2 = @alpha2 Z @numeric2;
    say @zipped2;  # [(a 1) (b 2) (c 3)]

    ## the shorter wins (e.g. no "recycling rule" in play)
    ##  TODO: but what if you *wanted* to recycle?
}

{
    # and what if there's only one or zero or...

    my @alpha1   = <a b c d e>;
    my @numeric1 = <1>;
    my @zipped1 = @alpha1 Z @numeric1;
    say @zipped1;  #  [(a 1)]

    my @alpha1b   = <a b c d e>;
    my @numeric1b = 1;
    my @zipped1b = @alpha1b Z @numeric1b;
    say @zipped1b;  # [(a 1)]

    # one if the single item isn't an array/list?
    my @alpha1c   = <a b c d e>;
    my $numeric1c = 1;
    my @zipped1c = @alpha1c Z $numeric1c;
    say @zipped1c;  # [(a 1)]

    # and if one side is empty
    my @alpha0   = <a b c d e>;
    ## Heh: 
    # my @numeric0 = <>;
    ## Unsupported use of <>.  In Raku please use: lines() to read input, ('')
    my @numeric0 = ();
    my @zipped0 = @alpha0 Z @numeric0;
    say @zipped0;  # []
}

{
    say "---";
    my @a = < a b c >;
    my @n = < 1 2 3 >;
    my @C = < A B C >;

    my @triple = @a Z @n Z @C;
    say @triple;  # [(a 1 A) (b 2 B) (c 3 C)]
    ## Ye gods: that's an excellent DWIM, but not at all expected.

    ## This is what I would've figured:
    my @hm = ( @a Z @n ) Z @C;
    say @hm; # [((a 1) A) ((b 2) B) ((c 3) C)]

     for @a Z @n Z @C -> ( $v1, $v2, $v3 ) {
         say "v1: $v1, v2: $v2, v3: $v3";
         # v1: a, v2: 1, v3: A
         # v1: b, v2: 2, v3: B
         # v1: c, v2: 3, v3: C
     }

}




{ ## TODO extend the use of an index, cover the case where one is longer
  ##      this is a way you could manually implement "zip with recycling"

#     for 0 ..^ @English -> $index {
#         say "@English[ $index ] => @Latvian[ $index ]";
#     }

    }

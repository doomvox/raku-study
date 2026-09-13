#!/usr/bin/env raku

## Marton Polgar issue:

use v6.d;

my @b  = < bugs peter easter gloria haruhi >;
my @a = < godzilla grendel wormface blob >;

{
    (@a, @b) = (@b, @a);

    say @a;
    say @b;

    # (\Array_94720428556792 = [[] Array_94720428556792])
    # []

}


{
    (@a, @b) = @b, @a;

    say @a;
    say @b;

    # (\Array_94720428556792 = [[] Array_94720428556792])
    # []

}

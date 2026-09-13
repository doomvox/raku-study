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

{
    [@a, @b] = [@b, @a];

    say @a;
    say @b;

    # (\Array_94720428556792 = [[] Array_94720428556792])
    # []
}


{
    ## https://rakudoweekly.blog/2022/06/20/2022-25-we-will-raku/
    :(@a, @b) := (@b, @a);

    say @a;
    say @b;

    # (\Array_94720428556792 = [[] Array_94720428556792])
    # []
}

#!/usr/bin/env raku
use v6.d;

{
    my @a = <a b c>;
    my @b = 'X', 'Y', @a;
    say @b; # [X Y [a b c]]
    say @b.flat;            # (X Y [a b c])
    say @b.flat(:hammer);    # (X Y a b c)

    my @c = 'X', 'Y', [ 'a', 'b', 'c' ];
    say @c.flat;            # (X Y [a b c])
    say @d.flat(:hammer);    # (X Y a b c)


}

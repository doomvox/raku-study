#!/usr/bin/env raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/flat_hammer_slip.raku

# From back in 2018 (?!):
#  /home/doom/End/Cave/RakuStudy/Notes/notes-basic_perl6_again

# The vertical bars ...  are the "slip" 
# operator, which kind-of sort-of do flattening.  (There's 
# a subtle difference between slip and flat that I forget).


{
    # my early attempts at playing with slip and flat showed no difference:
    my @a = <aaa bbb>;
    my @b = <111 222>;

    .say for (@a, @b);
    # [aaa bbb]
    # [111 222]
    
    .say for (|@a, |@b);
    # aaa
    # bbb
    # 111
    # 222

    .say for (flat @a, @b);
    # aaa
    # bbb
    # 111
    # 222

    say (flat @a, @b).sort;
    # (111 222 aaa bbb)

    say (flat @a, @b);
    # (aaa bbb 111 222)

    say (flat @a, @b).grep({/2/});
    # (222)
}


# https://docs.raku.org/routine/flat

# Interprets the invocant as a list, flattens non-containerized
# Iterables into a flat list, and returns that list.

# ... does not flatten itemized sublists (e.g. $( a, b )


# Keep in mind Map and Hash types are Iterable and so will be
# flattened into lists of pairs.

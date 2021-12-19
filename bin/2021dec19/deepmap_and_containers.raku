#!/usr/bin/env perl6
# 
# deepmap_and_containers.raku            19 Dec 2021 

use v6;


my $a = 3;
dd $a;
$a++;
say $a;




# https://stackoverflow.com/questions/70414736/immutable-uncontainerized-elements-in-arrays-created-by-deepmap

my @a = [1, [2, 3]];
my @b = @a.deepmap: *.clone;

dd @b; # Array @b = [1, [2, 3]]

say @b;

# say @b[0].VAR.^name;     # Scalar, this is OK
# say @b[1].^name;         # Array, as expected

dd @b[1][0]; # Int

say @b[1][0].VAR.^name;  # Int, why?

# @b[0] = 4;               # this works
# @b[1][0] = 5;            # error: Cannot assign to an immutable value


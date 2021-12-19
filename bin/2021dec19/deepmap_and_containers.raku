#!/usr/bin/env perl6
# 
# deepmap_and_containers.raku            19 Dec 2021 

use v6;


my $a = 3;
dd $a; # Int $a = 3
$a++;
say $a; # 4

my $b := 3;
# $b++;
# Cannot resolve caller postfix:<++>(Int:D); the following candidates

# same as 
# 3++;

# $b = $a; # Cannot assign to an immutable value

$b := 5;
say $b; # 5

my @stuff = (1, 2, 3);
say @stuff;       # [1 2 3]
@stuff[1] = 666;  
say @stuff;       # [1 666 3]


my @stuffier := (1, 2, 3);
# @stuffier[1] = 666;   # Cannot modify an immutable List ((1 2 3))

say "---";

say [[1,2,3],[[4,5],6,7]].deepmap(* + 1);
# [[2 3 4] [[5 6] 7 8]]

say {alpha => 1, beta => 2, gamma => 3}.deepmap(* + 1);
# {alpha => 2, beta => 3, gamma => 4}

# say {alpha => 1, beta => 2, gamma => 3, delta => 'four'}.deepmap(* + 1);
# Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏four' (indicated by ⏏)

say {alpha => 1, beta => 2, gamma => 3}.deepmap({ $_ + 1 });
# {alpha => 2, beta => 3, gamma => 4}



say "===";

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


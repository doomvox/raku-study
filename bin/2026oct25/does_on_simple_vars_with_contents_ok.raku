#!/usr/bin/env perl6

use Object::Examine;

my Int $i = 666;
$i does Introspector;
# 
# Question, will we see:
# Cannot use 'does' operator on a type object Int
# A: no we don't!

say $i.menu;

# Conclusion: Rob is right.  Undefined vars behave differently than merely declared ones.  

# my Int $not_yet;
# $not_yet does Introspector;
# ## 
# ## Cannot use 'does' operator on a type object Int.

# my List $not_yet;
# $not_yet does Introspector;
# ## 
# ## Cannot use 'does' operator on a type object List.

say "===";
my List $l = (1, 2, 3);
$l does Introspector;
say $l.menu;

say "===";
my  @l = 1, 2, 3;
say @l; # [1 2 3]
say "---";

# my  $l = 23, 86, 99;
# say $l; 
# # Type check failed in assignment to $l; expected List but got Int (23)

# my Array $k = 23, 86, 99;
# say $k; 
# # Type check failed in assignment to $k; expected Array but got Int (23)


## Playing with declarations:
## an array of lists:
my List @arrayishness = ( (23, 3), (86, 4), (99, 5));
say @arrayishness;  # [(23 3) (86 4) (99 5)]


## Fundamentally different, eh:
# my Array $a;
# my Array @a;



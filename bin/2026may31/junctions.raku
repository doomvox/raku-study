#!/usr/bin/env raku

## marton's junction examples
##   https://github.com/Raku/problem-solving/issues/319

say all(1,3) > 2;    # all(False, True)
say all(1,3) <= 2;   # all(True, False)


say all(1,3) == 3;   # all(False, True)
say all(1,3) != 3;   #  True

                     # Why not: all(True, False) ?

say !(all(1,3) == 3); # True


## 

say "===";
## Checking whethers so is really saying so (silly though that might seem):
say do if ( all(1,2) > 2 )  { "case 1 is true"; } else { "case 1 is false" }; # case 1 is false

say do if ( all(1,3) != 2 ) { "case 4 is true"; }

say "---";

if ( all(True) ) { say "All truth is True!"; };   # All truth is True! 
if ( any(True) ) { say "Any truth is True!"; };   # Any truth is True! 

## if ( all(True,False) ) { say "fuggetaboutit"; } ;   # All truth is True! 

##

say "---";
say so all(1,3) == 3; # False


say "===";
# hwayne

my @l = (-1, 0, 1, 2);
if ( @l.one == 0 ) {
    say "Just one @l be zero.";  # Just one @l be zero.
}

if ( @l.one != 0 ) {
    say "negated comparison";
} else {
    say "negating truth gets you where?"; # negating truth gets you where?
}
## Okay, that much is okay.

say so (1,0,1,0).one == 0;  # False
say so (1,0,1,0).one != 0;  # True

if ( (1,0,1,0).one != 0 ) {
    say "negated comparison of a false gets you here";
} else {
    say "negating truth gets you where?"; # negating truth gets you where?
}


say "===";
# deoac via Marton 

say (1, 1).one (elem) (1..10); # one(True, True)
say (1, 1).one ∉ (1..10);      # one(False, False)
#as opposed to:
say (1, 1).one !(elem) (1..10); # True


if ( (1, 1).one (elem) (1..10) ) {   # one(True, True)
    say "truthy";
}; 

if ( (1, 1).one ∉ (1..10) ) {        # one(False, False)
    say "falsey";
};      

if ( (1, 1).one !(elem) (1..10) ) {
    say "true instead of false";  # true instead of false
}

so ((1,3,3,3)>>.&infix:<!=>( 3)).one;

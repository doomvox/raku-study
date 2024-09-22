#!/usr/bin/env raku
# 
# dollar_paren_huh.raku            22 Sep 2024 

use v6;

use CoreHackers::Sourcery;

# {
#     say $a(5);
#     $a(5) = 3;

# # Variable '$a' is not declared.  Perhaps you forgot a 'sub' if this was
# # intended to be part of a signature?
# }


# {
#     say $(5); # 5
#     $(5) = 3;
#     # Cannot modify an immutable Int (5)
# }


# say %( apple => 10 ).item.raku; # OUTPUT: ${:apple(10)}

# {
#     my $a;
#     say $a(5);  # 5
#     $a(5) = 3;
#     # Cannot modify an immutable Int (5)
# }

## like calling Any as a type coercion on 5, gives back 5 -- bruce gray


# { # This breaks:
#     my $a = 1;
#     say $a(5);  # No such method 'CALL-ME' for invocant of type 'Int'
# }

{ # works:
    my Int $a;
    say $a(5);  # 5
}


{ # breaks
    my Int $a = 1;
    say $a(5);  # No such method 'CALL-ME' for invocant of type 'Int'
}

## okay, LTA, but seriously: what would you tell 'em is going on?
## Martons point: if it's really an Int, don't say the problem is it's an Int, because that's not the problem...

## Marton: might be better if the other case failed also.

## For some reason, all agree that this should work:
## 
##   say $(5);

## "the curse of being surprisingly consistent"


# Bruce Gray:

# Possible error improvement: 
#     No such method 'CALL-ME' for invocant of type 'Int'
#       in block <unit> at -e line 1
#     Did you mean for the invocant to be a Routine?
#     If you meant to convert the argument to type `Int`, try `$a.WHAT.(5)`


## Rob's original problem, creating a container:

# $(5)

# $=5

# Marton:
# Scalar.new(5);


# Doomvox would want:
#  container(5);
#  contain(5);
#  5.contain;

# mutables instead of immute:
#  [1, 2, 3]


# Maron makes the point that returns are not consistent about mutability,
# e.g. rotor vs. categorize.
# needs documentaion?


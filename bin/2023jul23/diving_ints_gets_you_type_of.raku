#!/usr/bin/env raku
# 
# diving_ints_gets_you_type_of.raku            23 Jul 2023 

use v6;

## Bruce Gray asks the simple question, what type do you get from dividing Ints?
## Obviously, a Rat.
## Less obviously, even if it doesn't have to be a Rat?
## Yes, still a Rat.

{
    my $a = 7;
    my $b = 5;
    my $ratio = $a/$b;

    say $ratio.WHAT;  # (Rat)
}


{
    my $a = 6;
    my $b = 3;
    my $ratio = $a/$b;

    say $ratio.WHAT; # (Rat)
}

#!/usr/bin/env raku
# 
# diving_ints_gets_you_type_of.raku            23 Jul 2023 

use v6;

## Bruce Gray asks the simple question, what type do you get from dividing Ints?
## Obviously, a Rat.
## Less obviously, even if it doesn't have to be a Rat?
## A: Yes, still a Rat.

## Output types are determined by input types, not input values.

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


{
    my $a = 6;
    my $b = 3;
    my $ratio = $a/$b;

    say $ratio.narrow.WHAT; # (Int)
}


{
   my $a = 2e0;
   say $a.WHAT;        # (Num), i.e. a floating point
   say $a.narrow.WHAT; # (Int)
}

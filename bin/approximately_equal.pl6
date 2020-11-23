#!/usr/bin/env perl6
# 
# approximately_equal.pl6            22 Nov 2020 


use v6;

# https://docs.raku.org/routine/=~=
# 
# The approximately-equal operator ≅, whose ASCII variant is =~=,
# calculates the relative difference between the left-hand and
# right-hand sides and returns True if the difference is less
# than $*TOLERANCE (which defaults to 1e-15).

# However, if either side is zero then it checks that the
# absolute difference between the sides is less than $*TOLERANCE.

# Note that this operator is not arithmetically symmetrical
# (doesn't do ± Δ):

{
    my $*TOLERANCE = .1;
    say 11 =~= 10;        # OUTPUT: True
    say 11 == 10;         # OUTPUT: False
}

## it uses the relative difference, so we divide by the magnitude involved
## Q: first number, or average of first and second?
{
    say '---';
    my $*TOLERANCE = .09;
    say 11 - 10;          # OUTPUT: 1
    say (11 - 10)/11;     # OUTPUT: 0.090909

    say 11 =~= 10;        # OUTPUT: False
    say 11 == 10;         # OUTPUT: False
}

{
    say '---';
    my $*TOLERANCE = .095;
    say 11 - 10;          # OUTPUT: 1
    say (11 - 10)/11;     # OUTPUT: 0.090909

    say 11 =~= 10;        # OUTPUT: True
    say 11 == 10;         # OUTPUT: False
}

## when one side is zero, it looks at the absolute difference
{
    say "---";
    my $*TOLERANCE = .1;
    say 11 == 0;         # OUTPUT: False
    say 11 =~= 0;        # OUTPUT: False
    say .1 =~= 0;        # OUTPUT: False
    say .09 =~= 0;       # OUTPUT: True
}

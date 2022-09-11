#!/usr/bin/env perl6
# 
# subs_that_accept_nums_and_nummables.raku            11 Sep 2022 

use v6;

## And old problem I noted:

sub do_other_stuff ( IntStr $item ) {
    say $item.WHAT;
}
# do_other_stuff(3);         # Type check failed in binding to parameter '$item'; expected IntStr but got Int (3)
# do_other_stuff('foah');    # Type check failed in binding to parameter '$item'; expected IntStr but got Str ("foah")


sub do_stuffy_stuff ( IntStr(Cool) $item ) {
    say $item.WHAT;
}
# do_stuffy_stuff(3);     # This type cannot unbox to a native string: P6opaque, Int
# do_stuffy_stuff('foah');  # Too few positionals passed; expected 3 arguments but got 1


my IntStr $thing;
# $thing = 6;
# Type check failed in assignment to $thing; expected IntStr but got Int (6)
# $thing = 'hey';
# Type check failed in assignment to $thing; expected IntStr but got Str ("hey")

say $thing.WHAT;
# say $thing ~ Numeric;
# say $thing ~ String;


## special num type that takes a string that looks like a num (potentially useful?)
subset Numesque of Any where { defined .Numeric };

my Numesque $twoface;
$twoface = 3;
say $twoface + 1;  # 4 

$twoface = '3';
say $twoface + 2;  # 5

# $twoface = 'threesies';
# say $twoface;
# # Type check failed in assignment to $twoface; expected Numesque but got Str ("threesies")
# #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022sep11/subs_that_accept_nums_and_nummables.raku line 44


say $twoface.WHAT;

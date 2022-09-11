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


sub do_stuffy_stuff ( IntStr $item ) {
    say $item.WHAT;
}
# do_stuffy_stuff(3);         # Type check failed in binding to parameter '$item'; expected IntStr but got Int (3)
# do_stuffy_stuff('foah');    # Type check failed in binding to parameter '$item'; expected IntStr but got Str ("foah")

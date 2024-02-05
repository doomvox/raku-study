#!/usr/bin/env raku
# 
# subs_and_at_under.raku            04 Feb 2024 

use v6;


## in Raku you *can* pass a list to @_
{
    sub action {
        say @_;
    }
    action(1,2);  # [1 2]
}

## you 

	sub foo {
	    my ($x, $y) = @_;
	    ...
	}

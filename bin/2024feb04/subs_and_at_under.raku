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

## you can do this
{
    sub foo {
	my ($x, $y) = @_;
	say "x: $x, y: $y";
    }
    foo( 5, 7 );
}

## but we almost always would do this:
{
    sub foo ($x, $y) {
	say "x: $x, y: $y";
    }
    foo( 5, 7 );
}

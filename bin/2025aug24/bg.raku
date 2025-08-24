#!/usr/bin/env raku
# 
# bg.raku            24 Aug 2025 

use v6;

## Bruce Gray code example

sub MAIN ( *@wanted ) {
    my @nums = ^Inf;
    
    my @w = @wanted.map: { /^(\d+)\-(\d+)$/ ?? |(+$0..+$1) !! $_ };

    # Allow reverse ranges:
    # my @w = @wanted.map: { /^(\d+)\-(\d+)$/ ?? |( $0 <= $1 ?? +$0..+$1 !! reverse(+$1..$0)) !! $_ };

    say @nums[flat @w];
}

# Run like: raku x12.raku 3-5 7 9 10-12 15-13

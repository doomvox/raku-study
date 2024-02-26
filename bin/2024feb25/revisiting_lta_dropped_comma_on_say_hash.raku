#!/usr/bin/env raku
# 
# revisiting_lta_dropped_comma_on_say_hash.raku            25 Feb 2024 

use v6;


my %row = A => 1;

{
    say "output: ", %row<A>;
}


{
    say "output: " %row<A>;
# Undeclared routine:
#     row used at line 16. Did you mean 'HOW'?

}

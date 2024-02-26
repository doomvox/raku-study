#!/usr/bin/env raku
# 
# revisiting_lta_dropped_comma_on_say_hash.raku            25 Feb 2024 


use :PREVIEW  v6.e;

my %h = A => 1;

{
    say "output: ", %h<A>;
}


{
    say "output: " %h<A>;
    # Undeclared routine:
    #     h used at line 16. Did you mean 'HOW'?
}

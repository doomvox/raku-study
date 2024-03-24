#!/usr/bin/env raku
# 
# enum_with_an_x.raku            24 Mar 2024 

use v6;

# Daniel Mita mentions using an "x" in an enum as a Raku gotcha

## Oh, actually he referred to the upper-case X:
## I accidentally put 'X' in an enum once, I won't make that mistake again 😂

## My naive expectation was that an enum would be lexically scoped: you need a "my" to get that behavior

{
    # say x;
    ## Undeclared routine:
}

{
   my $str = "a" x 5;
   say $str; # aaaaa
}

{
    my enum xyz <w x y z>;
    my $str = "a" x 5;
    say $str; # aaaaa

    say x+0; # 1
}

{
    say x; # x
    ## Undeclared routine:
}


#    enum Bool <False True>

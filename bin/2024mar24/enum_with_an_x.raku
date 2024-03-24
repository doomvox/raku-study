#!/usr/bin/env raku
# 
# enum_with_an_x.raku            24 Mar 2024 

use v6;

# Daniel Mita mentions using an "x" in an enum as a Raku gotcha

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

    
    say x+0; # x
}

{
#     say x; # x
}


#    enum Bool <False True>

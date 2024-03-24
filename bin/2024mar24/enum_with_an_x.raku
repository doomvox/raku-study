#!/usr/bin/env raku
# 
# enum_with_an_x.raku            24 Mar 2024 

use v6;

# Daniel Mita mentions using an "x" in an enum as a Raku gotcha
{

   my $str = "a" x 5;
   say $str; # aaaaa

}
{
    enum xyz <x y z>;
    my $str = "a" x 5;
    say $str; # aaaaa
}


#    enum Bool <False True>

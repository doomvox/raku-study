#!/usr/bin/env raku
# 
# angle_quotes.raku            20 Oct 2024 

use v6;

## Some thoughts while watching Bruce Gray's Raku for beginners.
## which are unfortuantely a lot like the thoughts I had the first time.

{
    my @items = < 1 2 3 >;

    dd @items;

    # Array @items = [IntStr.new(1, "1"), IntStr.new(2, "2"), IntStr.new(3, "3")]

    for @items -> $n {
        say $n.WHAT, ' ', $n;
    }
    # (IntStr) 1
    # (IntStr) 2
    # (IntStr) 3
    say "===";
}


{
    my @items = < 1 2 3 < 4 5 > >;
    say @items; # [1 2 3 <4 5>]

    for @items -> $n {
        say $n.WHAT, ' ', $n;
    }

    # (IntStr) 1
    # (IntStr) 2
    # (IntStr) 3
    # (Str) <4
    # (Str) 5>

    say "===";
}
   
{
    my @items = << 1 2 3 < 4 5 > >>;
    say @items; # [1 2 3 < 4 5 >]

    for @items -> $n {
        say $n.WHAT, ' ', $n;
    }

    # (IntStr) 1
    # (IntStr) 2
    # (IntStr) 3
    # (Str) <
    # (IntStr) 4
    # (IntStr) 5
    # (Str) >
    say "===";
}


{
    my @nums1 = < 1 2 3 >;
    my @nums2 = < 4 5 >;

    my @items = << 1 2 3 @nums2 >>;
    say @items; # [1 2 3 @nums2]

    for @items -> $n {
        say $n.WHAT, ' ', $n;
    }

    # (IntStr) 1
    # (IntStr) 2
    # (IntStr) 3
    # (Str) @nums2

    say "===";
}


##   I asked at the time:  Could you use single angles inside the double angles?
##   Covering the same territory again.  Argh.


##  Q: are there variants of angle quoting available, as with q{} quoting attributes?

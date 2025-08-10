#!/usr/bin/env raku
# 
# slipping_ranges_etc.raku            10 Aug 2025 

use v6;


my @a = 0..50;
say @a[ |(3,5,7, 9 ... 11), |(13..15) ];
## (3 5 7 9 11 13 14 15)

say @a[ |(3,5,7, 9 .. 11), |(13..15) ];
## (3 5 7 (9 10 11) 13 14 15)

say @a[ |(3,5,7, |(9..11) ), |(13..15) ];
## (3 5 7 9 10 11 13 14 15)

say @a[ (3,5,7, 9..11, 13..15).flat ];
## (3 5 7 9 10 11 13 14 15)

## No need for the hammer this time:
## say @a[ (3,5,7, 9..11, 13..15).flat(:hammer) ];  ## syntax?

say "===";
my $s := 1, 3, 5 ... 13;
say $s[3]; # 7
say $s[2]; # 5

say $s[3]; # 7

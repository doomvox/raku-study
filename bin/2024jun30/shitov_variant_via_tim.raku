#!/usr/bin/env raku
# 
# shitov_variant_via_tim.raku            30 Jun 2024 

use v6;

say (^10); # ^10

my @a = (^10);
say @a[5];    # 5 

say @a.list; # [0 1 2 3 4 5 6 7 8 9]

say "===";

# Tim Schafer, working from code examples by Andrew Shitov 
#  https://andrewshitov.com/2019/09/09/printing-a-list-of-prime-numbers-using-perl-6/

say ((^100).grep: *.is-prime)[^27];
# (2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 Nil Nil)

## more technically correct (though same results)
say ((1..100).grep: *.is-prime)[^25];
# (2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)

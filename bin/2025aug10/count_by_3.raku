#!/usr/bin/env raku
# 
# count_by_3.raku            24 Aug 2025 

use v6;

for  1, 4 ... 12 { 
    .say;
}
# 1
# 4
# 7
# 10

say "===";
.say for  0, 3 ... 12;
# 0
# 3
# 6
# 9
# 12

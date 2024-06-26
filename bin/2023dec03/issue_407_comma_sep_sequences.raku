#!/usr/bin/env raku
# 
# issue_407_comma_sep_ranges.raku            03 Dec 2023 

use v6;

# [0] > (1..4, 10..12)
# (1..4 10..12)
# [1] > put (1..4, 10..12)
# 1 2 3 4 10 11 12
# [1] > put (1...4, 10...12)
# 1 2 3 4 10 12
# [1] > put (1..6, 3..8)
# 1 2 3 4 5 6 3 4 5 6 7 8
# [1] > put (1...6, 3...8)
# 1 2 3 4 5 8



put (1..6, 3..8);
# 1 2 3 4 5 6 3 4 5 6 7 8
# 1 2 3 4 5 6
# 3 4 5 6 7 8

put (1...6, 3...8);
# 1 2 3 4 5 8
# 1 2 3 4 5
# 8

say "===";
put 1..6;  # 1 2 3 4 5 6
put 3..8;  # 3 4 5 6 7 8

put 1...6; # 1 2 3 4 5 6
put 3...8; # 3 4 5 6 7 8

say "===";

put (1...6; 3...8);   ## semicolon beats comma
# 1 2 3 4 5 6 3 4 5 6 7 8

say "---";

put (1...(6, 3)...8);  
# 1 2 3 4 5 8
# Adding additional parens doesn't change behavior: 
# suggests comma precedence issue.


## 
## Two workarounds:  favor .. over ...
##                   favor semicolon over comma
##                   maybe three: mess with flats



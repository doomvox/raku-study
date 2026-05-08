#!/usr/bin/env raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2026may10/say_list_and_such.raku
use v6.d;  


say (4, 5);
# (4 5)

(4, 5).say;
# (4 5)

(4, 5)>>.say;
# 4
# 5

(1, (4, 5))>>.say;
# 1
# 4
# 5

# That's not just like:
say 1;
say (4, 5);
# 1
# (4 5)

# The hyper descends, doesn't just loop over the top level.

(1, (4, 5)).map({.say});

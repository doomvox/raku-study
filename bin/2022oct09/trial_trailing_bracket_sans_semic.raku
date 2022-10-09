#!/usr/bin/env perl6
# 
# trial_trailing_bracket_sans_semic.raku            09 Oct 2022 

use v6;

if 1 {
    say "fine"; # fine
}
## no need for semi-c after a closing code block brace

## if the brace isn't a code block, you need the semi-c
warn qq{"hey"};

say "===";  

#  in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022oct09/trial_trailing_bracket_sans_semic.raku line 13

# ===


#!/usr/bin/env perl6
# 
# trial_trailing_bracket_sans_semic.raku            09 Oct 2022 

use v6;

if 1 {
    say "fine";
    }

warn qq{"hey"};

say "===";

# Block object coerced to string (please use .gist or .raku to do that)
#   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022oct09/trial_trailing_bracket_sans_semic.raku line 7
# Warning: something's wrong
#   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022oct09/trial_trailing_bracket_sans_semic.raku line 7
# ===

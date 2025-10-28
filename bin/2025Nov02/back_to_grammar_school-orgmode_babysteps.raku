#!/usr/bin/raku

# back_to_grammar_school-orgmode_babysteps.raku
# Monday October 27, 2025   6:28 PM

grammar orgmode {
        TOP { <headbullet> <stuff> }
        token headbullet { ^ <[*]>+ }
        rule { 
}
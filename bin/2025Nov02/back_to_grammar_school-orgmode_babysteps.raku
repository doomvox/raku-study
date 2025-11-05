#!/usr/bin/raku

# back_to_grammar_school-orgmode_babysteps.raku
# Monday October 27, 2025   6:28 PM

grammar orgmode {
        TOP { <headbullet> <stuff> }
        token headbullet { ^ <[*]>+ }
#        rule stuff { .*?<headbullet> }  ## No, that's not it... match up to something that isn't a token match
        rule stuff { .*?$ }  ## a heading ends at eol
}



my $file = "/home/doom/End/Cave/Ice/Xtal/Raku/grammar.org";
my $text = $file.IO.slurp;
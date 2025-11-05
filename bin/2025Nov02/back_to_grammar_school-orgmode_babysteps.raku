#!/usr/bin/raku

# back_to_grammar_school-orgmode_babysteps.raku
# Monday October 27, 2025   6:28 PM

grammar orgmode {
        token TOP { <heading>+ }
        token heading {<headbullet> \s* <stuff>}
        token headbullet { ^ <[*]>+? \s*  }
#        rule stuff { .*?<headbullet> }  ## No, that's not it... match up to something that isn't a token match
        rule stuff { .*? $$ }  ## a heading ends at eol
}

{
        my $file = "/home/doom/End/Cave/Ice/Xtal/Raku/grammar.org";
        my $raw = $file.IO.slurp;
#        say $raw;

        my $o = orgmode.parse( $raw );
        for $o.<heading> -> $h {
           say $h.<headbullet>;
           say $h.<stuff>;
           say "---";
        }   


}
#!/usr/bin/raku

# back_to_grammar_school-orgmode_babysteps.raku
# Monday October 27, 2025   6:28 PM

grammar orgmode {
        token TOP { <heading>+ \v* $}
        token heading { <indent> \s* <headtext>}
        token indent { ^^ \s* <[*]>+? <before \s+> }

        rule headtext { .* $$  }  ## a heading ends at eol
}

{
#       my $file = "/home/doom/End/Cave/Ice/Xtal/Raku/grammar.org";
        my $file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025Nov02/dat/simple.org";
        my $raw = $file.IO.slurp;
        say "---";
        say $raw;
        say "---";

        my $o = orgmode.parse( $raw );
#        say $o;
        for $o.<heading> -> $h {
           say $h.<indent>;
           say $h.<headtext>;
           say "---";
        }   


}

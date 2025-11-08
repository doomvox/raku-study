#!/usr/bin/raku

# back_to_grammar_school-orgmode_babysteps.raku
# Monday October 27, 2025   6:28 PM

grammar orgmode {
        token TOP { <heading>+ }
        token heading { <indent> \s* <headtext>}
        token indent { ^^ \s* <[*]>+? <before \s+> }

        token headtext { .*? $$  }  ## a heading ends at eol
                                  ## TODO I see first one slurp in the rest of it.
                                  ## ah: there *is* *a* line ending at eof,
                                  ## greedy matches skip past all of them.  

}

{
#       my $file = "/home/doom/End/Cave/Ice/Xtal/Raku/grammar.org";
        my $file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025Nov02/dat/simple.org";
        my $raw = $file.IO.slurp.chomp;
        say "===";
        say $raw;
        say "===";

        my $o = orgmode.parse( $raw );
#        say $o;
        for $o.<heading> -> $h {
           say "indent: ",  $h.<indent>;
           say "headtext: ",  $h.<headtext>;
           say "---";
        }   


}

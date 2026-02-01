#!/usr/bin/raku


# back_to_grammar_school-orgmode_babysteps.raku
#   forked from back_to_grammar_school-orgmode_babysteps.raku
#    Monday October 27, 2025   6:28 PM
# Saturday November  8, 2025  10:00 PM

# STATUS: simple grammar that works on text containing org-mode headings alone

grammar orgmode {
        token TOP { <heading>+ }
        token heading { <indent> \s* <headtext>}
        token indent { ^^ \s* <[*]>+? <before \s+> }

        # heading text is one line, so ends at a newline
        rule headtext { \N*  }  ## anything that's not a newline


        ## has to be a "rule: whitespace is significant (right?)

}

my $dat_loc = $*PROGRAM.parent.add('dat');
chdir( $dat_loc );

{
        my $file = "simple.org";
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

#!/usr/bin/raku

# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/GrammarSchool/back_to_grammar_school-orgmode_question_eol_dance.raku
# (was back_to_grammar_school-orgmode_babysteps.raku)
# Monday October  27, 2025   6:28 PM
# Sunday February  1, 2026  12:27 PM

# STATUS: this is a reasonable start, but I'm letting this version
# stand as a record of a question that I have about it.

grammar OrgMode {
        token TOP { <heading>+ }
        token heading { <indent> \s* <headtext>}
#        token indent { ^^ \s* <[*]>+? <before \s+> }
        token stars { <[*]>+? }
        token indent { ^^ <after \s*> <stars> <before \s+> }

        ## heading text is one line, so ends at a newline

#        rule headtext { .* $$  } ## '$$' is eol, correct?  but this slurps all the way to eof.
                                  ## ah: there *is* *a* line ending at eof,
                                  ## but greedy matches skip past all of them.  

#        rule headtext { .*? $$  }  

        rule headtext { \N*  }  ## a heading ends at eol, so anything not a newline?
                                ## *This* works, but why didn't the last try work?

        ## Also note that "token" doesn't work here, it has to be a "rule: 
        ## because we're treating whitespace as significant, right?
}

my $dat_loc = $*PROGRAM.parent.add('dat');
chdir( $dat_loc );

{
        my $file = "simple.org";
        my $raw = $file.IO.slurp.chomp;
        say "===";
        say $raw;
        say "===";

        my $o = OrgMode.parse( $raw );
#        say $o;
        for $o.<heading> -> $h {
           say "indent: ",  $h.<indent>;
           say "headtext: ",  $h.<headtext>;
           say "---";
        }   


}

#!/usr/bin/raku

# back_to_grammar_school-orgmode_babysteps.raku
# Monday October 27, 2025   6:28 PM

# STATUS: this is a reasonable start, but I'm letting this version
# stand as a record of a question that I have about it.

grammar orgmode {
        token TOP { <heading>+ }
        token heading { <indent> \s* <headtext>}
        token indent { ^^ \s* <[*]>+? <before \s+> }

        ## heading text is one line, so ends at a newline

#        rule headtext { .* $$  } ## '$$' is eol, correct?  but this slurps all the way to eof.
<<<<<<< HEAD
                                  ## ah: there *is* *a* line ending at eof,
                                  ## greedy matches skip past all of them.  

#        rule headtext { .*? $$  }  
=======

#        rule headtext { .*? $$  }  
                                  ## ah: there *is* *a* line ending at eof,
                                  ## greedy matches skip past all of them.  
>>>>>>> 27a479e8ae48de9faab00e29e114741c21f7ad68

        rule headtext { \N*  }  ## a heading ends at eol, so anything not a newline?
                                ## *This* works, but why didn't the last try work?

        ## Also note that "token" doesn't work here, it has to be a "rule: 
        ## because we're treating whitespace as significant, right?
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

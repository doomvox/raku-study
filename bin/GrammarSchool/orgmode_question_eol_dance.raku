#!/home/doom/Dust/Sys/Raku/rakudo-star-2023.02/bin/raku

# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/GrammarSchool/back_to_grammar_school-orgmode_question_eol_dance.raku
# (was back_to_grammar_school-orgmode_babysteps.raku)
# Monday October  27, 2025   6:28 PM
# Sunday February  1, 2026  12:27 PM

# STATUS: this is a reasonable start, but I'm letting this version
# stand as a record of a question that I have about it.

use Grammar::Tracer;

grammar OrgMode {
        rule TOP { <heading>+ }
        token heading { <indent> \s* <headtext> \n }
        token stars { '*'+ }
        token indent { ^^ \s* <stars> }
        token headtext { \N+  }  
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
        say $o;

#         for $o.<heading> -> $h {
#            say "indent: ",  $h.<indent>;
#            say "headtext: ",  $h.<headtext>;
#            say "---";
#         }   


}

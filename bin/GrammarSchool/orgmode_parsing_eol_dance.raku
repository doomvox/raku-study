#!/home/doom/Dust/Sys/Raku/rakudo-star-2023.02/bin/raku

# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/GrammarSchool/orgmode_parsing_eol_dance.raku

# (was back_to_grammar_school-orgmode_babysteps.raku)
# Monday October  27, 2025   6:28 PM
# Sunday February  1, 2026  12:27 PM

# STATUS: a working first cut, with the help of the Raku Study Group.
# Note the final fix contribute by Bruce Gray, TOP does a % \n, subdividing
# on newline separators where the final separator is *optional*.
# This neatly handles formats where you want the eof to be treated 
# as another eol.

use Grammar::Tracer;
use Data::Dump::Tree;

grammar OrgMode {
        rule TOP { <heading>+ % \n }
        token heading { <indent> \s* <headtext> }
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

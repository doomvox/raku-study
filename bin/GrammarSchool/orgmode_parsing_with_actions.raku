#!/usr/bin/raku
#                                              February 14, 2026   10:04 PM
#
# orgmode_parsing_with_actions.raku
# 
# formerly: orgmode_parse_phase_1_with_actions.raku
# now working with grammar from orgmode_parsing_eol_dance.raku

# use Grammar::Tracer;
use Data::Dump::Tree;  ## brings in "ddt"

grammar OrgMode {
        rule TOP { <heading>+ % \n }
        token heading { <indent> \s* <headtext> }
        token stars { '*'+ }
        token indent { ^^ \s* <stars> }
        token headtext { \N+  }  
}

class OrgModeActions {
    has Int $.id = 0;
    method indent ($/) { my $str = "indent for $!id: " ~ $/.chars; say $str; $/.make($str)}

    method heading ($/) { $!id++; $/<indent>.made }
}


my $dat_loc = $*PROGRAM.parent.add('dat');
chdir( $dat_loc );

{
        my $file = "simple.org";
        my $raw = $file.IO.slurp.chomp;
        say "===";
        say $raw;
        say "===";

        my $oma = OrgModeActions.new;
        my $o = OrgMode.parse( $raw, actions => $oma ).made;    
        say $o;
        ddt $o;
        say $oma.id;

#         for $o.<heading> -> $h {
#            say "indent: ",    $h.<indent>;
#            say "headtext: ",  $h.<headtext>;
#            say "---";
#         }   


}

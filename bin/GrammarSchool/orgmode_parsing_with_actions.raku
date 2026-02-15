#!/usr/bin/raku
#                                              February 14, 2026   10:04 PM
#
# orgmode_parsing_with_actions.raku
# 
# formerly: orgmode_parse_phase_1_with_actions.raku
# now working with grammar from orgmode_parsing_eol_dance.raku

use Grammar::Tracer;
use Data::Dump::Tree;  ## brings in "ddt"

grammar OrgMode {
        rule TOP { <heading>+ % \n }
        token heading { <indent> \s* <headtext> }
        token stars { '*'+ }
        token indent { ^^ \s* <stars> }
        token headtext { \N+  }  
}

class OrgModeActions {
    has Int $id = 0;
    method indent ($_) { say "indent for $id: " ~ $_.chars; }
    method heading { $id++ }

}


my $dat_loc = $*PROGRAM.parent.add('dat');
chdir( $dat_loc );

{
        my $file = "simple.org";
        my $raw = $file.IO.slurp.chomp;
        say "===";
        say $raw;
        say "===";

        my $o = OrgMode.parse( $raw, actions => OrgModeActions ).made;    
        say $o;
        ddt $o;

#         for $o.<heading> -> $h {
#            say "indent: ",    $h.<indent>;
#            say "headtext: ",  $h.<headtext>;
#            say "---";
#         }   


}

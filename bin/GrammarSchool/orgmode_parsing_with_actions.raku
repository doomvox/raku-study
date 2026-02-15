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
    has Int $.id = 1;
    method TOP ($/) { make([ $/.<heading>.map(*.made) ]) }
    method indent ($/) {
        my $str = "indent for $!id: " ~ $/.chars;
        $/.make($str);
    }
    method heading ($/) { $!id++; make( { IND => $/<indent>.made, HEA => $/<headtext>.made } ) }
    method headtext ($/) { make($/.Str) }
}


my $dat_loc = $*PROGRAM.parent.add('dat');
chdir( $dat_loc );

{
        my $file = "simpler.org";
        my $raw = $file.IO.slurp.chomp;
        say "===";
        say $raw;
        say "===";

        my $oma = OrgModeActions.new;
        my $o = OrgMode.parse( $raw, actions => $oma );
        say "---";
#        say "dollah o raku: ", $o.raku;
        say $o.raku;
        say ".ast: ",  $o.ast;
        say ".made: ", $o.made;
        say "---";
        # ddt $o;
        say "afterwards oma.id: ", $oma.id;

        say "===";
         for $o.<heading> -> $h {
            say "id: ",        $h.<id>; 
            say "indent: ",    $h.<indent>;
            say "headtext: ",  $h.<headtext>;
            say "---";
         }   


}

#!/usr/bin/env perl6
# 
# ini_file_parsing_with_moritz_lenz_grammar.raku            20 Mar 2021 

use v6;
# use Grammar::Tracer;

# code example from 
# p. 122 of Moritz Lenz "Parsing with Perl6 Regexes and Grammars"

# STATUS: not working.  proof for typos
# individual tests of the components

grammar INIFile {
    token TOP { <section>* }
    token section {
        <header>
        <keyvalue>*
        }
    rule header {
        '[' <-[ \] \n ]>+ ']' <eol>?
    }
    rule keyvalue {
        ^^
        <keyster>
        <[:=]> 
        <value>
        <.eol>?
    }
    token keyster {
        \w+
    }
    token value {
        <-[\n;#]>*
    }
    token ws { <!ww> \h* }
    token eol {
        \n [\h*\n]*
        }
}

my $txt = q:to/END_TEXT/;
    [db]
    driver: mysql
    host: db01.example.com
    END_TEXT
#     port: 122
#     username: us123
#     password: swdfsh


my  $file = "/home/doom/tmp/simple_config.ini";
$file.IO.spurt($txt);

say "^^^\n", $txt, '^^^';

{
    my $ini = INIFile.parse( $txt );
    # my $ini = INIFile.parsefile( $file );
#    say $ini; 
    say $ini.WHAT; # (INIFile)

    say "XXX";
#    say $ini.<section>;

#    say .<keyvalue>.<keyster> for $ini.<section>.list;
#    say .gist for $ini.<section>.[0].<keyvalue>.list;
#    say .WHAT for $ini.<section>.[0].<keyvalue>.list;
    say "===";
#    say .keyster for $ini.<section>.[0].<keyvalue>.list;
#     say $ini.<section>.[0].<keyvalue>.elems;
#     say $_.value for $ini.<section>.[0].<keyvalue>;

    for $ini.<section> -> $section {
        for $section.<keyvalue> -> $keyvalue {
#            say $keyvalue.^methods>>.name;
#            say $keyvalue.keyster; ## #<failed match>  
#            say $keyvalue.value;  ## NO ANGLE BRACKETS, but it's a valid method '.value'

#            say $keyvalue.^methods>>.name;

## For the grammar to work, you get methods like "keyster", "value", but you can't use them to access the value:

# (TOP section header keyvalue keyster value ws eol BUILDALL parsefile subparse parse BUILDALL braid !cursor_push_cstack !reduce_with_match !fresh_highexpect slangs !cursor_start_all cntrl !braid raku clone_braid_from !cursor_more DYNQUANT_LIMITS MATCH chars !highwater OTHERGRAMMAR dump CALL_SUBRULE punct how !protoregex_nfa INDMETHOD set_how clone !protoregex !DELEGATE_ACCEPTS digit switch_to_slang slang_grammar !highexpect ww postmatch prune blank at !DYNQUANT_LIMITS set_braid prematch set_package make CURSOR_OVERLAP INTERPOLATE ACCEPTS after FAILGOAL !protoregex_table CURSOR !clone_match_at !shared_type WHICH !cursor_pos print made same !set_highexpect CURSOR_NEXT !cursor_init set_pragma PRECURSOR Str Num !cursor_start lower alpha !shared check_LANG_oopsies caps gist set_braid_from Bool !BACKREF !precompute_nfas !cursor_start_subcapture know_how ident chunks !cursor_start_cur refine_slang graph !cursor_next before !dba CURSOR_MORE snapshot_braid INTERPOLATE_ASSERTION !cursor_start_fail Numeric ...)

            ## we need our angle brackets
            say $keyvalue.<value>; 
 
       }
    }
}
## section header keyvalue keyster value

exit;

{
    say "===";
    for $txt.lines -> $line {
        say '---';
        say $line;
#        my $header_mo = INIFile.parse( $line, :rule('header') );
#        say $header_mo;
        my $keyvalue_mo = INIFile.parse( $line, :rule('keyvalue') );
        say $keyvalue_mo;
   }

}

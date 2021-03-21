#!/usr/bin/env perl6
# 
# ini_file_parsing_with_moritz_lenz_grammar.raku            20 Mar 2021 

use v6;
use Grammar::Tracer;

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
        '[' <-[ \] \n ]>+ ']'
    }
    rule keyvalue {
        ^^
        <key>
        <[:=]> 
        <value>
        <.eol>?
    }
    token key {
        (\w+)
    }
    token value {
        (<-[\n;#]>*)
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
    port: 122
    username: us123
    password: swdfsh
    END_TEXT

my  $file = "/home/doom/tmp/simple_config.ini";
$file.IO.spurt($txt);

say "MEEP";
say $txt;

{
    my $ini = INIFile.parse( $txt );
    # my $ini = INIFile.parsefile( $file );
    say $ini; 
    #(Any)
}

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

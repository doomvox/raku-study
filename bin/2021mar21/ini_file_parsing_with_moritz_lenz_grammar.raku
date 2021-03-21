#!/usr/bin/env perl6
# 
# ini_file_parsing_with_moritz_lenz_grammar.raku            20 Mar 2021 

use v6;

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
        $<key>=[\w]
        <[:=]>
        $<value>=[<-[\n;#]>*]
        <.eol>
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

say $txt;

{
    my $ini = INIFile.parse( $txt );
    # my $ini = INIFile.parsefile( $file );
    say $ini; #(Any)
}

(
    for $txt.lines -> $line {
        my $ini = INIFile.parse( $txt );
    }
}

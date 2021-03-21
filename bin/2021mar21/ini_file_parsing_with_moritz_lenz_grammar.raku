#!/usr/bin/env perl6
# 
# ini_file_parsing_with_moritz_lenz_grammar.raku            20 Mar 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;

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

my $txt = :to/END/;

END


my  $file = "/home/doom/tmp/simple_config.ini";

$file.IO.spurt($txt);

#!/usr/bin/env perl6
# 
# richard_hainsworth_regex_problem.pl6            17 Jan 2021 

## issues with parsing pod6, which includes things like this:
## X<hash|hashes, definition of; associative arrays>

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

{
    my $bar = '\|';
    my regex fcode {
        ^ $<content>=
           (
              <-[\|]>* # anything that's not a slash
           )
           \s*         # any whitespace
           $bar ?      # a single bar
           \s*
           $
        |
        ^ $<content>=[ .* \S]*\s*<?before \|>
        $bar
        [\s* $<meta>=( .*? \S )\s*]+ % \;
        \s*
        $
    } 
}

{
    my regex fcode {
        ^ $<content>= (<-[\|]>*)\s* \|? \s* $
        |
        ^ $<content>=[ .* \S]*\s*<?before \|>
        \|
        [\s* $<meta>=( .*? \S )\s*]+ % \;
        \s*
        $
    } 
    my @s =
    'stuff | data ; more data',
    '| data; and more',
    'stuff |',
    '|data',
    'stuff | "alpha ; beta" ; omega ',  #  very slow line
    ;
    for @s {
        '---'.say;
        .say;
        '==='.say;
#        say $_ ~~ /<fcode>/
        say $_ ~~ /<fcode>/, "\ntook ", (now - ENTER now), " sec"; 

    }   

}



#!/usr/bin/env perl6
# 
# richard_hainsworth_regex_problem.pl6            17 Jan 2021 

## Richard Hainsworth brought up a problem he had with using a regexp 
## to parse pod6 (including his own, new extensions to it).
## Specifically he wanted to parse pod6 features like this:
##   X<hash|hashes, definition of; associative arrays>

use v6;
use Test;

{
   ## Experimented with removing the incidental <?before \|>...
   ## The key fix (from Bruce Gray):
   # ^ $<content>=[ .* \S]* \s* #<?before \|> # Still slow 
   # ^ $<content>=[ .* \S]  \s* #<?before \|> # Removing the star fixes problem

   my regex fcode {
        ^ $<content>=[ <-[\|]>* \S] \s* <?before \|>
        \| \s*
        [ $<meta>=( .*? ) ]+ % [\s*\;\s*]
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
#        '---'.say;
        my $case = $_;
        say $case;
        # Note the stylish way of getting an elapsed time (from Yary Hluchan)
        say $_ ~~ /<fcode>/, "\ntook ", (now - ENTER now), " sec"; 
        say "match object: ";
        dd $/;
        my $ret = $/<fcode><content>;
        say "ret fcode content : ", $ret;
       .say for $/<fcode><meta>.list;
       '==='.say;
    }   

}



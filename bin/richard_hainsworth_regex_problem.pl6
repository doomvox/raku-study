#!/usr/bin/env perl6
# 
# richard_hainsworth_regex_problem.pl6            17 Jan 2021 

## Richard Hainsworth brought up a problem he had with using a regexp 
## to parse pod6 (including his own, new extensions to it).
## Specifically he wanted to parse pod6 features like this:
##   X<hash|hashes, definition of; associative arrays>

use v6;
use Test;

# some basics of hash dereferencing:
#   %foo{‘bar’} can be said as %foo<bar> 

## bruce gray improvement:
# Also, the hash slice %foo{‘bar, ‘baz’} is shorter as: 
# %foo<bar baz> 
# [ \s* $<meta>=( .*? \S ) \s* ]+ % \; 
# \s* [ $<meta>=( .*? \S ) ]+ % [\s*\;\s*] 

{

## experimented with removing the incidental <?before \|>...
## But the key fix:

   # ^ $<content>=[ .* \S]* \s* #<?before \|> # Still slow 
   # ^ $<content>=[ .* \S] \s* #<?before \|> # Aha! Removing the star fixes the problem!!!! 

    ## with a bruce gray improvement (*really* fast now)
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
        '---'.say;
        my $case = $_;
        say $case;
        # Note Yary's stylish way of getting elapsed time for this case...
        say $_ ~~ /<fcode>/, "\ntook ", (now - ENTER now), " sec"; 
        say "match object: ";
        dd $/;
        my $ret = $/<fcode><content>;
        say "ret fcode content : ", $ret;
       .say for $/<fcode><meta>.list;
       '==='.say;
    }   

}



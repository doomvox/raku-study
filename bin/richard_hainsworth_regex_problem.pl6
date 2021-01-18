#!/usr/bin/env perl6
# 
# richard_hainsworth_regex_problem.pl6            17 Jan 2021 

## issues with parsing pod6, which includes things like this:
## X<hash|hashes, definition of; associative arrays>


## some doomvox junk:
#     my @expected =
#     { fcode   => ｢stuff | data ; more data｣,
#       content => ｢stuff｣,
#       meta    => ｢data｣,
#       meta    => ｢more data｣,
#     },
#     '',
#     '',
#     '',
#     ;


#         my $expected_hash = @expected.pop;
#         say $expected_hash;
#         my $expected = $expected_hash<content>;
#         say $expected;
#         is($ret , $expected , "content matched on case: $case" );


use v6;
use Test;

## Make errors into warnings
### CATCH { default { say "CAUGHT: ", .Str; .resume } }

# some basics of hash dereferencing:
#   %foo{‘bar’} can be said as %foo<bar> 

## bruce gray improvement:
# Also, the hash slice %foo{‘bar, ‘baz’} is shorter as: 
# %foo<bar baz> 
# [ \s* $<meta>=( .*? \S ) \s* ]+ % \; 
# \s* [ $<meta>=( .*? \S ) ]+ % [\s*\;\s*] 



{

#     my regex fcode {
#         ^ $<content>=
#            (
#               <-[\|]>* # anything that's not a vertical bar
#            )
#            \s*         # any whitespace
#            \| ?        # a single bar
#            \s*
#            $
#         |
#         ^ $<content>=
#               [ .* \S]*
#               \s*
#               <?before \|>
#               \|

#               #  [ \s* $<meta>=( .*? \S ) \s* ]+ % \;
#               \s* [ $<meta>=( .*? \S ) ]+ % [\s*\;\s*]   ## bg approach
  
#       \s*
#         $
#     } 

#     ## new richard hainsworth version:
#     my regex fcode {
#         ^ $<content>= (<-[\|]>*) \|? \s* $
#         ||
#         ^ $<content>=[ .* \S]* \s* <?before \|> ## the evil * is here: \S]*
#         \| \s*
#         [ $<meta>=( .*? ) ]+ % [\s*\;\s*]
#         \s*
#         $
#     } 

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
#         for $/<fcode><meta>.list -> $hit {
#             say $++, ': ', $hit;
#         }

        '==='.say;
    }   

}



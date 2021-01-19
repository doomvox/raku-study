#!/usr/bin/env perl6
# 
# richard_hainsworth_regex_problem.pl6            17 Jan 2021 

## Richard Hainsworth brought up a problem he had with using a regexp 
## to parse pod6 (including his own, new extensions to it).
## Specifically he wanted to parse pod6 features like this:
##   X<hash|hashes, definition of; associative arrays>

use v6;
use Test;


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

my @cases =
  (
    { name     => 'one',
      input    => 'stuff | data ; more data',
      expected_content => 'stuff',
      expected_meta => ['data', 'more data'],
    },
    { name     => 'two',
      input    => '| data; and more',
      expected_content => '',
#      expected_meta => ['data', 'and more'],
      expected_meta => [],
      notes => 'case does not match, nothing to attach meta to',
    },
    { name     => 'three',
      input    => 'stuff |',
      expected_content => 'stuff',
      expected_meta => [],
    },
    { name     => 'four',
      input    => '|data',
      expected_content => '',
      expected_meta    => 'data',
    },
    { name     => 'five: very slow',
      input    => 'stuff | "alpha ; beta" ; omega ',  
      expected_content => 'stuff',
      expected_meta => ['alpha; beta', 'omega'],
    },
    );

#     my @s =
#     'stuff | data ; more data',
#     '| data; and more',
#     'stuff |',
#     '|data',
#     'stuff | "alpha ; beta" ; omega ',  #  very slow line
#     ;
    
for @cases.kv -> $i, $case {
    my $case_number = $i + 1;
    my ($name, $input, $expected_content, $expected_meta) = 
                       $case<name input expected_content expected_meta>;
    say $input ~~ /<fcode>/;
    # Note the stylish way of getting an elapsed time (from Yary Hluchan)
    say "took ", (now - ENTER now), " sec"; 
    
    say "match object: ";
    dd $/;

    my ($fcode_content, @fcode_meta);
    if ( not $/ ) { # standardize on empty 'no match' values to make tests easier
        $fcode_content = '';
        @fcode_meta    = [];
    } else {
        # extract matched values from match object
        $fcode_content = $/<fcode><content>;
        @fcode_meta    = $/<fcode><meta>.list.map({.Str});  ## gotta be a better way
    }

    say "fcode_content : ", $fcode_content;
    say "meta: ";
    .say for @fcode_meta;

    is( $fcode_content, $expected_content, "Testing case $case_number matched expected content.");
    is-deeply( @fcode_meta, $expected_meta, "Testing case $case_number matched expected meta values.");

    '==='.say;
}

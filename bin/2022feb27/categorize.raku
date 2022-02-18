#!/usr/bin/env perl6
# 
# categorize.raku            17 Feb 2022 

use v6;

## looking at categorize for the first time.  starting with the docs:
 
# https://docs.raku.org/routine/categorize

## several different forms exist:
#   multi method categorize($test, :$into!, :&as)
#   multi method categorize($test, :&as)
#   multi sub categorize($test, +items, :$into!, *%named )
#   multi sub categorize($test, +items, *%named )


# In its simplest form, it uses a $test whose result will be used as a
# key; the values of the key will be an array of the elements that
# produced that key as a result of the test.

## sort integers into categories divisible by three, and otherwise
say (1..13).categorize( * %% 3);
say categorize( * %% 3, 1..13)
# OUTPUT: «{False => [1 2 4 5 7 8 10 11 13], True => [3 6 9 12]}␤» 

## Hm.
# First review abs: just makes negs into pos right? 

# # The :as argument will normalize before categorizing
# say categorize( * %% 3, -5..5, as => &abs )
# # OUTPUT: «{False => [5 4 2 1 1 2 4 5], True => [3 0 3]}␤» 

## mangled english?  Put the result where?
# The $into associative argument can be used to put the result instead of returning a new Hash


my %leap-years;
my @years = (2002..2009).map( { Date.new( $_~"-01-01" ) } );
@years.categorize( *.is-leap-year , into => %leap-years );
say %leap-years
# OUTPUT: 
# «{ False 
# => [2002-01-01 2003-01-01 2005-01-01 2006-01-01 2007-01-01 2009-01-01], 
#    True => [2004-01-01 2008-01-01]}␤» 

The function used to categorize can return an array indicating all possible bins their argument can be put into:

sub divisible-by( Int $n --> Array(Seq) ) {
    gather {
        for <2 3 5 7> {
            take $_ if $n %% $_;
        }
    }
}
 
say (3..13).categorize( &divisible-by );
# OUTPUT: 
# «{2 => [4 6 8 10 12], 3 => [3 6 9 12], 5 => [5 10], 7 => [7]}␤» 

In this case, every number in the range is classified in as many bins as it can be divided by.

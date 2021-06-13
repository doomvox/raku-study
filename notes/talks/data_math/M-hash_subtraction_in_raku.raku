#!/usr/bin/env perl6
# 
# K-hash_subtraction_in_raku.raku            09 Jun 2021 

use v6;

{
   my ( %gross, %costs, %net );
   %gross =  ( de => 2345.37,
               es => 1238.99,
               us => 1.98,
             );
   %costs =  ( de => 35.00,
               es => 259.11,
               us => 666.66,
               fr => 101.01,
             );
   say %gross;  # {de => 2345.37, es => 1238.99,               us => 1.98}
   say %costs;  # {de => 35,      es => 259.11,  fr => 101.01, us => 666.66}

   %net = %gross.Mix (-) %costs.Mix;
   say %net;
   # {de => 2310.37, es => 979.88, fr => -101.01, us => -664.68}
}

## (-) is the set subtraction operator (asci version)
## A "Mix" is a built-in data type, a set with Rat values (i.e. rational numbers)
##    (aka a "fuzzy set")

## Note:
##   4 lines in perl =>  1 in raku
##   no special handling needed for holes


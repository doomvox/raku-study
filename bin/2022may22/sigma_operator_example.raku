#!/usr/bin/env perl6
# 
# sigma_operator_example.raku            22 May 2022 

use v6;

# https://docs.raku.org/language/optut

# general operator to sum n numbers 
sub prefix:<Σ>( *@number-list ) {
    [+] @number-list
}
 
say Σ (13, 16, 1); # OUTPUT: «30␤» 


# ===
# Author:  doom@kzsu.stanford.edu


#!/usr/bin/env perl6
# 
# codesections_patmat_for.raku            24 Oct 2021 

use v6;


for (:add(1, 5), :sub(9, 8), :mult(7, 7)) {
    when .key eq 'add' { 
        say "{.value[0]} + {.value[1]} is {sum .value}" }
}




# ===
# Author:  doom@kzsu.stanford.edu


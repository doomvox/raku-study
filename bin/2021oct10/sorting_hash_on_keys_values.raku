#!/usr/bin/env perl6
# 
# sorting_hash_on_keys_values.raku            10 Oct 2021 

use v6;


my %hash =
   (
     two   => 2,
     three => 3,
     one   => 1,
   );

dd %hash;  # Hash %hash = {:one(1), :three(3), :two(2)}

say %hash.kv;

for %hash.kv -> ($key, $value) {
     say "$key:   $value";
}



# ===
# Author:  doom@kzsu.stanford.edu


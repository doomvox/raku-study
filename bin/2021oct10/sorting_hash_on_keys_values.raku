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

say %hash.kv;   # (two 2 three 3 one 1)
say %hash.keys; # (two three one)

for %hash.kv -> $key, $value {
#     say "$key:   $value";
     say $key, ' ', $value;  
}

# three 3
# two 2
# one 1


my @monsters = <godzilla golem blob>;
my @heros  =   <ultraman inframan larrywall>;

for @monsters -> $s {
    say $s;
}
# godzilla
# golem
# blob

for @monsters, @heros -> $s {
    dd $s;
}
# $["godzilla", "golem", "blob"]
# $["ultraman", "inframan", "larrywall"]


## from so
for %hash.sort(*.key)>>.kv -> ($key, $value) {
    say "'$key' => '$value'";
}

# 'one' => '1'
# 'three' => '3'
# 'two' => '2'


for %hash.sort(*.key).kv -> $key, $value {
    say "'$key' => '$value'";
}



# ===
# Author:  doom@kzsu.stanford.edu


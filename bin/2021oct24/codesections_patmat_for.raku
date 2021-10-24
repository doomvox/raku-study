#!/usr/bin/env perl6
# 
# codesections_patmat_for.raku            24 Oct 2021 

use v6;



my @actions_and_arguments = :foo(1, 5), :bar(9, 8), :mult(7, 7);
say  @actions_and_arguments;  # [foo => (1 5) bar => (9 8) mult => (7 7)]
# my %hash = @actions_and_arguments;
# say %hash;  # {foo => (1 5), mult => (7 7), bar => (9 8)}
# say %hash{'mult'}; # (7 7)


for (:foo(1, 5), :bar(9, 8), :mult(7, 7)) {
    say "key: ", .key, " values: ", .values;
    when .key eq 'foo' { 
        say "{.value[0]} + {.value[1]} is {sum .value}" }
}

# 1 + 5 is 6

for (:foo(1, 5), :bar(9, 8), :mult(7, 7)) {
    multi match(:$foo ($a, $b)) { say "$a + $b is {$a+$b}" }
    multi match(|) {}
    match |$_
}
# 1 + 5 is 6

for (:foo(1, 5), :bar(9, 8), :mult(7, 7)) {
    try -> :$foo ($a, $b) { say "$a + $b is {$a+$b}" }(|$_)
}
# 1 + 5 is 6


# ===
# Author:  doom@kzsu.stanford.edu


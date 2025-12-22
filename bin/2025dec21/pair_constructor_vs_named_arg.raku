#!/usr/bin/env raku
# 
# pair_constructor_vs_named_arg.raku            21 Dec 2025 

use v6;


## https://stackoverflow.com/questions/79849852/too-many-positionals-passed-error-with-slurpy-hash

slurpy-hash('FOO!', bar => 'BAR!'); 

sub slurpy-hash($foo, *%bar) {
  say $foo;
  say %bar;
}

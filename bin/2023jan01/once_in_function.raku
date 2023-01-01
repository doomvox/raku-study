#!/usr/bin/env perl6
# 
# once_in_function.raku            01 Jan 2023 

use v6;

## https://docs.raku.org/syntax/once
my $guard = 3;
loop {
    last if $guard-- <= 0;
    once { put 'Once!' };  # Once!
    print 'many'           
} 
say "\n";
# manymanymany

sub dostuff {
     once "We are doing stuff (again).";
     say 3; 
}

dostuff(); # 3
dostuff(); # 3

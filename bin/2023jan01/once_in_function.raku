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



sub otherstuff {
    {
     once "We are doing OTHER stuff (again).";
    }
    say 777; 
}
otherstuff(); # 777
otherstuff(); # 777

say "===";

sub juststuffit {
    while 1 {
     once "We are doing OTHER stuff (again).";
     last;
    }
    say 777; 
}
juststuffit();


# raku -e 'for 1..3 { say $_; once {say 42};}'
